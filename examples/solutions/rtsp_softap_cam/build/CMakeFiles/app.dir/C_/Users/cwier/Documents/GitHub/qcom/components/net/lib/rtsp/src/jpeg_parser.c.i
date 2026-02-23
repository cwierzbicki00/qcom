# 1 "C:\\Users\\cwier\\Documents\\GitHub\\qcom\\components\\net\\lib\\rtsp\\src\\jpeg_parser.c"
# 1 "C:\\Users\\cwier\\documents\\github\\qcom\\examples\\solutions\\rtsp_softap_cam\\build//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:\\Users\\cwier\\Documents\\GitHub\\qcom\\components\\net\\lib\\rtsp\\src\\jpeg_parser.c"
# 1 "C:\\Users\\cwier\\Documents\\GitHub\\qcom\\components\\net\\lib\\rtsp\\src\\jpeg_parser.h" 1




enum
{
    START_MARKER = 0xFF,
    SOI_MARKER = 0xD8,
    JFIF_MARKER = 0xE0,
    CMT_MARKER = 0xFE,
    DQT_MARKER = 0xDB,
    SOF_MARKER = 0xC0,
    DHT_MARKER = 0xC4,
    SOS_MARKER = 0xDA,
    EOI_MARKER = 0xD9,
    DRI_MARKER = 0xDD
};

typedef struct
{
    unsigned char id;
    unsigned char samp;
    unsigned char qt;
} CompInfo;
# 2 "C:\\Users\\cwier\\Documents\\GitHub\\qcom\\components\\net\\lib\\rtsp\\src\\jpeg_parser.c" 2
# 1 "C:\\Users\\cwier\\Documents\\GitHub\\qcom\\components\\net\\lib\\rtsp\\src\\rtp.h" 1





enum {
    NALU_TYPE_SPS = 7,
    NALU_TYPE_PPS = 8,
};


enum media_type {
    MEDIA_TYPE_VIDEO,
    MEDIA_TYPE_AUDIO,
};


enum {
    RTP_PT_JPEG = 26,
    RTP_PT_H264 = 96,
    RTP_PT_PCMU = 0,
    RTP_PT_PCMA = 8,
    RTP_PT_AAC = 97,
    RTP_PT_OPUS = 101,
};


enum {

    NALU_PT_FU_A = 28,
    NALU_PT_FU_B = 29,
};


struct intlvd {
    unsigned char dollar;
    unsigned char chn;
    unsigned short sz;
};


struct rtp_hdr {
# 51 "C:\\Users\\cwier\\Documents\\GitHub\\qcom\\components\\net\\lib\\rtsp\\src\\rtp.h"
 unsigned char cc:4;
 unsigned char x:1;
 unsigned char p:1;
 unsigned char v:2;
 unsigned char pt:7;
 unsigned char m:1;

 unsigned short seq;
 unsigned int ts;
 unsigned int ssrc;



};


struct single {
    char hdr;
    char *pl;
    unsigned int pl_sz;
};


struct fu_a {
    char idr;
    char hdr;
    char *pl;
    unsigned int pl_sz;
};


struct fu_b {
    char idr;
    char hdr;
    unsigned short don;
    char *pl;
    unsigned int pl_sz;
};


struct audio {
    char *pl;
    unsigned int pl_sz;
};

struct jpeghdr {
    unsigned int tspec:8;
    unsigned int off:24;
    unsigned char type;
    unsigned char q;
    unsigned char width;
    unsigned char height;
};
struct jpeghdr_rst {
    unsigned short dri;
    unsigned int f:1;
    unsigned int l:1;
    unsigned int count:14;
};


struct jpegframe_parser {
    unsigned char width;
    unsigned char height;
    unsigned char type;
    unsigned char precision;
    unsigned char qFactor;
    unsigned char driFound;
    unsigned int jpegheaderLength;
    unsigned char qTables[2*128];
    unsigned short qTablesLength;
    unsigned short restartInterval;
    unsigned char* scandata;
    unsigned int scandataLength;
};

