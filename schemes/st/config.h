/* Replace these values in your config.h */

/* Terminal colors (16 first used in escape sequence) */
static const char *colorname[] = {
	/* 8 normal colors */
	"#222222",
	"#ff6685",
	"#a6eba6",
	"#ffdc72",
	"#5dc6f5",
	"#ff8fff",
	"#86d1d7",
	"#4c4c4c",

	/* 8 bright colors */
	"#737373",
	"#ffa8ba",
	"#c5ebc5",
	"#f9f9a5",
	"#8ddbff",
	"#ffabff",
	"#b0f0f0",
	"white",

	[255] = 0,

	/* more colors can be added after 255 to use with DefaultXX */
	"#cccccc",
	"#555555",
	"#222222",
};


/*
 * Default colors (colorname index)
 * foreground, background, cursor, reverse cursor
 */
unsigned int defaultfg = 15;
unsigned int defaultbg = 0;
static unsigned int defaultcs = 256;
static unsigned int defaultrcs = 257;
