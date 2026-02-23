	.file	"error.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.mbedtls_high_level_strerr.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"CIPHER - The selected feature is not available"
	.align	2
.LC1:
	.string	"CIPHER - Decryption of block requires a full block"
	.align	2
.LC2:
	.string	"CIPHER - Bad input parameters"
	.align	2
.LC3:
	.string	"SSL - An operation failed due to an unexpected version or configuration"
	.align	2
.LC4:
	.string	"CIPHER - Cipher hardware accelerator failed"
	.align	2
.LC5:
	.string	"CIPHER - Input data contains invalid padding and is rejected"
	.align	2
.LC6:
	.string	"CIPHER - The context is invalid. For example, because it was freed"
	.align	2
.LC7:
	.string	"DHM - Making of the DHM parameters failed"
	.align	2
.LC8:
	.string	"DHM - Bad input parameters"
	.align	2
.LC9:
	.string	"DHM - Making of the public value failed"
	.align	2
.LC10:
	.string	"DHM - Reading of the DHM parameters failed"
	.align	2
.LC11:
	.string	"X509 - Destination buffer is too small"
	.align	2
.LC12:
	.string	"DHM - Allocation of memory failed"
	.align	2
.LC13:
	.string	"DHM - Reading of the public values failed"
	.align	2
.LC14:
	.string	"DHM - The ASN.1 data is not formatted correctly"
	.align	2
.LC15:
	.string	"ECP - The buffer is too small to write to"
	.align	2
.LC16:
	.string	"PK - PK hardware accelerator failed"
	.align	2
.LC17:
	.string	"DHM - DHM hardware accelerator failed"
	.align	2
.LC18:
	.string	"MD - Bad input parameters to function"
	.align	2
.LC19:
	.string	"ECP - The signature is not valid"
	.align	2
.LC20:
	.string	"ECP - Invalid private or public key"
	.align	2
.LC21:
	.string	"ECP - The requested feature is not available, for example, the requested curve is not supported"
	.align	2
.LC22:
	.string	"RSA - The output buffer for decryption is not large enough"
	.align	2
.LC23:
	.string	"ECP - The ECP hardware accelerator failed"
	.align	2
.LC24:
	.string	"ECP - Generation of random value, such as ephemeral key, failed"
	.align	2
.LC25:
	.string	"ECP - Operation in progress, call again with the same parameters to continue"
	.align	2
.LC26:
	.string	"ECP - The buffer contains a valid signature followed by more data"
	.align	2
.LC27:
	.string	"ECP - Bad input parameters to function"
	.align	2
.LC28:
	.string	"MD - Opening or reading of file failed"
	.align	2
.LC29:
	.string	"MD - The selected feature is not available"
	.align	2
.LC30:
	.string	"SSL - An encrypted DTLS-frame with an unexpected CID was received"
	.align	2
.LC31:
	.string	"SSL - Invalid value in SSL config"
	.align	2
.LC32:
	.string	"PEM - Failed to allocate memory"
	.align	2
.LC33:
	.string	"PEM - No PEM header or footer found"
	.align	2
.LC34:
	.string	"PEM - Unsupported key encryption algorithm"
	.align	2
.LC35:
	.string	"PEM - PEM string is not as expected"
	.align	2
.LC36:
	.string	"X509 - Unavailable feature, e.g. RSA hashing/encryption combination"
	.align	2
.LC37:
	.string	"PEM - Unavailable feature, e.g. hashing/encryption combination"
	.align	2
.LC38:
	.string	"PEM - Private key password can't be empty"
	.align	2
.LC39:
	.string	"PEM - RSA IV is not in hex-format"
	.align	2
.LC40:
	.string	"PEM - Given private key password does not allow for correct decryption"
	.align	2
.LC41:
	.string	"PK - Read/write of file failed"
	.align	2
.LC42:
	.string	"RSA - Bad input parameters to function"
	.align	2
.LC43:
	.string	"PK - Given private key password does not allow for correct decryption"
	.align	2
.LC44:
	.string	"PK - Invalid key tag or value"
	.align	2
.LC45:
	.string	"PK - Bad input parameters to function"
	.align	2
.LC46:
	.string	"PK - Key algorithm is unsupported (only RSA and EC are supported)"
	.align	2
.LC47:
	.string	"PK - Unsupported key version"
	.align	2
.LC48:
	.string	"RSA - Input data contains invalid padding and is rejected"
	.align	2
.LC49:
	.string	"PK - The algorithm tag or value is invalid"
	.align	2
.LC50:
	.string	"PK - The buffer contains a valid signature followed by more data"
	.align	2
.LC51:
	.string	"PK - Elliptic curve is unsupported (only NIST curves are supported)"
	.align	2
.LC52:
	.string	"PK - The pubkey tag or value is invalid (only RSA and EC are supported)"
	.align	2
.LC53:
	.string	"PK - Private key password can't be empty"
	.align	2
.LC54:
	.string	"DHM - Setting the modulus and generator failed"
	.align	2
.LC55:
	.string	"PK - Unavailable feature, e.g. RSA disabled for RSA key"
	.align	2
.LC56:
	.string	"PK - Memory allocation failed"
	.align	2
.LC57:
	.string	"DHM - Calculation of the DHM secret failed"
	.align	2
.LC58:
	.string	"RSA - The public key operation failed"
	.align	2
.LC59:
	.string	"RSA - Something failed during generation of a key"
	.align	2
.LC60:
	.string	"RSA - The PKCS#1 verification failed"
	.align	2
.LC61:
	.string	"RSA - Key failed to pass the validity check of the library"
	.align	2
.LC62:
	.string	"RSA - RSA hardware accelerator failed"
	.align	2
.LC63:
	.string	"RSA - The implementation does not offer the requested operation, for example, because of security violations or lack of functionality"
	.align	2
.LC64:
	.string	"RSA - The private key operation failed"
	.align	2
.LC65:
	.string	"RSA - The random generator failed to generate non-zeros"
	.align	2
.LC66:
	.string	"PK - Type mismatch, eg attempt to encrypt with an ECDSA key"
	.align	2
.LC67:
	.string	"SSL - Verification of the message MAC failed"
	.align	2
.LC68:
	.string	"SSL - The requested feature is not available"
	.align	2
.LC69:
	.string	"SSL - Hardware acceleration function skipped / left alone data"
	.align	2
.LC70:
	.string	"SSL - Bad input parameters to function"
	.align	2
.LC71:
	.string	"SSL - An unexpected message was received from our peer"
	.align	2
.LC72:
	.string	"SSL - No RNG was provided to the SSL module"
	.align	2
.LC73:
	.string	"SSL - An unknown cipher was received"
	.align	2
.LC74:
	.string	"SSL - Our own certificate(s) is/are too large to send in an SSL message"
	.align	2
.LC75:
	.string	"SSL - The server has no ciphersuites in common with the client"
	.align	2
.LC76:
	.string	"SSL - An invalid SSL record was received"
	.align	2
.LC77:
	.string	"SSL - No CA Chain is set, but required to operate"
	.align	2
.LC78:
	.string	"SSL - No client certification received from the client, but required by the authentication mode"
	.align	2
.LC79:
	.string	"SSL - The own private key or pre-shared key is not set, but needed"
	.align	2
.LC80:
	.string	"SSL - Internal error (eg, unexpected failure in lower-level module)"
	.align	2
.LC81:
	.string	"SSL - The peer notified us that the connection is going to be closed"
	.align	2
.LC82:
	.string	"SSL - A fatal alert message was received from our peer"
	.align	2
.LC83:
	.string	"SSL - Processing of the ServerHello handshake message failed"
	.align	2
.LC84:
	.string	"SSL - Verification of our peer failed"
	.align	2
.LC85:
	.string	"SSL - Processing of the ServerHelloDone handshake message failed"
	.align	2
.LC86:
	.string	"SSL - Processing of the ServerKeyExchange handshake message failed"
	.align	2
.LC87:
	.string	"SSL - Processing of the ClientHello handshake message failed"
	.align	2
.LC88:
	.string	"SSL - Processing of the CertificateRequest handshake message failed"
	.align	2
.LC89:
	.string	"SSL - The own certificate is not set, but needed by the server"
	.align	2
.LC90:
	.string	"SSL - Processing of the ClientKeyExchange handshake message failed in DHM / ECDH Calculate Secret"
	.align	2
.LC91:
	.string	"SSL - Processing of the ClientKeyExchange handshake message failed"
	.align	2
.LC92:
	.string	"SSL - Processing of the ChangeCipherSpec handshake message failed"
	.align	2
.LC93:
	.string	"SSL - Processing of the ClientKeyExchange handshake message failed in DHM / ECDH Read Public"
	.align	2
.LC94:
	.string	"SSL - Processing of the Certificate handshake message failed"
	.align	2
.LC95:
	.string	"SSL - Hardware acceleration function returned with error"
	.align	2
.LC96:
	.string	"SSL - Processing of the CertificateVerify handshake message failed"
	.align	2
.LC97:
	.string	"SSL - Memory allocation failed"
	.align	2
.LC98:
	.string	"SSL - Handshake protocol not within min/max boundaries"
	.align	2
.LC99:
	.string	"SSL - A cryptographic operation is in progress. Try again later"
	.align	2
.LC100:
	.string	"SSL - Processing of the NewSessionTicket handshake message failed"
	.align	2
.LC101:
	.string	"SSL - Processing of the compression / decompression failed"
	.align	2
.LC102:
	.string	"ECP - Memory allocation failed"
	.align	2
.LC103:
	.string	"SSL - Unknown identity received (eg, PSK identity)"
	.align	2
