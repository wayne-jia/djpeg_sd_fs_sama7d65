#include "gfx/legato/generated/le_gen_assets.h"

/*****************************************************************************
 * Legato String Table
 * Encoding        ASCII
 * Language Count: 1
 * String Count:   6
 *****************************************************************************/

/*****************************************************************************
 * string table data
 * 
 * this table contains the raw character data for each string
 * 
 * unsigned short - number of indices in the table
 * unsigned short - number of languages in the table
 * 
 * index array (size = number of indices * number of languages
 * 
 * for each index in the array:
 *   unsigned byte - the font ID for the index
 *   unsigned byte[3] - the offset of the string codepoint data in
 *                      the table
 * 
 * string data is found by jumping to the index offset from the start
 * of the table
 * 
 * string data entry:
 *     unsigned short - length of the string in bytes (encoding dependent)
 *     codepoint data - the string data
 ****************************************************************************/

const uint8_t stringTable_data[182] =
{
    0x06,0x00,0x01,0x00,0x02,0x1C,0x00,0x00,0x01,0x2A,0x00,0x00,0x00,0x4A,0x00,0x00,
    0x02,0x54,0x00,0x00,0x01,0x5A,0x00,0x00,0x01,0x90,0x00,0x00,0x0B,0x00,0x51,0x75,
    0x69,0x63,0x6B,0x20,0x53,0x74,0x61,0x72,0x74,0x00,0x1E,0x00,0x48,0x33,0x20,0x4A,
    0x50,0x45,0x47,0x20,0x73,0x65,0x71,0x75,0x65,0x6E,0x63,0x65,0x20,0x70,0x6C,0x61,
    0x79,0x62,0x61,0x63,0x6B,0x20,0x64,0x65,0x6D,0x6F,0x07,0x00,0x50,0x6C,0x61,0x79,
    0x69,0x6E,0x67,0x00,0x04,0x00,0x42,0x61,0x63,0x6B,0x34,0x00,0x48,0x33,0x20,0x4A,
    0x50,0x45,0x47,0x20,0x69,0x6E,0x20,0x53,0x44,0x20,0x31,0x32,0x38,0x30,0x78,0x37,
    0x32,0x30,0x20,0x2D,0x3E,0x20,0x59,0x55,0x56,0x20,0x6F,0x6E,0x20,0x48,0x45,0x4F,
    0x20,0x40,0x31,0x33,0x66,0x70,0x73,0x20,0x53,0x41,0x4D,0x41,0x37,0x44,0x36,0x35,
    0x24,0x00,0x52,0x65,0x61,0x64,0x69,0x6E,0x67,0x20,0x4A,0x50,0x45,0x47,0x20,0x66,
    0x72,0x6F,0x6D,0x20,0x53,0x44,0x20,0x63,0x61,0x72,0x64,0x20,0x46,0x41,0x54,0x20,
    0x66,0x73,0x20,0x2E,0x2E,0x2E,
};

/* font asset pointer list */
leFont* fontList[3] =
{
    (leFont*)&bigFont,
    (leFont*)&smallFont,
    (leFont*)&extraSmallFont,
};

const leStringTable stringTable =
{
    {
        LE_STREAM_LOCATION_ID_INTERNAL, // data location id
        (void*)stringTable_data, // data address pointer
        182, // data size
    },
    (void*)stringTable_data, // string table data
    fontList, // font lookup table
    LE_STRING_ENCODING_ASCII // encoding standard
};


// string list
leTableString string_strQuickstart;
leTableString string_demo;
leTableString string_play;
leTableString string_strBack;
leTableString string_djpeg;
leTableString string_reading;

void initializeStrings(void)
{
    leTableString_Constructor(&string_strQuickstart, stringID_strQuickstart);
    leTableString_Constructor(&string_demo, stringID_demo);
    leTableString_Constructor(&string_play, stringID_play);
    leTableString_Constructor(&string_strBack, stringID_strBack);
    leTableString_Constructor(&string_djpeg, stringID_djpeg);
    leTableString_Constructor(&string_reading, stringID_reading);
}