struct jpeghdr_qtable {
    unsigned char mbz;
    unsigned char precision;
    unsigned short length;
};

struct jpeg_frame {
    unsigned char *jpeg_data;
    int data_len;
};


struct jpeg {
    struct jpeghdr jpghdr;
    struct jpeghdr_rst rsthdr;
    struct jpeghdr_qtable qtblhdr;
    struct jpeg_frame jpgfrm;
    struct jpegframe_parser parser;
};



struct rtp_pl {
    union {
        struct single single;
        struct fu_a fu_a;
        struct fu_b fu_b;
        struct audio audio;
        struct jpeg jpeg;
    }
};







struct rtsp_sess;
int create_rtp_sess(struct rtsp_sess *sessp);
void destroy_rtp_sess(struct rtsp_sess *sessp);
int prefetch_frm(struct rtsp_sess *sessp);
# 3 "C:\\Users\\cwier\\Documents\\GitHub\\qcom\\components\\net\\lib\\rtsp\\src\\jpeg_parser.c" 2
# 13 "C:\\Users\\cwier\\Documents\\GitHub\\qcom\\components\\net\\lib\\rtsp\\src\\jpeg_parser.c"
static unsigned int parse_jpeg_scanMarker(const unsigned char* data,
                                             unsigned int size,
                                             unsigned int* offset)
{
    while ((data[(*offset)++] != START_MARKER) && ((*offset) < size));

    if ((*offset) >= size) {
        return EOI_MARKER;
    } else {
        unsigned int marker;

        marker = data[*offset];
        (*offset)++;

        return marker;
    }
}

static unsigned int _jpegPieceHeaderSize(const unsigned char* data, unsigned int offset)
{
    return data[offset] << 8 | data[offset + 1];
}

static int parse_jpeg_readSOF(const unsigned char* data, unsigned int size,
                             unsigned int* offset, struct jpegframe_parser* jpeg_parser)
{
    int i, j;
    CompInfo elem;
    CompInfo info[3] = { {0,}, };
    unsigned int sof_size, off;
    unsigned int width, height, infolen;

    off = *offset;


    if (off + 17 > size) goto wrong_size;

    sof_size = _jpegPieceHeaderSize(data, off);
    if (sof_size < 17) goto wrong_length;

    *offset += sof_size;


    off += 2;


    if (data[off++] != 8) goto bad_precision;


    height = data[off] << 8 | data[off + 1];
    width = data[off + 2] << 8 | data[off + 3];
    off += 4;

    if (height == 0 || height > 2040) goto invalid_dimension;
    if (width == 0 || width > 2040) goto invalid_dimension;

    jpeg_parser->width = width / 8;
    jpeg_parser->height = height / 8;


    if (data[off++] != 3) goto bad_components;

    infolen = 0;
    for (i = 0; i < 3; i++) {
        elem.id = data[off++];
        elem.samp = data[off++];
        elem.qt = data[off++];


        for (j = infolen; j > 1; j--) {
            if (info[j - 1].id < elem.id) break;
            info[j] = info[j - 1];
        }
        info[j] = elem;
        infolen++;
    }


    if (info[0].samp == 0x21) {
        jpeg_parser->type = 0;
    } else if (info[0].samp == 0x22) {
        jpeg_parser->type = 1;
    } else {
        goto invalid_comp;
    }

    if (!(info[1].samp == 0x11)) goto invalid_comp;
    if (!(info[2].samp == 0x11)) goto invalid_comp;
    if (info[1].qt != info[2].qt) goto invalid_comp;

    return 0;


wrong_size:
    ;
    return -1;

wrong_length:
    ;
    return -1;

bad_precision:
    ;
    return -1;

invalid_dimension:
    ;
    return -1;

bad_components:
    ;
    return -1;

invalid_comp:
    ;
    return -1;
}

static unsigned int parse_jpeg_readDQT(const unsigned char* data,
                                      unsigned int size,
                                      unsigned int offset,
                                      struct jpegframe_parser* jpeg_parser)
{
    unsigned int quant_size, tab_size;
    unsigned char prec;
    unsigned char id;