.LC104:
	.string	"SSL - Unexpected message at ServerHello in renegotiation"
	.align	2
.LC105:
	.string	"SSL - Public key type mismatch (eg, asked for RSA key exchange and presented EC key)"
	.align	2
.LC106:
	.string	"SSL - The client initiated a reconnect from the same port"
	.align	2
.LC107:
	.string	"SSL - A buffer is too small to receive or write a message"
	.align	2
.LC108:
	.string	"SSL - A counter would wrap (eg, too many messages exchanged)"
	.align	2
.LC109:
	.string	"SSL - None of the common ciphersuites is usable (eg, no suitable certificate, see debug messages)"
	.align	2
.LC110:
	.string	"SSL - DTLS client must retry for hello verification"
	.align	2
.LC111:
	.string	"CIPHER - Authentication failed (for AEAD modes)"
	.align	2
.LC112:
	.string	"SSL - The operation timed out"
	.align	2
.LC113:
	.string	"SSL - The alert message received indicates a non-fatal error"
	.align	2
.LC114:
	.string	"SSL - Connection requires a write call"
	.align	2
.LC115:
	.string	"SSL - No data of requested type currently available on underlying transport"
	.align	2
.LC116:
	.string	"SSL - Internal-only message signaling that further message-processing should be done"
	.align	2
.LC117:
	.string	"SSL - Record header looks valid but is not expected"
	.align	2
.LC118:
	.string	"SSL - The asynchronous operation is not completed yet"
	.align	2
.LC119:
	.string	"SSL - Couldn't set the hash for verifying CertificateVerify"
	.align	2
.LC120:
	.string	"SSL - Session ticket has expired"
	.align	2
.LC121:
	.string	"SSL - Internal-only message signaling that a message arrived early"
	.align	2
.LC122:
	.string	"SSL - Cache entry not found"
	.align	2
.LC123:
	.string	"SSL - The connection indicated an EOF"
	.align	2
.LC124:
	.string	"MD - Failed to allocate memory"
	.align	2
.LC125:
	.string	"MD - MD hardware accelerator failed"
	.align	2
.LC126:
	.string	"X509 - The extension tag or value is invalid"
	.align	2
.LC127:
	.string	"X509 - The CRT/CRL/CSR version element is invalid"
	.align	2
.LC128:
	.string	"X509 - Requested OID is unknown"
	.align	2
.LC129:
	.string	"X509 - The algorithm tag or value is invalid"
	.align	2
.LC130:
	.string	"X509 - The CRT/CRL/CSR format is invalid, e.g. different type expected"
	.align	2
.LC131:
	.string	"PEM - Bad input parameters to function"
	.align	2
.LC132:
	.string	"X509 - The signature tag or value invalid"
	.align	2
.LC133:
	.string	"X509 - The serial tag or value is invalid"
	.align	2
.LC134:
	.string	"X509 - The date tag or value is invalid"
	.align	2
.LC135:
	.string	"DHM - Read or write of file failed"
	.align	2
.LC136:
	.string	"X509 - Signature algorithms do not match. (see \\c ::mbedtls_x509_crt sig_oid)"
	.align	2
.LC137:
	.string	"X509 - CRT/CRL/CSR has an unsupported version number"
	.align	2
.LC138:
	.string	"X509 - Format not recognized as DER or PEM"
	.align	2
.LC139:
	.string	"X509 - Signature algorithm (oid) is unsupported"
	.align	2
.LC140:
	.string	"X509 - A fatal error occurred, eg the chain is too long or the vrfy callback failed"
	.align	2
.LC141:
	.string	"X509 - Read/write of file failed"
	.align	2
.LC142:
	.string	"X509 - Input invalid"
	.align	2
.LC143:
	.string	"X509 - Certificate verification failed, e.g. CRL, CA or signature check failed"
	.align	2
.LC144:
	.string	"X509 - Allocation of memory failed"
	.align	2
.LC145:
	.string	"X509 - The name tag or value is invalid"
	.align	2
.LC146:
	.string	"CIPHER - Failed to allocate memory"
	.align	2
.LC147:
	.string	"SSL - Processing of the Finished handshake message failed"
	.section	.text.mbedtls_high_level_strerr,"ax",@progbits
	.align	1
	.globl	mbedtls_high_level_strerr
	.type	mbedtls_high_level_strerr, @function
mbedtls_high_level_strerr:
.LFB27:
	.file 1 ".\\components\\crypto\\mbedtls\\mbedtls\\library\\error.c"
	.loc 1 199 1
	.cfi_startproc
.LVL0:
	.loc 1 200 5
	.loc 1 202 5
	.loc 1 207 5
	.loc 1 207 27 is_stmt 0
	srai	a4,a0,31
	xor	a5,a4,a0
	li	a0,65536
.LVL1:
	sub	a5,a5,a4
	addi	a0,a0,-128
	.loc 1 209 5
	li	a2,20480
	.loc 1 207 27
	and	a5,a5,a0
.LVL2:
	.loc 1 209 5 is_stmt 1
	addi	a4,a2,-256
	beq	a5,a4,.L55
	bgt	a5,a4,.L3
	li	a3,12288
	addi	a4,a3,1152
	beq	a5,a4,.L56
	bgt	a5,a4,.L4
	li	a4,8192
	addi	a2,a4,1280
	beq	a5,a2,.L57
	bgt	a5,a2,.L5
	addi	a3,a4,128
	beq	a5,a3,.L58
	bgt	a5,a3,.L6
	li	a4,4096
	addi	a4,a4,640
	beq	a5,a4,.L59
	bgt	a5,a4,.L7
	li	a4,4096
	addi	a3,a4,384
	beq	a5,a3,.L60
	bgt	a5,a3,.L8
	addi	a3,a4,128
	beq	a5,a3,.L61
	addi	a4,a4,256
	.loc 1 561 11 is_stmt 0
	li	a0,0
	.loc 1 209 5
	bne	a5,a4,.L1
	.loc 1 295 19
	lui	a0,%hi(.LC35)
	addi	a0,a0,%lo(.LC35)
	ret
.L8:
	.loc 1 209 5
	addi	a4,a4,512
	.loc 1 561 11
	li	a0,0
	.loc 1 209 5
	bne	a5,a4,.L1
	.loc 1 299 19
	lui	a0,%hi(.LC39)
	addi	a0,a0,%lo(.LC39)
	ret
.L7:
	.loc 1 209 5
	li	a4,4096
	addi	a3,a4,1024
	beq	a5,a3,.L64
	bgt	a5,a3,.L9
	addi	a3,a4,768
	beq	a5,a3,.L65
	addi	a4,a4,896
	.loc 1 561 11
	li	a0,0
	.loc 1 209 5
	bne	a5,a4,.L1
	.loc 1 305 19
	lui	a0,%hi(.LC40)
	addi	a0,a0,%lo(.LC40)
	ret
.L9:
	.loc 1 209 5
	addi	a4,a4,1152
	.loc 1 561 11
	li	a0,0
	.loc 1 209 5
	bne	a5,a4,.L1
	.loc 1 309 19
	lui	a0,%hi(.LC131)
	addi	a0,a0,%lo(.LC131)
	ret
.L6:
	.loc 1 209 5
	addi	a4,a4,768
	beq	a5,a4,.L68
	bgt	a5,a4,.L10
	li	a4,8192
	addi	a3,a4,512
	beq	a5,a3,.L69
	bgt	a5,a3,.L11
	addi	a3,a4,256
	beq	a5,a3,.L70
	addi	a4,a4,384
	.loc 1 561 11
	li	a0,0
	.loc 1 209 5
	bne	a5,a4,.L1
	.loc 1 519 19
	lui	a0,%hi(.LC130)
	addi	a0,a0,%lo(.LC130)
	ret
.L11:
	.loc 1 209 5
	addi	a4,a4,640
	.loc 1 561 11
	li	a0,0
	.loc 1 209 5
	bne	a5,a4,.L1
	.loc 1 523 19
	lui	a0,%hi(.LC133)
	addi	a0,a0,%lo(.LC133)
	ret
.L10:
	.loc 1 209 5
	li	a4,8192
	addi	a3,a4,1024
	beq	a5,a3,.L73
	addi	a3,a4,1152
	beq	a5,a3,.L74
	addi	a4,a4,896
	.loc 1 561 11
	li	a0,0
	.loc 1 209 5
	bne	a5,a4,.L1
	.loc 1 527 19
	lui	a0,%hi(.LC145)
	addi	a0,a0,%lo(.LC145)
	ret
.L5:
	.loc 1 209 5
	beq	a5,a3,.L76
	bgt	a5,a3,.L12
	addi	a4,a4,1920
	beq	a5,a4,.L77
	bgt	a5,a4,.L13
	li	a4,8192
	addi	a3,a4,1664
	beq	a5,a3,.L78
	bgt	a5,a3,.L14
	addi	a3,a4,1408
	beq	a5,a3,.L79
	addi	a4,a4,1536
	.loc 1 561 11
	li	a0,0
	.loc 1 209 5
	bne	a5,a4,.L1
	.loc 1 537 19
	lui	a0,%hi(.LC139)
	addi	a0,a0,%lo(.LC139)
	ret
.L14:
	.loc 1 209 5
	addi	a4,a4,1792
	.loc 1 561 11
	li	a0,0
	.loc 1 209 5
	bne	a5,a4,.L1
	.loc 1 541 19
	lui	a0,%hi(.LC143)
	addi	a0,a0,%lo(.LC143)
	ret
