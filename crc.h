/**************************************\
* crc.h                                *
* CRC functions from the 05 Jul 1997   *
* release of SNIPPETS                  *
\**************************************/

#ifndef CRC__H
#define CRC__H


#include <stdlib.h>

/* These typedefs are correct on nearly all ix86 compilers. */
typedef unsigned char BYTE;
typedef unsigned short WORD;
typedef unsigned long DWORD;

typedef enum {Error_ = -1, Success_, False_ = 0, True_} Boolean_T;

/*
 *  File: CRC_32.C
 */
#define UPDC32(octet,crc) (crc_32_tab[((crc) ^ ((BYTE)octet)) & 0xff] ^ ((crc) >> 8))

DWORD updateCRC32(unsigned char ch, DWORD crc);
Boolean_T crc32file(const char *name, DWORD *crc, long *charcnt);
DWORD crc32buf(const char *buf, size_t len);

#endif /* CRC__H */
