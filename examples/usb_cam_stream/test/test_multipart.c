/*
 * Host-side test for HTTP multipart MJPEG formatting.
 *
 * Validates that the multipart boundary, headers, and CRLF sequences
 * match the spec (30-http-mjpeg-server).
 *
 * Build and run:
 *   gcc -std=c11 -Wall -Wextra -O2 -o test/test_multipart test/test_multipart.c
 *   ./test/test_multipart
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>

/* ------------------------------------------------------------------ */
/* The formatting function under test (extracted from http_server.c)   */
/* ------------------------------------------------------------------ */

/*
 * Format a multipart MJPEG part header into buf (max buf_size bytes).
 * Returns the number of bytes written (not including NUL terminator).
 */
static int multipart_format_header(char *buf, int buf_size,
                                   unsigned jpeg_len,
                                   unsigned timestamp_ms)
{
    return snprintf(buf, buf_size,
                    "--frame\r\n"
                    "Content-Type: image/jpeg\r\n"
                    "Content-Length: %u\r\n"
                    "X-Timestamp-Ms: %u\r\n"
                    "\r\n",
                    jpeg_len, timestamp_ms);
}

/* ------------------------------------------------------------------ */
/* Test helpers                                                        */
/* ------------------------------------------------------------------ */

static int tests_run    = 0;
static int tests_passed = 0;

#define TEST(name) do { \
    tests_run++; \
    printf("  TEST %d: %s ... ", tests_run, name); \
} while (0)

#define PASS() do { tests_passed++; printf("PASS\n"); } while (0)

#define ASSERT_EQ(a, b) do { \
    if ((a) != (b)) { \
        printf("FAIL (line %d: %d != %d)\n", __LINE__, (int)(a), (int)(b)); \
        return; \
    } \
} while (0)

#define ASSERT_STR_CONTAINS(haystack, needle) do { \
    if (strstr((haystack), (needle)) == NULL) { \
        printf("FAIL (line %d: \"%s\" not found)\n", __LINE__, (needle)); \
        return; \
    } \
} while (0)

#define ASSERT_TRUE(cond) do { \
    if (!(cond)) { \
        printf("FAIL (line %d: assertion failed)\n", __LINE__); \
        return; \
    } \
} while (0)

/* ------------------------------------------------------------------ */
/* Tests                                                               */
/* ------------------------------------------------------------------ */

static void test_boundary_present(void)
{
    TEST("boundary '--frame\\r\\n' present at start");

    char buf[256];
    int len = multipart_format_header(buf, sizeof(buf), 1000, 12345);
    (void)len;

    ASSERT_TRUE(strncmp(buf, "--frame\r\n", 9) == 0);
    PASS();
}

static void test_content_type_header(void)
{
    TEST("Content-Type: image/jpeg present");

    char buf[256];
    multipart_format_header(buf, sizeof(buf), 1000, 12345);

    ASSERT_STR_CONTAINS(buf, "Content-Type: image/jpeg\r\n");
    PASS();
}

static void test_content_length_matches(void)
{
    TEST("Content-Length matches jpeg_len");

    char buf[256];
    multipart_format_header(buf, sizeof(buf), 54321, 99);

    ASSERT_STR_CONTAINS(buf, "Content-Length: 54321\r\n");
    PASS();
}

static void test_timestamp_header(void)
{
    TEST("X-Timestamp-Ms matches timestamp_ms");

    char buf[256];
    multipart_format_header(buf, sizeof(buf), 1000, 987654);

    ASSERT_STR_CONTAINS(buf, "X-Timestamp-Ms: 987654\r\n");
    PASS();
}

static void test_ends_with_blank_line(void)
{
    TEST("header ends with \\r\\n\\r\\n (blank line)");

    char buf[256];
    int len = multipart_format_header(buf, sizeof(buf), 1000, 0);

    /* Last 4 chars should be \r\n\r\n */
    ASSERT_TRUE(len >= 4);
    ASSERT_TRUE(buf[len - 4] == '\r');
    ASSERT_TRUE(buf[len - 3] == '\n');
    ASSERT_TRUE(buf[len - 2] == '\r');
    ASSERT_TRUE(buf[len - 1] == '\n');
    PASS();
}