.L13:
	.loc 1 209 5
	li	a4,12288
	addi	a3,a4,-1792
	beq	a5,a3,.L82
	bgt	a5,a3,.L15
	addi	a3,a4,-2048
	beq	a5,a3,.L83
	addi	a4,a4,-1920
	.loc 1 561 11
	li	a0,0
	.loc 1 209 5
	bne	a5,a4,.L1
	.loc 1 547 19
	lui	a0,%hi(.LC144)
	addi	a0,a0,%lo(.LC144)
	ret
.L15:
	.loc 1 209 5
	addi	a4,a4,-1664
	.loc 1 561 11
	li	a0,0
	.loc 1 209 5
	bne	a5,a4,.L1
	.loc 1 551 19
	lui	a0,%hi(.LC11)
	addi	a0,a0,%lo(.LC11)
	ret
.L12:
	.loc 1 209 5
	addi	a3,a3,640
	beq	a5,a3,.L86
	li	a4,12288
	bgt	a5,a3,.L16
	addi	a3,a4,384
	beq	a5,a3,.L87
	bgt	a5,a3,.L17
	addi	a3,a4,128
	beq	a5,a3,.L88
	addi	a4,a4,256
	.loc 1 561 11
	li	a0,0
	.loc 1 209 5
	bne	a5,a4,.L1
	.loc 1 234 19
	lui	a0,%hi(.LC10)
	addi	a0,a0,%lo(.LC10)
	ret
.L17:
	.loc 1 209 5
	addi	a4,a4,512
	.loc 1 561 11
	li	a0,0
	.loc 1 209 5
	bne	a5,a4,.L1
	.loc 1 238 19
	lui	a0,%hi(.LC13)
	addi	a0,a0,%lo(.LC13)
	ret
.L16:
	.loc 1 209 5
	addi	a3,a4,896
	beq	a5,a3,.L91
	addi	a3,a4,1024
	beq	a5,a3,.L92
	addi	a4,a4,768
	.loc 1 561 11
	li	a0,0
	.loc 1 209 5
	bne	a5,a4,.L1
	.loc 1 242 19
	lui	a0,%hi(.LC57)
	addi	a0,a0,%lo(.LC57)
	ret
.L4:
	.loc 1 209 5
	li	a4,16384
	addi	a3,a4,256
	beq	a5,a3,.L94
	bgt	a5,a3,.L18
	addi	a3,a4,-1024
	beq	a5,a3,.L95
	bgt	a5,a3,.L19
	addi	a4,a4,-1664
	beq	a5,a4,.L96
	bgt	a5,a4,.L20
	li	a4,16384
	addi	a3,a4,-1920
	beq	a5,a3,.L97
	bgt	a5,a3,.L21
	li	a4,12288
	addi	a3,a4,1280
	beq	a5,a3,.L98
	addi	a4,a4,1408
	.loc 1 561 11
	li	a0,0
	.loc 1 209 5
	bne	a5,a4,.L1
	.loc 1 252 19
	lui	a0,%hi(.LC54)
	addi	a0,a0,%lo(.LC54)
	ret
.L21:
	.loc 1 209 5
	addi	a4,a4,-1792
	.loc 1 561 11
	li	a0,0
	.loc 1 209 5
	bne	a5,a4,.L1
	.loc 1 340 19
	lui	a0,%hi(.LC50)
	addi	a0,a0,%lo(.LC50)
	ret
.L20:
	.loc 1 209 5
	li	a4,16384
	addi	a3,a4,-1280
	beq	a5,a3,.L101
	bgt	a5,a3,.L22
	addi	a3,a4,-1536
	beq	a5,a3,.L102
	addi	a4,a4,-1408
	.loc 1 561 11
	li	a0,0
	.loc 1 209 5
	bne	a5,a4,.L1
	.loc 1 334 19
	lui	a0,%hi(.LC49)
	addi	a0,a0,%lo(.LC49)
	ret
.L22:
	.loc 1 209 5
	addi	a4,a4,-1152
	.loc 1 561 11
	li	a0,0
	.loc 1 209 5
	bne	a5,a4,.L1
	.loc 1 330 19
	lui	a0,%hi(.LC43)
	addi	a0,a0,%lo(.LC43)
	ret
.L19:
	.loc 1 209 5
	addi	a4,a4,-384
	beq	a5,a4,.L105
	bgt	a5,a4,.L23
	li	a4,16384
	addi	a3,a4,-640
	beq	a5,a3,.L106
	bgt	a5,a3,.L24
	addi	a3,a4,-896
	beq	a5,a3,.L107
	addi	a4,a4,-768
	.loc 1 561 11
	li	a0,0
	.loc 1 209 5
	bne	a5,a4,.L1
	.loc 1 324 19
	lui	a0,%hi(.LC44)
	addi	a0,a0,%lo(.LC44)
	ret
.L24:
	.loc 1 209 5
	addi	a4,a4,-512
	.loc 1 561 11
	li	a0,0
	.loc 1 209 5
	bne	a5,a4,.L1
	.loc 1 320 19
	lui	a0,%hi(.LC41)
	addi	a0,a0,%lo(.LC41)
	ret
.L23:
	.loc 1 209 5
	li	a4,16384
	addi	a3,a4,-128
	beq	a5,a3,.L110
	addi	a3,a4,128
	beq	a5,a3,.L111
	addi	a4,a4,-256
	.loc 1 561 11
	li	a0,0
	.loc 1 209 5
	bne	a5,a4,.L1
	.loc 1 316 19
	lui	a0,%hi(.LC66)
	addi	a0,a0,%lo(.LC66)
	ret
.L18:
	.loc 1 209 5
	addi	a3,a4,1408
	beq	a5,a3,.L113
	bgt	a5,a3,.L25
	addi	a4,a4,896
	beq	a5,a4,.L114
	bgt	a5,a4,.L26
	li	a4,16384
	addi	a3,a4,640
	beq	a5,a3,.L115
	bgt	a5,a3,.L27
	addi	a3,a4,384
	beq	a5,a3,.L116
	addi	a4,a4,512
	.loc 1 561 11
	li	a0,0
	.loc 1 209 5
	bne	a5,a4,.L1
	.loc 1 375 19
	lui	a0,%hi(.LC61)
	addi	a0,a0,%lo(.LC61)
	ret
.L27:
	.loc 1 209 5
	addi	a4,a4,768
	.loc 1 561 11
	li	a0,0
	.loc 1 209 5
	bne	a5,a4,.L1
	.loc 1 379 19
	lui	a0,%hi(.LC64)
	addi	a0,a0,%lo(.LC64)
	ret
.L26:
	.loc 1 209 5
	li	a4,16384
	addi	a3,a4,1152
	beq	a5,a3,.L119
	addi	a3,a4,1280
	beq	a5,a3,.L120
	addi	a4,a4,1024
	.loc 1 561 11
	li	a0,0
	.loc 1 209 5
	bne	a5,a4,.L1
	.loc 1 383 19
	lui	a0,%hi(.LC22)
	addi	a0,a0,%lo(.LC22)
	ret
.L25:
	.loc 1 209 5
	addi	a2,a2,-768
	beq	a5,a2,.L122
	li	a4,20480
	bgt	a5,a2,.L28
	addi	a3,a4,-1024
	beq	a5,a3,.L123
	bgt	a5,a3,.L29
	addi	a3,a4,-1280
	beq	a5,a3,.L124
	addi	a4,a4,-1152
	.loc 1 561 11
	li	a0,0
	.loc 1 209 5
	bne	a5,a4,.L1
	.loc 1 273 19
	lui	a0,%hi(.LC23)
	addi	a0,a0,%lo(.LC23)
	ret
.L29:
	.loc 1 209 5
	addi	a4,a4,-896
	.loc 1 561 11
	li	a0,0
	.loc 1 209 5
	bne	a5,a4,.L1
	.loc 1 269 19
	lui	a0,%hi(.LC20)
	addi	a0,a0,%lo(.LC20)
	ret
.L28:
	.loc 1 209 5
	addi	a3,a4,-512
	beq	a5,a3,.L127
	addi	a3,a4,-384
	beq	a5,a3,.L128
	addi	a4,a4,-640
	.loc 1 561 11
	li	a0,0
	.loc 1 209 5
	bne	a5,a4,.L1
	.loc 1 265 19
	lui	a0,%hi(.LC102)
	addi	a0,a0,%lo(.LC102)
	ret
.L3:
	.loc 1 209 5
	li	a4,28672
	addi	a3,a4,-640
	beq	a5,a3,.L130
	bgt	a5,a3,.L30
	li	a3,24576
	addi	a1,a3,1152
	beq	a5,a1,.L131
	bgt	a5,a1,.L31
	beq	a5,a3,.L132
	bgt	a5,a3,.L32
	addi	a2,a2,512
	beq	a5,a2,.L133
	bgt	a5,a2,.L33
	li	a4,20480
	addi	a3,a4,256
	beq	a5,a3,.L134
	bgt	a5,a3,.L34
	addi	a3,a4,-128
	beq	a5,a3,.L135
	addi	a4,a4,128
	.loc 1 561 11
	li	a0,0
	.loc 1 209 5
	bne	a5,a4,.L1
	.loc 1 280 19
	lui	a0,%hi(.LC29)
	addi	a0,a0,%lo(.LC29)
	ret
.L34:
	.loc 1 209 5
	addi	a4,a4,384
	.loc 1 561 11
	li	a0,0
	.loc 1 209 5
	bne	a5,a4,.L1
	.loc 1 284 19
	lui	a0,%hi(.LC124)
	addi	a0,a0,%lo(.LC124)
	ret