    if (offset + 2 > size) goto too_small;

    quant_size = _jpegPieceHeaderSize(data, offset);
    if (quant_size < 2) goto small_quant_size;


    if (offset + quant_size > size) {
        quant_size = size - offset;
    }

    offset += 2;
    quant_size -= 2;

    while (quant_size > 0) {

        if (offset + 1 > size) break;

        id = data[offset] & 0x0f;
        if (id == 15) goto invalid_id;

        prec = (data[offset] & 0xf0) >> 4;
        if (prec) {
            tab_size = 128;
            jpeg_parser->qTablesLength = 128 * 2;
        } else {
            tab_size = 64;
            jpeg_parser->qTablesLength = 64 * 2;
        }


        if (quant_size < tab_size + 1) goto no_table;


        memcpy(&jpeg_parser->qTables[id * tab_size], &data[offset + 1], tab_size);







        tab_size += 1;
        quant_size -= tab_size;
        offset += tab_size;
    }

done:
    return offset + quant_size;


too_small:
    ;
    return size;

small_quant_size:
    ;
    return size;

invalid_id:
    ;
    goto done;

no_table:
    ;
    goto done;
}

static int parse_jpeg_readDRI(const unsigned char* data,
                             unsigned int size, unsigned int* offset, struct jpegframe_parser* jpeg_parser)
{
    unsigned int dri_size, off;

    off = *offset;


    if (off + 4 > size) goto wrong_size;

    dri_size = _jpegPieceHeaderSize(data, off);
    if (dri_size < 4) goto wrong_length;

    *offset += dri_size;
    off += 2;

    jpeg_parser->restartInterval = (data[off] << 8) | data[off + 1];

    return 0;

wrong_size:
    return -1;

wrong_length:
    *offset += dri_size;
    return -1;
}

int parse_jpeg_req(unsigned char* data, unsigned int size, struct jpegframe_parser* jpeg_parser)
{
    unsigned int offset = 0;
    unsigned int dqtFound = 0;
    unsigned int sosFound = 0;
    unsigned int sofFound = 0;
    unsigned int driFound = 0;
    unsigned int jpeg_header_size = 0;

    while ((sosFound == 0) && (offset < size)) {
        switch (parse_jpeg_scanMarker(data, size, &offset)) {
        case JFIF_MARKER:
            ;
            break;
        case CMT_MARKER:
            ;
            break;
        case DHT_MARKER:
            ;
            offset += _jpegPieceHeaderSize(data, offset);
            break;
        case SOF_MARKER:
            ;
            if (parse_jpeg_readSOF(data, size, &offset,jpeg_parser) != 0) {
                goto invalid_format;
            }
            sofFound = 1;
            break;
        case DQT_MARKER:
            ;
            offset = parse_jpeg_readDQT(data, size, offset,jpeg_parser);
            dqtFound = 1;
            break;
        case SOS_MARKER:
            ;
            sosFound = 1;
            jpeg_header_size = offset + _jpegPieceHeaderSize(data, offset);

            jpeg_parser->jpegheaderLength = jpeg_header_size;
            break;
        case EOI_MARKER:
            ;

            ;
            break;
        case SOI_MARKER:
            ;
            ;
            break;
        case DRI_MARKER:
            ;
            ;
            if (parse_jpeg_readDRI(data, size, &offset,jpeg_parser) == 0) {
                driFound = 1;
                jpeg_parser->driFound = 1;
            }
            break;
        default:
            break;
        }
    }
    if ((dqtFound == 0) || (sofFound == 0)) {
        goto unsupported_jpeg;
    }

    if (jpeg_parser->width == 0 || jpeg_parser->height == 0) {
        goto no_dimension;
    }

    jpeg_parser->scandata = data + jpeg_header_size;
    jpeg_parser->scandataLength = size - jpeg_header_size;

    if (driFound == 1) {
        jpeg_parser->type += 64;
    }

    return 0;


unsupported_jpeg:
    return -1;

no_dimension:
    return -1;

invalid_format:
    return -1;
}