static void test_header_order(void)
{
    TEST("headers appear in correct order");

    char buf[256];
    multipart_format_header(buf, sizeof(buf), 1000, 42);

    /* Find positions of each component */
    const char *p_boundary = strstr(buf, "--frame\r\n");
    const char *p_ctype    = strstr(buf, "Content-Type:");
    const char *p_clen     = strstr(buf, "Content-Length:");
    const char *p_ts       = strstr(buf, "X-Timestamp-Ms:");

    ASSERT_TRUE(p_boundary != NULL);
    ASSERT_TRUE(p_ctype != NULL);
    ASSERT_TRUE(p_clen != NULL);
    ASSERT_TRUE(p_ts != NULL);

    /* boundary < Content-Type < Content-Length < X-Timestamp-Ms */
    ASSERT_TRUE(p_boundary < p_ctype);
    ASSERT_TRUE(p_ctype < p_clen);
    ASSERT_TRUE(p_clen < p_ts);
    PASS();
}

static void test_full_part_assembly(void)
{
    TEST("full part: header + fake JPEG + trailing CRLF");

    /* Simulate what http_server.c does */
    char hdr[256];
    int hlen = multipart_format_header(hdr, sizeof(hdr), 5, 100);

    /* Fake JPEG payload: 5 bytes of 0xFF */
    unsigned char jpeg[5] = { 0xFF, 0xD8, 0xFF, 0xD9, 0x00 };

    /* Assemble full part: header + jpeg + \r\n */
    char part[512];
    memcpy(part, hdr, hlen);
    memcpy(part + hlen, jpeg, 5);
    memcpy(part + hlen + 5, "\r\n", 2);
    int total = hlen + 5 + 2;

    /* Verify starts with boundary */
    ASSERT_TRUE(strncmp(part, "--frame\r\n", 9) == 0);

    /* Verify ends with \r\n (trailing after JPEG data) */
    ASSERT_TRUE(part[total - 2] == '\r');
    ASSERT_TRUE(part[total - 1] == '\n');

    /* Verify JPEG data appears right after header's blank line */
    const char *blank = strstr(part, "\r\n\r\n");
    ASSERT_TRUE(blank != NULL);
    const unsigned char *jpeg_start = (const unsigned char *)(blank + 4);
    ASSERT_TRUE(jpeg_start[0] == 0xFF);
    ASSERT_TRUE(jpeg_start[1] == 0xD8);
    PASS();
}

static void test_zero_length_jpeg(void)
{
    TEST("zero-length JPEG generates valid header");

    char buf[256];
    int len = multipart_format_header(buf, sizeof(buf), 0, 0);

    ASSERT_STR_CONTAINS(buf, "Content-Length: 0\r\n");
    ASSERT_TRUE(len > 0);
    PASS();
}

static void test_large_values(void)
{
    TEST("large content-length and timestamp values");

    char buf[256];
    multipart_format_header(buf, sizeof(buf), 4000000, 3600000);

    ASSERT_STR_CONTAINS(buf, "Content-Length: 4000000\r\n");
    ASSERT_STR_CONTAINS(buf, "X-Timestamp-Ms: 3600000\r\n");
    PASS();
}

static void test_no_extra_crlf_in_header_values(void)
{
    TEST("no embedded CRLF in header values");

    char buf[256];
    int len = multipart_format_header(buf, sizeof(buf), 1000, 500);

    /* Count CRLF sequences — should be exactly 5:
     * --frame\r\n, Content-Type: ...\r\n, Content-Length: ...\r\n,
     * X-Timestamp-Ms: ...\r\n, final \r\n */
    int crlf_count = 0;
    for (int i = 0; i < len - 1; i++) {
        if (buf[i] == '\r' && buf[i + 1] == '\n') {
            crlf_count++;
        }
    }
    ASSERT_EQ(crlf_count, 5);
    PASS();
}

/* ------------------------------------------------------------------ */
/* Main                                                                */
/* ------------------------------------------------------------------ */

int main(void)
{
    printf("=== Multipart MJPEG Format Tests ===\n\n");

    test_boundary_present();
    test_content_type_header();
    test_content_length_matches();
    test_timestamp_header();
    test_ends_with_blank_line();
    test_header_order();
    test_full_part_assembly();
    test_zero_length_jpeg();
    test_large_values();
    test_no_extra_crlf_in_header_values();

    printf("\n=== Results: %d / %d passed ===\n", tests_passed, tests_run);

    return (tests_passed == tests_run) ? 0 : 1;
}