.L33:
	.loc 1 209 5
	li	a4,24576
	addi	a3,a4,-384
	beq	a5,a3,.L138
	bgt	a5,a3,.L35
	li	a3,20480
	addi	a3,a3,640
	beq	a5,a3,.L139
	addi	a4,a4,-512
	.loc 1 561 11
	li	a0,0
	.loc 1 209 5
	bne	a5,a4,.L1
	.loc 1 510 19
	lui	a0,%hi(.LC122)
	addi	a0,a0,%lo(.LC122)
	ret
.L35:
	.loc 1 209 5
	addi	a4,a4,-256
	.loc 1 561 11
	li	a0,0
	.loc 1 209 5
	bne	a5,a4,.L1
	.loc 1 504 19
	lui	a0,%hi(.LC3)
	addi	a0,a0,%lo(.LC3)
	ret
.L32:
	.loc 1 209 5
	addi	a3,a3,640
	beq	a5,a3,.L142
	li	a4,24576
	bgt	a5,a3,.L36
	addi	a3,a4,384
	beq	a5,a3,.L143
	bgt	a5,a3,.L37
	addi	a3,a4,128
	beq	a5,a3,.L144
	addi	a4,a4,256
	.loc 1 561 11
	li	a0,0
	.loc 1 209 5
	bne	a5,a4,.L1
	lui	a0,%hi(.LC2)
	addi	a0,a0,%lo(.LC2)
	ret
.L37:
	addi	a4,a4,512
	.loc 1 561 11
	li	a0,0
	.loc 1 209 5
	bne	a5,a4,.L1
	.loc 1 219 19
	lui	a0,%hi(.LC5)
	addi	a0,a0,%lo(.LC5)
	ret
.L36:
	.loc 1 209 5
	addi	a3,a4,896
	beq	a5,a3,.L147
	addi	a3,a4,1024
	beq	a5,a3,.L148
	addi	a4,a4,768
	.loc 1 561 11
	li	a0,0
	.loc 1 209 5
	bne	a5,a4,.L1
	.loc 1 223 19
	lui	a0,%hi(.LC111)
	addi	a0,a0,%lo(.LC111)
	ret
.L31:
	.loc 1 209 5
	addi	a2,a4,-1792
	beq	a5,a2,.L150
	bgt	a5,a2,.L38
	addi	a3,a3,1792
	beq	a5,a3,.L151
	bgt	a5,a3,.L39
	li	a4,24576
	addi	a3,a4,1536
	beq	a5,a3,.L152
	bgt	a5,a3,.L40
	addi	a3,a4,1280
	beq	a5,a3,.L153
	addi	a4,a4,1408
	.loc 1 561 11
	li	a0,0
	.loc 1 209 5
	bne	a5,a4,.L1
	.loc 1 496 19
	lui	a0,%hi(.LC116)
	addi	a0,a0,%lo(.LC116)
	ret
.L40:
	.loc 1 209 5
	addi	a4,a4,1664
	.loc 1 561 11
	li	a0,0
	.loc 1 209 5
	bne	a5,a4,.L1
	.loc 1 492 19
	lui	a0,%hi(.LC113)
	addi	a0,a0,%lo(.LC113)
	ret
.L39:
	.loc 1 209 5
	li	a4,28672
	addi	a3,a4,-2048
	beq	a5,a3,.L156
	addi	a4,a4,-1920
	beq	a5,a4,.L157
	li	a4,24576
	addi	a4,a4,1920
	.loc 1 561 11
	li	a0,0
	.loc 1 209 5
	bne	a5,a4,.L1
	.loc 1 488 19
	lui	a0,%hi(.LC106)
	addi	a0,a0,%lo(.LC106)
	ret
.L38:
	.loc 1 209 5
	addi	a4,a4,-1152
	beq	a5,a4,.L159
	bgt	a5,a4,.L41
	li	a4,28672
	addi	a3,a4,-1408
	beq	a5,a3,.L160
	bgt	a5,a3,.L42
	addi	a3,a4,-1664
	beq	a5,a3,.L161
	addi	a4,a4,-1536
	.loc 1 561 11
	li	a0,0
	.loc 1 209 5
	bne	a5,a4,.L1
	.loc 1 478 19
	lui	a0,%hi(.LC107)
	addi	a0,a0,%lo(.LC107)
	ret
.L42:
	.loc 1 209 5
	addi	a4,a4,-1280
	.loc 1 561 11
	li	a0,0
	.loc 1 209 5
	bne	a5,a4,.L1
	.loc 1 474 19
	lui	a0,%hi(.LC104)
	addi	a0,a0,%lo(.LC104)
	ret
.L41:
	.loc 1 209 5
	li	a4,28672
	addi	a3,a4,-896
	beq	a5,a3,.L164
	addi	a3,a4,-768
	beq	a5,a3,.L165
	addi	a4,a4,-1024
	.loc 1 561 11
	li	a0,0
	.loc 1 209 5
	bne	a5,a4,.L1
	.loc 1 470 19
	lui	a0,%hi(.LC80)
	addi	a0,a0,%lo(.LC80)
	ret
.L30:
	.loc 1 209 5
	addi	a3,a4,1792
	beq	a5,a3,.L167
	bgt	a5,a3,.L43
	addi	a3,a4,640
	beq	a5,a3,.L168
	bgt	a5,a3,.L44
	beq	a5,a4,.L169
	bgt	a5,a4,.L45
	li	a4,28672
	addi	a3,a4,-256
	beq	a5,a3,.L170
	bgt	a5,a3,.L46
	addi	a3,a4,-512
	beq	a5,a3,.L171
	addi	a4,a4,-384
	.loc 1 561 11
	li	a0,0
	.loc 1 209 5
	bne	a5,a4,.L1
	.loc 1 460 19
	lui	a0,%hi(.LC98)
	addi	a0,a0,%lo(.LC98)
	ret
.L46:
	.loc 1 209 5
	addi	a4,a4,-128
	.loc 1 561 11
	li	a0,0
	.loc 1 209 5
	bne	a5,a4,.L1
	.loc 1 456 19
	lui	a0,%hi(.LC69)
	addi	a0,a0,%lo(.LC69)
	ret
.L45:
	.loc 1 209 5
	li	a4,28672
	addi	a3,a4,384
	beq	a5,a3,.L174
	bgt	a5,a3,.L47
	addi	a3,a4,128
	beq	a5,a3,.L175
	addi	a4,a4,256
	.loc 1 561 11
	li	a0,0
	.loc 1 209 5
	bne	a5,a4,.L1
	.loc 1 396 19
	lui	a0,%hi(.LC70)
	addi	a0,a0,%lo(.LC70)
	ret
.L47:
	.loc 1 209 5
	addi	a4,a4,512
	.loc 1 561 11
	li	a0,0
	.loc 1 209 5
	bne	a5,a4,.L1
	.loc 1 400 19
	lui	a0,%hi(.LC76)
	addi	a0,a0,%lo(.LC76)
	ret
.L44:
	.loc 1 209 5
	addi	a4,a4,1280
	beq	a5,a4,.L178
	bgt	a5,a4,.L48
	li	a4,28672
	addi	a3,a4,1024
	beq	a5,a3,.L179
	bgt	a5,a3,.L49
	addi	a3,a4,768
	beq	a5,a3,.L180
	addi	a4,a4,896
	.loc 1 561 11
	li	a0,0
	.loc 1 209 5
	bne	a5,a4,.L1
	.loc 1 406 19
	lui	a0,%hi(.LC75)
	addi	a0,a0,%lo(.LC75)
	ret
.L49:
	.loc 1 209 5
	addi	a4,a4,1152
	.loc 1 561 11
	li	a0,0
	.loc 1 209 5
	bne	a5,a4,.L1
	.loc 1 410 19
	lui	a0,%hi(.LC78)
	addi	a0,a0,%lo(.LC78)
	ret
.L48:
	.loc 1 209 5
	li	a4,28672
	addi	a3,a4,1536
	beq	a5,a3,.L183
	addi	a3,a4,1664
	beq	a5,a3,.L184
	addi	a4,a4,1408
	.loc 1 561 11
	li	a0,0
	.loc 1 209 5
	bne	a5,a4,.L1
	.loc 1 414 19
	lui	a0,%hi(.LC89)
	addi	a0,a0,%lo(.LC89)
	ret
.L43:
	.loc 1 209 5
	li	a4,32768
	addi	a3,a4,-1152
	beq	a5,a3,.L186
	bgt	a5,a3,.L50
	addi	a4,a4,-1664
	beq	a5,a4,.L187
	bgt	a5,a4,.L51
	li	a4,32768
	addi	a3,a4,-1920
	beq	a5,a3,.L188
	bgt	a5,a3,.L52
	li	a3,28672
	addi	a3,a3,1920
	beq	a5,a3,.L189
	addi	a4,a4,-2048
	.loc 1 561 11
	li	a0,0
	.loc 1 209 5
	bne	a5,a4,.L1
	.loc 1 424 19
	lui	a0,%hi(.LC84)
	addi	a0,a0,%lo(.LC84)
	ret
.L52:
	.loc 1 209 5
	addi	a4,a4,-1792
	.loc 1 561 11
	li	a0,0
	.loc 1 209 5
	bne	a5,a4,.L1
	.loc 1 428 19
	lui	a0,%hi(.LC87)
	addi	a0,a0,%lo(.LC87)
	ret
.L51:
	.loc 1 209 5
	li	a4,32768
	addi	a3,a4,-1408
	beq	a5,a3,.L192
	addi	a3,a4,-1280
	beq	a5,a3,.L193
	addi	a4,a4,-1536
	.loc 1 561 11
	li	a0,0
	.loc 1 209 5
	bne	a5,a4,.L1
	.loc 1 432 19
	lui	a0,%hi(.LC94)
	addi	a0,a0,%lo(.LC94)
	ret
.L50:
	.loc 1 209 5
	addi	a4,a4,-512
	beq	a5,a4,.L195
	bgt	a5,a4,.L53
	li	a4,32768
	addi	a3,a4,-768
	beq	a5,a3,.L196
	bgt	a5,a3,.L54
	addi	a3,a4,-1024
	beq	a5,a3,.L197
	addi	a4,a4,-896
	.loc 1 561 11
	li	a0,0
	.loc 1 209 5
	bne	a5,a4,.L1
	.loc 1 442 19
	lui	a0,%hi(.LC93)
	addi	a0,a0,%lo(.LC93)
	ret
.L54:
	.loc 1 209 5
	addi	a4,a4,-640
	.loc 1 561 11
	li	a0,0
	.loc 1 209 5
	bne	a5,a4,.L1
	.loc 1 446 19
	lui	a0,%hi(.LC96)
	addi	a0,a0,%lo(.LC96)
	ret
.L53:
	.loc 1 209 5
	li	a4,32768
	addi	a3,a4,-256
	beq	a5,a3,.L200
	addi	a3,a4,-128
	beq	a5,a3,.L201
	addi	a4,a4,-384
	.loc 1 561 11
	li	a0,0
	.loc 1 209 5
	bne	a5,a4,.L1
	.loc 1 450 19
	lui	a0,%hi(.LC147)
	addi	a0,a0,%lo(.LC147)
	ret
.L55:
	.loc 1 259 19
	lui	a0,%hi(.LC15)
	addi	a0,a0,%lo(.LC15)
	ret
.L56:
	.loc 1 248 19
	lui	a0,%hi(.LC135)
	addi	a0,a0,%lo(.LC135)
	ret
.L57:
	.loc 1 533 19
	lui	a0,%hi(.LC126)
	addi	a0,a0,%lo(.LC126)
	ret
.L58:
	.loc 1 515 19
	lui	a0,%hi(.LC36)
	addi	a0,a0,%lo(.LC36)
	ret
.L59:
	.loc 1 301 19
	lui	a0,%hi(.LC34)
	addi	a0,a0,%lo(.LC34)
	ret
.L60:
	.loc 1 297 19
	lui	a0,%hi(.LC32)
	addi	a0,a0,%lo(.LC32)
	ret
.L61:
	.loc 1 293 19
	lui	a0,%hi(.LC33)
	addi	a0,a0,%lo(.LC33)
	ret
.L64:
	.loc 1 307 19
	lui	a0,%hi(.LC37)
	addi	a0,a0,%lo(.LC37)
	ret
.L65:
	.loc 1 303 19
	lui	a0,%hi(.LC38)
	addi	a0,a0,%lo(.LC38)
	ret
.L68:
	.loc 1 525 19
	lui	a0,%hi(.LC129)
	addi	a0,a0,%lo(.LC129)
	ret
.L69:
	.loc 1 521 19
	lui	a0,%hi(.LC127)
	addi	a0,a0,%lo(.LC127)
	ret
.L70:
	.loc 1 517 19
	lui	a0,%hi(.LC128)
	addi	a0,a0,%lo(.LC128)
	ret
.L73:
	.loc 1 529 19
	lui	a0,%hi(.LC134)
	addi	a0,a0,%lo(.LC134)
	ret
.L74:
	.loc 1 531 19
	lui	a0,%hi(.LC132)
	addi	a0,a0,%lo(.LC132)
	ret
.L76:
	.loc 1 553 19
	lui	a0,%hi(.LC140)
	addi	a0,a0,%lo(.LC140)
	ret
.L77:
	.loc 1 543 19
	lui	a0,%hi(.LC138)
	addi	a0,a0,%lo(.LC138)
	ret
.L78:
	.loc 1 539 19
	lui	a0,%hi(.LC136)
	addi	a0,a0,%lo(.LC136)
	ret
.L79:
	.loc 1 535 19
	lui	a0,%hi(.LC137)
	addi	a0,a0,%lo(.LC137)
	ret
.L82:
	.loc 1 549 19
	lui	a0,%hi(.LC141)
	addi	a0,a0,%lo(.LC141)
	ret
.L83:
	.loc 1 545 19
	lui	a0,%hi(.LC142)
	addi	a0,a0,%lo(.LC142)
	ret
.L86:
	.loc 1 240 19
	lui	a0,%hi(.LC9)
	addi	a0,a0,%lo(.LC9)
	ret
.L87:
	.loc 1 236 19
	lui	a0,%hi(.LC7)
	addi	a0,a0,%lo(.LC7)
	ret
.L88:
	.loc 1 232 19
	lui	a0,%hi(.LC8)
	addi	a0,a0,%lo(.LC8)
	ret
.L91:
	.loc 1 244 19
	lui	a0,%hi(.LC14)
	addi	a0,a0,%lo(.LC14)
	ret
.L92:
	.loc 1 246 19
	lui	a0,%hi(.LC12)
	addi	a0,a0,%lo(.LC12)
	ret
.L94:
	.loc 1 371 19
	lui	a0,%hi(.LC48)
	addi	a0,a0,%lo(.LC48)
	ret
.L95:
	.loc 1 328 19
	lui	a0,%hi(.LC53)
	addi	a0,a0,%lo(.LC53)
	ret
.L96:
	.loc 1 338 19
	lui	a0,%hi(.LC55)
	addi	a0,a0,%lo(.LC55)
	ret
.L97:
	.loc 1 342 19
	lui	a0,%hi(.LC16)
	addi	a0,a0,%lo(.LC16)
	ret
.L98:
	.loc 1 250 19
	lui	a0,%hi(.LC17)
	addi	a0,a0,%lo(.LC17)
	ret
.L101:
	.loc 1 332 19
	lui	a0,%hi(.LC52)
	addi	a0,a0,%lo(.LC52)
	ret
.L102:
	.loc 1 336 19
	lui	a0,%hi(.LC51)
	addi	a0,a0,%lo(.LC51)
	ret
.L105:
	.loc 1 318 19
	lui	a0,%hi(.LC45)
	addi	a0,a0,%lo(.LC45)
	ret
.L106:
	.loc 1 322 19
	lui	a0,%hi(.LC47)
	addi	a0,a0,%lo(.LC47)
	ret
.L107:
	.loc 1 326 19
	lui	a0,%hi(.LC46)
	addi	a0,a0,%lo(.LC46)
	ret
.L110:
	.loc 1 314 19
	lui	a0,%hi(.LC56)
	addi	a0,a0,%lo(.LC56)
	ret
.L111:
	.loc 1 369 19
	lui	a0,%hi(.LC42)
	addi	a0,a0,%lo(.LC42)
	ret
.L113:
	.loc 1 389 19
	lui	a0,%hi(.LC62)
	addi	a0,a0,%lo(.LC62)
	ret
.L114:
	.loc 1 381 19
	lui	a0,%hi(.LC60)
	addi	a0,a0,%lo(.LC60)
	ret
.L115:
	.loc 1 377 19
	lui	a0,%hi(.LC58)
	addi	a0,a0,%lo(.LC58)
	ret
.L116:
	.loc 1 373 19
	lui	a0,%hi(.LC59)
	addi	a0,a0,%lo(.LC59)
	ret
.L119:
	.loc 1 385 19
	lui	a0,%hi(.LC65)
	addi	a0,a0,%lo(.LC65)
	ret
.L120:
	.loc 1 387 19
	lui	a0,%hi(.LC63)
	addi	a0,a0,%lo(.LC63)
	ret
.L122:
	.loc 1 267 19
	lui	a0,%hi(.LC24)
	addi	a0,a0,%lo(.LC24)
	ret
.L123:
	.loc 1 271 19
	lui	a0,%hi(.LC26)
	addi	a0,a0,%lo(.LC26)
	ret
.L124:
	.loc 1 275 19
	lui	a0,%hi(.LC25)
	addi	a0,a0,%lo(.LC25)
	ret
.L127:
	.loc 1 263 19
	lui	a0,%hi(.LC19)
	addi	a0,a0,%lo(.LC19)
	ret
.L128:
	.loc 1 261 19
	lui	a0,%hi(.LC21)
	addi	a0,a0,%lo(.LC21)
	ret
.L130:
	.loc 1 464 19
	lui	a0,%hi(.LC120)
	addi	a0,a0,%lo(.LC120)
	ret
.L131:
	.loc 1 500 19
	lui	a0,%hi(.LC121)
	addi	a0,a0,%lo(.LC121)
	ret
.L132:
	.loc 1 502 19
	lui	a0,%hi(.LC30)
	addi	a0,a0,%lo(.LC30)
	ret
.L133:
	.loc 1 286 19
	lui	a0,%hi(.LC28)
	addi	a0,a0,%lo(.LC28)
	ret
.L134:
	.loc 1 282 19
	lui	a0,%hi(.LC18)
	addi	a0,a0,%lo(.LC18)
	ret
.L135:
	.loc 1 257 19
	lui	a0,%hi(.LC27)
	addi	a0,a0,%lo(.LC27)
	ret
.L138:
	.loc 1 508 19
	lui	a0,%hi(.LC31)
	addi	a0,a0,%lo(.LC31)
	ret
.L139:
	.loc 1 288 19
	lui	a0,%hi(.LC125)
	addi	a0,a0,%lo(.LC125)
	ret
.L142:
	.loc 1 221 19
	lui	a0,%hi(.LC1)
	addi	a0,a0,%lo(.LC1)
	ret
.L143:
	.loc 1 217 19
	lui	a0,%hi(.LC146)
	addi	a0,a0,%lo(.LC146)
	ret
.L144:
	.loc 1 213 19
	lui	a0,%hi(.LC0)
	addi	a0,a0,%lo(.LC0)
	ret
.L147:
	.loc 1 225 19
	lui	a0,%hi(.LC6)
	addi	a0,a0,%lo(.LC6)
	ret
.L148:
	.loc 1 227 19
	lui	a0,%hi(.LC4)
	addi	a0,a0,%lo(.LC4)
	ret
.L150:
	.loc 1 482 19
	lui	a0,%hi(.LC115)
	addi	a0,a0,%lo(.LC115)
	ret
.L151:
	.loc 1 490 19
	lui	a0,%hi(.LC117)
	addi	a0,a0,%lo(.LC117)
	ret
.L152:
	.loc 1 494 19
	lui	a0,%hi(.LC119)
	addi	a0,a0,%lo(.LC119)
	ret
.L153:
	.loc 1 498 19
	lui	a0,%hi(.LC118)
	addi	a0,a0,%lo(.LC118)
	ret
.L156:
	.loc 1 486 19
	lui	a0,%hi(.LC112)
	addi	a0,a0,%lo(.LC112)
	ret
.L157:
	.loc 1 484 19
	lui	a0,%hi(.LC114)
	addi	a0,a0,%lo(.LC114)
	ret
.L159:
	.loc 1 472 19
	lui	a0,%hi(.LC108)
	addi	a0,a0,%lo(.LC108)
	ret
.L160:
	.loc 1 476 19
	lui	a0,%hi(.LC110)
	addi	a0,a0,%lo(.LC110)
	ret
.L161:
	.loc 1 480 19
	lui	a0,%hi(.LC109)
	addi	a0,a0,%lo(.LC109)
	ret
.L164:
	.loc 1 468 19
	lui	a0,%hi(.LC103)
	addi	a0,a0,%lo(.LC103)
	ret
.L165:
	.loc 1 466 19
	lui	a0,%hi(.LC105)
	addi	a0,a0,%lo(.LC105)
	ret
.L167:
	.loc 1 420 19
	lui	a0,%hi(.LC71)
	addi	a0,a0,%lo(.LC71)
	ret
.L168:
	.loc 1 402 19
	lui	a0,%hi(.LC123)
	addi	a0,a0,%lo(.LC123)
	ret
.L169:
	.loc 1 506 19
	lui	a0,%hi(.LC99)
	addi	a0,a0,%lo(.LC99)
	ret
.L170:
	.loc 1 458 19
	lui	a0,%hi(.LC101)
	addi	a0,a0,%lo(.LC101)
	ret
.L171:
	.loc 1 462 19
	lui	a0,%hi(.LC100)
	addi	a0,a0,%lo(.LC100)
	ret
.L174:
	.loc 1 398 19
	lui	a0,%hi(.LC67)
	addi	a0,a0,%lo(.LC67)
	ret
.L175:
	.loc 1 394 19
	lui	a0,%hi(.LC68)
	addi	a0,a0,%lo(.LC68)
	ret
.L178:
	.loc 1 412 19
	lui	a0,%hi(.LC74)
	addi	a0,a0,%lo(.LC74)
	ret
.L179:
	.loc 1 408 19
	lui	a0,%hi(.LC72)
	addi	a0,a0,%lo(.LC72)
	ret
.L180:
	.loc 1 404 19
	lui	a0,%hi(.LC73)
	addi	a0,a0,%lo(.LC73)
	ret
.L183:
	.loc 1 416 19
	lui	a0,%hi(.LC79)
	addi	a0,a0,%lo(.LC79)
	ret
.L184:
	.loc 1 418 19
	lui	a0,%hi(.LC77)
	addi	a0,a0,%lo(.LC77)
	ret
.L186:
	.loc 1 438 19
	lui	a0,%hi(.LC85)
	addi	a0,a0,%lo(.LC85)
	ret
.L187:
	.loc 1 430 19
	lui	a0,%hi(.LC83)
	addi	a0,a0,%lo(.LC83)
	ret
.L188:
	.loc 1 426 19
	lui	a0,%hi(.LC81)
	addi	a0,a0,%lo(.LC81)
	ret
.L189:
	.loc 1 422 19
	lui	a0,%hi(.LC82)
	addi	a0,a0,%lo(.LC82)
	ret
.L192:
	.loc 1 434 19
	lui	a0,%hi(.LC88)
	addi	a0,a0,%lo(.LC88)
	ret
.L193:
	.loc 1 436 19
	lui	a0,%hi(.LC86)
	addi	a0,a0,%lo(.LC86)
	ret
.L195:
	.loc 1 448 19
	lui	a0,%hi(.LC92)
	addi	a0,a0,%lo(.LC92)
	ret
.L196:
	.loc 1 444 19
	lui	a0,%hi(.LC90)
	addi	a0,a0,%lo(.LC90)
	ret
.L197:
	.loc 1 440 19
	lui	a0,%hi(.LC91)
	addi	a0,a0,%lo(.LC91)
	ret
.L200:
	.loc 1 452 19
	lui	a0,%hi(.LC97)
	addi	a0,a0,%lo(.LC97)
	ret
.L201:
	.loc 1 454 19
	lui	a0,%hi(.LC95)
	addi	a0,a0,%lo(.LC95)
.L1:
	.loc 1 562 1
	ret
	.cfi_endproc
.LFE27:
	.size	mbedtls_high_level_strerr, .-mbedtls_high_level_strerr
	.section	.text.mbedtls_low_level_strerr,"ax",@progbits
	.align	1
	.globl	mbedtls_low_level_strerr
	.type	mbedtls_low_level_strerr, @function
mbedtls_low_level_strerr:
.LFB28:
	.loc 1 565 1 is_stmt 1
	.cfi_startproc
.LVL3:
	.loc 1 566 5
	.loc 1 568 5
	.loc 1 573 5
	.loc 1 575 5
	.loc 1 573 26 is_stmt 0
	srai	a4,a0,31
	xor	a5,a4,a0
	li	a0,-65536
.LVL4:
	sub	a5,a5,a4
	addi	a0,a0,127
	and	a5,a5,a0
	addi	a5,a5,-1
	li	a4,116
	bgtu	a5,a4,.L205
	lui	a4,%hi(.LANCHOR0)
	addi	a4,a4,%lo(.LANCHOR0)
	lrw	a0,a4,a5,2
	ret
.L205:
	.loc 1 575 5
	li	a0,0
	.loc 1 880 1
	ret
	.cfi_endproc
.LFE28:
	.size	mbedtls_low_level_strerr, .-mbedtls_low_level_strerr
	.section	.rodata.mbedtls_strerror.str1.4,"aMS",@progbits,1
	.align	2
.LC148:
	.string	"UNKNOWN ERROR CODE (%04X)"
	.align	2
.LC149:
	.string	"%s"
	.align	2
.LC150:
	.string	" : "
	.section	.text.mbedtls_strerror,"ax",@progbits
	.align	1
	.globl	mbedtls_strerror
	.type	mbedtls_strerror, @function
mbedtls_strerror:
.LFB29:
	.loc 1 883 1 is_stmt 1
	.cfi_startproc
.LVL5:
	.loc 1 884 5
	.loc 1 885 5
	.loc 1 886 5
	.loc 1 887 5
	.loc 1 889 5
	.loc 1 889 8 is_stmt 0
	beq	a2,zero,.L225
	.loc 1 883 1
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s3,12(sp)
	.cfi_offset 19, -20
	mv	s3,a1
	sw	s4,8(sp)
	.loc 1 893 5
	li	a1,0
.LVL6:
	.cfi_offset 20, -24
	mv	s4,a0
	mv	a0,s3
.LVL7:
	.loc 1 883 1
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	ra,28(sp)
	sw	s2,16(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.cfi_offset 18, -16
	mv	s0,a2
	.loc 1 893 5 is_stmt 1
	call	memset
.LVL8:
	.loc 1 895 5
	srai	a5,s4,31
	xor	s4,a5,s4
.LVL9:
	.loc 1 899 13 is_stmt 0
	li	s1,65536
	sub	s4,s4,a5
.LVL10:
	.loc 1 899 5 is_stmt 1
	.loc 1 899 13 is_stmt 0
	addi	s1,s1,-128
	and	s1,s4,s1
	.loc 1 899 8
	bne	s1,zero,.L209
.LVL11:
.L214:
	.loc 1 920 5 is_stmt 1
	.loc 1 920 13 is_stmt 0
	li	s1,-65536
	addi	s1,s1,127
	and	s1,s4,s1
.LVL12:
	.loc 1 922 5 is_stmt 1
	.loc 1 922 8 is_stmt 0
	beq	s1,zero,.L206
	.loc 1 929 5 is_stmt 1
	.loc 1 929 11 is_stmt 0
	mv	a0,s3
	call	strlen
.LVL13:
	mv	s2,a0
.LVL14:
	.loc 1 931 5 is_stmt 1
	.loc 1 931 8 is_stmt 0
	beq	a0,zero,.L215
	.loc 1 932 9 is_stmt 1
	.loc 1 932 20 is_stmt 0
	sub	s0,s0,a0
.LVL15:
	.loc 1 932 12
	li	a5,4
	bleu	s0,a5,.L206
	.loc 1 936 9 is_stmt 1
	lui	a2,%hi(.LC150)
	mv	a1,s0
	add	a0,s3,a0
.LVL16:
	addi	a2,a2,%lo(.LC150)
	.loc 1 938 13 is_stmt 0
	addi	s2,s2,3
.LVL17:
	.loc 1 936 9
	call	snprintf
.LVL18:
	.loc 1 938 9 is_stmt 1
	.loc 1 938 13 is_stmt 0
	add	s3,s3,s2
.LVL19:
	.loc 1 939 9 is_stmt 1
	.loc 1 939 16 is_stmt 0
	addi	s0,s0,-3
.LVL20:
.L215:
	.loc 1 943 5 is_stmt 1
	.loc 1 943 35 is_stmt 0
	mv	a0,s4
	call	mbedtls_low_level_strerr
.LVL21:
	mv	a3,a0
.LVL22:
	.loc 1 945 5 is_stmt 1
	.loc 1 945 8 is_stmt 0
	bne	a0,zero,.L216
	.loc 1 946 9 is_stmt 1
	lui	a2,%hi(.LC148)
	mv	a3,s1
	addi	a2,a2,%lo(.LC148)
.L229:
	.loc 1 948 9 is_stmt 0
	mv	a1,s0
	.loc 1 950 1
	lw	s0,24(sp)
	.cfi_remember_state
	.cfi_restore 8
.LVL23:
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s1,20(sp)
	.cfi_restore 9
.LVL24:
	lw	s2,16(sp)
	.cfi_restore 18
	lw	s4,8(sp)
	.cfi_restore 20
.LVL25:
	.loc 1 948 9
	mv	a0,s3
.LVL26:
	.loc 1 950 1
	lw	s3,12(sp)
	.cfi_restore 19
.LVL27:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	.loc 1 948 9
	tail	snprintf
.LVL28:
.L209:
	.cfi_restore_state
	.loc 1 900 9 is_stmt 1
	.loc 1 903 9
	.loc 1 903 40 is_stmt 0
	mv	a0,s4
	call	mbedtls_high_level_strerr
.LVL29:
	mv	a3,a0
.LVL30:
	.loc 1 905 9 is_stmt 1
	.loc 1 905 12 is_stmt 0
	bne	a0,zero,.L212
	.loc 1 906 13 is_stmt 1
	lui	a2,%hi(.LC148)
	mv	a3,s1
	addi	a2,a2,%lo(.LC148)
.L228:
	.loc 1 908 13 is_stmt 0
	mv	a1,s0
	mv	a0,s3
.LVL31:
	call	snprintf
.LVL32:
	.loc 1 914 9 is_stmt 1
	.loc 1 914 12 is_stmt 0
	li	a5,28672
	addi	a5,a5,1920
	bne	s1,a5,.L214
.LVL33:
.L206:
	.loc 1 950 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
.LVL34:
	lw	s2,16(sp)
	.cfi_restore 18
	lw	s3,12(sp)
	.cfi_restore 19
.LVL35:
	lw	s4,8(sp)
	.cfi_restore 20
.LVL36:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL37:
.L212:
	.cfi_restore_state
	.loc 1 908 13 is_stmt 1
	lui	a2,%hi(.LC149)
	addi	a2,a2,%lo(.LC149)
	j	.L228
.LVL38:
.L216:
	.loc 1 948 9
	lui	a2,%hi(.LC149)
	addi	a2,a2,%lo(.LC149)
	j	.L229
.LVL39:
.L225:
	.cfi_def_cfa_offset 0
	.cfi_restore 1
	.cfi_restore 8
	.cfi_restore 9
	.cfi_restore 18
	.cfi_restore 19
	.cfi_restore 20
	ret
	.cfi_endproc
.LFE29:
	.size	mbedtls_strerror, .-mbedtls_strerror
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC151:
	.string	"ERROR - Generic error"
	.align	2
.LC152:
	.string	"BIGNUM - An error occurred while reading from or writing to a file"
	.align	2
.LC153:
	.string	"BIGNUM - Bad input parameters to function"
	.align	2
.LC154:
	.string	"BIGNUM - There is an invalid character in the digit string"
	.align	2
.LC155:
	.string	"BIGNUM - The buffer is too small to write to"
	.align	2
.LC156:
	.string	"BIGNUM - The input arguments are negative or result in illegal output"
	.align	2
.LC157:
	.string	"OID - output buffer is too small"
	.align	2
.LC158:
	.string	"BIGNUM - The input argument for division is zero, which is not allowed"
	.align	2
.LC159:
	.string	"BIGNUM - The input arguments are not acceptable"
	.align	2
.LC160:
	.string	"BIGNUM - Memory allocation failed"
	.align	2
.LC161:
	.string	"GCM - Authenticated decryption failed"
	.align	2
.LC162:
	.string	"GCM - GCM hardware accelerator failed"
	.align	2
.LC163:
	.string	"GCM - Bad input parameters to function"
	.align	2
.LC164:
	.string	"AES - Invalid key length"
	.align	2
.LC165:
	.string	"AES - Invalid input data"
	.align	2
.LC166:
	.string	"AES - Invalid data input length"
	.align	2
.LC167:
	.string	"AES - Feature not available. For example, an unsupported AES key size"
	.align	2
.LC168:
	.string	"AES - AES hardware accelerator failed"
	.align	2
.LC169:
	.string	"BASE64 - Output buffer too small"
	.align	2
.LC170:
	.string	"BASE64 - Invalid character in input"
	.align	2
.LC171:
	.string	"OID - OID is not found"
	.align	2
.LC172:
	.string	"MD5 - MD5 hardware accelerator failed"
	.align	2
.LC173:
	.string	"CTR_DRBG - The entropy source failed"
	.align	2
.LC174:
	.string	"SHA1 - SHA-1 hardware accelerator failed"
	.align	2
.LC175:
	.string	"CTR_DRBG - The requested random buffer length is too big"
	.align	2
.LC176:
	.string	"SHA256 - SHA-256 hardware accelerator failed"
	.align	2
.LC177:
	.string	"CTR_DRBG - The input (entropy + additional data) is too large"
	.align	2
.LC178:
	.string	"SHA512 - SHA-512 hardware accelerator failed"
	.align	2
.LC179:
	.string	"CTR_DRBG - Read or write error in file"
	.align	2
.LC180:
	.string	"ENTROPY - Critical entropy source failure"
	.align	2
.LC181:
	.string	"ENTROPY - No strong sources have been added to poll"
	.align	2
.LC182:
	.string	"ENTROPY - No more sources can be added"
	.align	2
.LC183:
	.string	"ENTROPY - Read/write error in file"
	.align	2
.LC184:
	.string	"ENTROPY - No sources have been added to poll"
	.align	2
.LC185:
	.string	"NET - Failed to open a socket"
	.align	2
.LC186:
	.string	"NET - Buffer is too small to hold the data"
	.align	2
.LC187:
	.string	"NET - The connection to the given server / port failed"
	.align	2
.LC188:
	.string	"NET - The context is invalid, eg because it was free()ed"
	.align	2
.LC189:
	.string	"NET - Binding of the socket failed"
	.align	2
.LC190:
	.string	"NET - Polling the net context failed"
	.align	2
.LC191:
	.string	"NET - Could not listen on the socket"
	.align	2
.LC192:
	.string	"NET - Input invalid"
	.align	2
.LC193:
	.string	"NET - Could not accept the incoming connection"
	.align	2
.LC194:
	.string	"NET - Reading information from the socket failed"
	.align	2
.LC195:
	.string	"NET - Sending information through the socket failed"
	.align	2
.LC196:
	.string	"NET - Connection was reset by peer"
	.align	2
.LC197:
	.string	"NET - Failed to get an IP address for the given hostname"
	.align	2
.LC198:
	.string	"ASN1 - Out of data when parsing an ASN1 data structure"
	.align	2
.LC199:
	.string	"ASN1 - ASN1 tag was of an unexpected value"
	.align	2
.LC200:
	.string	"ASN1 - Error when trying to determine the length or invalid length"
	.align	2
.LC201:
	.string	"ASN1 - Actual length differs from expected length"
	.align	2
.LC202:
	.string	"ASN1 - Data is invalid"
	.align	2
.LC203:
	.string	"ASN1 - Memory allocation failed"
	.align	2
.LC204:
	.string	"ASN1 - Buffer too small when writing ASN.1 data structure"
	.align	2
.LC205:
	.string	"ERROR - This is a bug in the library"
	.align	2
.LC206:
	.string	"PLATFORM - Hardware accelerator failed"
	.align	2
.LC207:
	.string	"PLATFORM - The requested feature is not supported by the platform"
	.align	2
.LC208:
	.string	"SHA1 - SHA-1 input data was malformed"
	.align	2
.LC209:
	.string	"SHA256 - SHA-256 input data was malformed"
	.align	2
.LC210:
	.string	"SHA512 - SHA-512 input data was malformed"
	.section	.rodata.CSWTCH.4,"a"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	CSWTCH.4, @object
	.size	CSWTCH.4, 468
CSWTCH.4:
	.word	.LC151
	.word	.LC152
	.word	0
	.word	.LC153
	.word	0
	.word	.LC154
	.word	0
	.word	.LC155
	.word	0
	.word	.LC156
	.word	.LC157
	.word	.LC158
	.word	0
	.word	.LC159
	.word	0
	.word	.LC160
	.word	0
	.word	.LC161
	.word	.LC162
	.word	.LC163
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	.LC164
	.word	.LC165
	.word	.LC166
	.word	.LC167
	.word	0
	.word	.LC168
	.word	0
	.word	0
	.word	0
	.word	0
	.word	.LC169
	.word	0
	.word	.LC170
	.word	0
	.word	.LC171
	.word	.LC172
	.word	0
	.word	0
	.word	0
	.word	0
	.word	.LC173
	.word	.LC174
	.word	.LC175
	.word	.LC176
	.word	.LC177
	.word	.LC178
	.word	.LC179
	.word	0
	.word	.LC180
	.word	.LC181
	.word	.LC182
	.word	.LC183
	.word	.LC184
	.word	0
	.word	.LC185
	.word	.LC186
	.word	.LC187
	.word	.LC188
	.word	.LC189
	.word	.LC190
	.word	.LC191
	.word	.LC192
	.word	.LC193
	.word	0
	.word	.LC194
	.word	0
	.word	.LC195
	.word	0
	.word	.LC196
	.word	0
	.word	.LC197
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	.LC198
	.word	0
	.word	.LC199
	.word	0
	.word	.LC200
	.word	0
	.word	.LC201
	.word	0
	.word	.LC202
	.word	0
	.word	.LC203
	.word	0
	.word	.LC204
	.word	0
	.word	.LC205
	.word	0
	.word	.LC206
	.word	0
	.word	.LC207
	.word	.LC208
	.word	.LC209
	.word	.LC210
	.text
.Letext0:
	.file 2 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\string.h"
	.file 3 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\stdio.h"
	.file 4 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\lib\\gcc\\riscv64-unknown-elf\\10.4.0\\include\\stddef.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x259
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF22
	.byte	0xc
	.4byte	.LASF23
	.4byte	.LASF24
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF5
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF7
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x4
	.4byte	.LASF25
	.byte	0x4
	.byte	0xd1
	.byte	0x16
	.4byte	0x64
	.byte	0x5
	.byte	0x4
	.4byte	0x7d
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.byte	0x6
	.4byte	0x7d
	.byte	0x5
	.byte	0x4
	.4byte	0x84
	.byte	0x7
	.4byte	.LASF26
	.byte	0x1
	.2byte	0x372
	.byte	0x6
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x1
	.byte	0x9c
	.4byte	0x1c0
	.byte	0x8
	.string	"ret"
	.byte	0x1
	.2byte	0x372
	.byte	0x1b
	.4byte	0x5d
	.4byte	.LLST3
	.byte	0x8
	.string	"buf"
	.byte	0x1
	.2byte	0x372
	.byte	0x26
	.4byte	0x77
	.4byte	.LLST4
	.byte	0x9
	.4byte	.LASF10
	.byte	0x1
	.2byte	0x372
	.byte	0x32
	.4byte	0x6b
	.4byte	.LLST5
	.byte	0xa
	.string	"len"
	.byte	0x1
	.2byte	0x374
	.byte	0xc
	.4byte	0x6b
	.4byte	.LLST6
	.byte	0xb
	.4byte	.LASF11
	.byte	0x1
	.2byte	0x375
	.byte	0x9
	.4byte	0x5d
	.4byte	.LLST7
	.byte	0xb
	.4byte	.LASF12
	.byte	0x1
	.2byte	0x376
	.byte	0x11
	.4byte	0x89
	.4byte	.LLST8
	.byte	0xb
	.4byte	.LASF13
	.byte	0x1
	.2byte	0x377
	.byte	0x11
	.4byte	0x89
	.4byte	.LLST9
	.byte	0xc
	.4byte	.LVL8
	.4byte	0x237
	.4byte	0x13c
	.byte	0xd
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0xd
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0xd
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0xc
	.4byte	.LVL13
	.4byte	0x243
	.4byte	0x150
	.byte	0xd
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0xc
	.4byte	.LVL18
	.4byte	0x24f
	.4byte	0x178
	.byte	0xd
	.byte	0x1
	.byte	0x5a
	.byte	0x7
	.byte	0x83
	.byte	0
	.byte	0x82
	.byte	0
	.byte	0x22
	.byte	0x33
	.byte	0x1c
	.byte	0xd
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0xd
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC150
	.byte	0
	.byte	0xc
	.4byte	.LVL21
	.4byte	0x1c0
	.4byte	0x18c
	.byte	0xd
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	.LVL28
	.4byte	0x24f
	.byte	0xc
	.4byte	.LVL29
	.4byte	0x1fe
	.4byte	0x1a9
	.byte	0xd
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0
	.byte	0xf
	.4byte	.LVL32
	.4byte	0x24f
	.byte	0xd
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0xd
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LASF16
	.byte	0x1
	.2byte	0x234
	.byte	0xd
	.4byte	0x89
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x1
	.byte	0x9c
	.4byte	0x1fe
	.byte	0x9
	.4byte	.LASF14
	.byte	0x1
	.2byte	0x234
	.byte	0x2a
	.4byte	0x5d
	.4byte	.LLST1
	.byte	0xb
	.4byte	.LASF15
	.byte	0x1
	.2byte	0x236
	.byte	0x9
	.4byte	0x5d
	.4byte	.LLST2
	.byte	0
	.byte	0x11
	.4byte	.LASF17
	.byte	0x1
	.byte	0xc6
	.byte	0xd
	.4byte	0x89
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x1
	.byte	0x9c
	.4byte	0x237
	.byte	0x12
	.4byte	.LASF14
	.byte	0x1
	.byte	0xc6
	.byte	0x2b
	.4byte	0x5d
	.4byte	.LLST0
	.byte	0x13
	.4byte	.LASF18
	.byte	0x1
	.byte	0xc8
	.byte	0x9
	.4byte	0x5d
	.byte	0x1
	.byte	0x5f
	.byte	0
	.byte	0x14
	.4byte	.LASF19
	.4byte	.LASF19
	.byte	0x2
	.byte	0x21
	.byte	0x8
	.byte	0x14
	.4byte	.LASF20
	.4byte	.LASF20
	.byte	0x2
	.byte	0x29
	.byte	0x8
	.byte	0x15
	.4byte	.LASF21
	.4byte	.LASF21
	.byte	0x3
	.2byte	0x10a
	.byte	0x5
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x25
	.byte	0xe
	.byte	0x13
	.byte	0xb
	.byte	0x3
	.byte	0xe
	.byte	0x1b
	.byte	0xe
	.byte	0x55
	.byte	0x17
	.byte	0x11
	.byte	0x1
	.byte	0x10
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0xe
	.byte	0
	.byte	0
	.byte	0x3
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0x4
	.byte	0x16
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x97,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x95,0x42
	.byte	0x19
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x49
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x97,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x49
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x97,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0x2e
	.byte	0
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0x6e
	.byte	0xe
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x15
	.byte	0x2e
	.byte	0
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0x6e
	.byte	0xe
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST3:
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL25
	.4byte	.LVL28
	.2byte	0x10
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x4f
	.byte	0x26
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x27
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x10
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x4f
	.byte	0x26
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x27
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL39
	.4byte	.LFE29
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL6
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL27
	.4byte	.LVL28-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL28
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL35
	.4byte	.LVL37
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL39
	.4byte	.LFE29
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL5
	.4byte	.LVL8-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL8-1
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL15
	.4byte	.LVL20
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL23
	.4byte	.LVL28-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL28
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL33
	.4byte	.LVL37
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL39
	.4byte	.LFE29
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL17
	.4byte	.LVL20
	.2byte	0x3
	.byte	0x82
	.byte	0x7d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL12
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x8
	.byte	0x84
	.byte	0
	.byte	0x11
	.byte	0xff,0x80,0x7c
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL28
	.2byte	0x15
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x4f
	.byte	0x26
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x27
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0x11
	.byte	0xff,0x80,0x7c
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL37
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL5
	.4byte	.LVL11
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL39
	.4byte	.LFE29
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL5
	.4byte	.LVL22
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL28
	.4byte	.LVL38
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL39
	.4byte	.LFE29
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x4
	.byte	0x7a
	.byte	0
	.byte	0x19
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LFE28
	.2byte	0x5
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x19
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x9
	.byte	0x7a
	.byte	0
	.byte	0x19
	.byte	0x11
	.byte	0xff,0x80,0x7c
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LFE28
	.2byte	0xa
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x19
	.byte	0x11
	.byte	0xff,0x80,0x7c
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x4
	.byte	0x7a
	.byte	0
	.byte	0x19
	.byte	0x9f
	.4byte	.LVL1
	.4byte	.LFE27
	.2byte	0x5
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x19
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF22:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF16:
	.string	"mbedtls_low_level_strerr"
.LASF14:
	.string	"error_code"
.LASF25:
	.string	"size_t"
.LASF4:
	.string	"long int"
.LASF21:
	.string	"snprintf"
.LASF3:
	.string	"short unsigned int"
.LASF26:
	.string	"mbedtls_strerror"
.LASF15:
	.string	"low_level_error_code"
.LASF20:
	.string	"strlen"
.LASF7:
	.string	"long long unsigned int"
.LASF1:
	.string	"unsigned char"
.LASF5:
	.string	"long unsigned int"
.LASF11:
	.string	"use_ret"
.LASF17:
	.string	"mbedtls_high_level_strerr"
.LASF13:
	.string	"low_level_error_description"
.LASF19:
	.string	"memset"
.LASF24:
	.string	"C:\\\\Users\\\\cwier\\\\Documents\\\\GitHub\\\\qcom\\\\examples\\\\usb_cam_stream\\\\build\\\\build_out\\\\components\\\\crypto\\\\mbedtls"
.LASF8:
	.string	"unsigned int"
.LASF12:
	.string	"high_level_error_description"
.LASF9:
	.string	"char"
.LASF6:
	.string	"long long int"
.LASF18:
	.string	"high_level_error_code"
.LASF2:
	.string	"short int"
.LASF10:
	.string	"buflen"
.LASF23:
	.string	".\\components\\crypto\\mbedtls\\mbedtls\\library\\error.c"
.LASF0:
	.string	"signed char"
	.ident	"GCC: (GNU) 10.4.0"
