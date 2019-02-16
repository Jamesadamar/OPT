#define CT_STATIC           0
#define CT_BUTTON           1
#define CT_EDIT             2
#define CT_SLIDER           3
#define CT_COMBO            4
#define CT_LISTBOX          5
#define CT_TOOLBOX          6
#define CT_CHECKBOXES       7
#define CT_PROGRESS         8
#define CT_HTML             9
#define CT_STATIC_SKEW      10
#define CT_ACTIVETEXT       11
#define CT_TREE             12
#define CT_STRUCTURED_TEXT  13
#define CT_CONTEXT_MENU     14
#define CT_CONTROLS_GROUP   15
#define CT_3DSTATIC			20
#define CT_3DACTIVETEXT		21
#define CT_3DLISTBOX		22
#define CT_3DHTML			23
#define CT_3DSLIDER			24
#define CT_3DEDIT			25
#define CT_XKEYDESC         40
#define CT_XBUTTON          41
#define CT_XLISTBOX         42
#define CT_XSLIDER          43
#define CT_XCOMBO           44
#define CT_ANIMATED_TEXTURE 45
#define CT_OBJECT           80
#define CT_OBJECT_ZOOM      81
#define CT_OBJECT_CONTAINER 82
#define CT_OBJECT_CONT_ANIM 83
#define CT_LINEBREAK        98
#define CT_USER             99
#define CT_MAP              100
#define CT_MAP_MAIN         101

// Static styles
#define ST_POS            0x0F
#define ST_HPOS           0x03
#define ST_VPOS           0x0C
#define ST_LEFT           0x00
#define ST_RIGHT          0x01
#define ST_CENTER         0x02
#define ST_DOWN           0x04
#define ST_UP             0x08
#define ST_VCENTER        0x0c
#define ST_TYPE           0xF0
#define ST_SINGLE         0
#define ST_MULTI          16
#define ST_TITLE_BAR      32
#define ST_PICTURE        48
#define ST_FRAME          64
#define ST_BACKGROUND     80
#define ST_GROUP_BOX      96
#define ST_GROUP_BOX2     112
#define ST_HUD_BACKGROUND 128
#define ST_TILE_PICTURE   144
#define ST_WITH_RECT      160
#define ST_LINE           176
#define ST_SHADOW         0x100
#define ST_NO_RECT        0x200
#define ST_KEEP_ASPECT_RATIO  0x800

// Listbox styles
#define LB_TEXTURES       0x10
#define LB_MULTI          0x20
#define ST_TITLE          ST_TITLE_BAR + ST_CENTER
#define FontHTML			"PuristaMedium"
#define Dlg_ROWS			36
#define Dlg_COLS			90
#define Dlg_CONTROLHGT		((100/Dlg_ROWS)/100)
#define Dlg_COLWIDTH		((100/Dlg_COLS)/100)
#define Dlg_TEXTHGT_MOD		0.9
#define Dlg_ROWSPACING_MOD	1.3
#define Dlg_ROWHGT			(Dlg_CONTROLHGT*Dlg_ROWSPACING_MOD)
#define Dlg_TEXTHGT			(Dlg_CONTROLHGT*Dlg_TEXTHGT_MOD)
#define UILEFT				0
#define UICOMBO				4
#define DEFAULTFONT			"PuristaMedium"
#define SECONDARY_FONT		"Bitstream"


#define ReadAndWrite 0
#define ProcTextWhite "#(argb,8,8,3)color(1,1,1,1)"
#define ProcTextEmpty "#(argb,8,8,3)color(1,1,1,0)"
#define ProcTextBlack "#(argb,8,8,3)color(0,0,0,1)"
#define ProcTextGray "#(argb,8,8,3)color(0.3,0.3,0.3,1)"
#define ProcTextRed "#(argb,8,8,3)color(1,0,0,1)"
#define ProcTextGreen "#(argb,8,8,3)color(0,1,0,1)"
#define ProcTextBlue "#(argb,8,8,3)color(0,0,1,1)"


//Colors
#define Color_KackG 				{0.36, 0.4, 0.38, 1}		// kaki-grau
#define Color_KackY					{0.8, 0.7, 0.6, 1}			// kaki-gelb
#define Color_KackB 				{0.51, 0.48, 0.46, 1}		// kaki oa-style
#define Color_WhiteDark 		{1, 1, 1, 0.5}
#define Color_White					{1, 1, 1, 1}
#define Color_WhiteLight		{1, 1, 1, 0.9}
#define Color_Black 				{0, 0, 0, 1}
#define Color_Gray 					{1, 1, 1, 0.5}
#define Color_GrayLight 		{0.7, 0.7, 0.7, 1}
#define Color_GrayDark 			{0.2, 0.2, 0.2, 1}
#define Color_DarkRed 			{0.6, 0.1, 0, 1}
#define Color_Green 				{0.8, 0.9, 0.4, 1}
#define Color_Orange 				{0.9, 0.45, 0.1, 1}
#define Color_Red 					{0.9, 0.2, 0.2, 1}
#define Color_Blue 					{0.2, 0.2, 0.9, 1}
#define Color_NoColor				{0, 0, 0, 0}
#define Color_TextBI				{0.543, 0.5742, 0.4102, 1}
#define Color_TextHud				{0.543, 0.5742, 0.4102, 0.9}
#define Color_MainCapt			{0.543, 0.5742, 0.4102, 1.0}
#define Color_Bleedout 			{0.66, 0, 0, 0.8}
#define Color_Black_Alpha		{0, 0, 0, 0.85}
#define Color_Scrollbar         {0, 0.65, 0.96, 0.65}

//Colors background
#define CA_UI_background_2 				{0.6, 0.6, 0.6, 0.4}			// hellgrau transparent
#define CA_UI_background          {0.023529, 0, 0.0313725, 1}		// fast schwarz
#define Color_MainBack 						{1, 1, 1, 0.9}					// vergilbtes weiss
#define CA_UI_element_background	{1, 1, 1, 0.7}					// dunkel weiss
#define CA_UI_help_background 		{0.2, 0.1, 0.1, 0.7}			// rost rotbraun
#define CA_UI_title_background		{0.24, 0.47, 0.07, 1.0}			// grn
#define CA_UI_green								{0.84,1,0.55,1}					// gelb-grn gift
#define OA_header_dark						{0,0,0,0.5}						// oa schwarz transparent

//Font Size
#define TextSize_IGUI_normal 	0.023 // test //19/768
#define TextSize_small 				0.022 //16/768
#define TextSize_normal 			0.024 //19/768
#define TextSize_medium 			0.07 //23/768
#define TextSize_large  			0.11 //44/768

#define IDCPLAYER 5200
#define IDCUNDEFINED -1

// positions for info display which includes:
#define PLAYERNAMELABEL_X   0.02 // player name
#define PLAYERCLASSLABEL_X  0.25 // player class
#define PLAYERSLABEL_X      0.45 // number of players
#define TIMERLABEL_X        0.65 // time remaining

#define PLAYERNAMELABEL_Y   0.94	// player name
#define PLAYERCLASSLABEL_Y  0.94	// player class
#define PLAYERSLABEL_Y      0.94	// number of players
#define TIMERLABEL_Y        0.94	// time remaining

// heading/compass display
#define HEADINGLABEL_Y      0.63
#define HEADINGLABEL_X		0.73

class IGUIBack
{
	type = 0;
	idc = 124;
	style = 128;
	text = "";
	colorText[] = 
	{
		0,
		0,
		0,
		0
	};
	font = "RobotoCondensed";
	sizeEx = 0;
	shadow = 0;
	x = 0.1;
	y = 0.1;
	w = 0.1;
	h = 0.1;
	colorbackground[] = 
	{
		"(profilenamespace getvariable ['IGUI_BCG_RGB_R',0])",
		"(profilenamespace getvariable ['IGUI_BCG_RGB_G',1])",
		"(profilenamespace getvariable ['IGUI_BCG_RGB_B',1])",
		"(profilenamespace getvariable ['IGUI_BCG_RGB_A',0.8])"
	};
};

class GUIText {
	type = 0;
	idc = IDCUNDEFINED;
	style = 0;		//GUILEFT
	colorText[] = {0.75,0.75,0.75,1};
	colorBackground[] = {0,0,0,0};
	font = DEFAULTFONT;
	sizeEx = 0.025;
	w = 0.275;
	h = 0.04;
	text = "";
};

class GUILargeText : GUIText  {   	sizeEx = 0.029; 	w = 0.275;  	h = 0.1;    };
class GUIHugeText : GUIText   {   	sizeEx = 0.05;  	w = 0.55;   	h = 0.08;   };

class BackgroundWindow : GuiText {
	colorBackground[] = {0.1,0.1,0.1,1.0};
	text = "";
	x = 0.325;
	y = 0.075;
	w = 0.4;
	h = 0.85;
};



class RscFrame {
  type = CT_STATIC;
  idc = -1;
  style = 64;
  shadow = 2;
	colorBackground[] = {0,0,0,0};
	colorText[] = {1,1,1,1};
  font = DEFAULTFONT;
  sizeEx = TextSize_small;
  text = "";
};

class RscSlider {
	type = CT_SLIDER;
	style = 1024;
	w = 0.24;
	h = 0.03;
	color[] = Color_White;
	//colorActive[] = Color_White;
};

class RscText {
	idc = -1;
	x = 0;
	y = 0;
	h = 0.037; //h = 0.02;
	w = 0.5;
	type = 0;
	style = 0;
	shadow = 0;
	colorShadow[] = {0,0,0,0.5};
	font = DEFAULTFONT;
	SizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	text = "";
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,0};
	linespacing = 1;
};

// HIER
class RscEdit
{
	deletable = 0;
	fade = 0;
	access = 0;
	type = 2;
	x = 0;
	y = 0;
	h = 0.04;
	w = 0.2;
	colorBackground[] = 
	{
		0,
		0,
		0,
		0
	};
	colorText[] = 
	{
		0.95,
		0.95,
		0.95,
		1
	};
	colorDisabled[] = 
	{
		1,
		1,
		1,
		0.25
	};
	colorSelection[] = 
	{
		"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.13])",
		"(profilenamespace getvariable ['GUI_BCG_RGB_G',0.54])",
		"(profilenamespace getvariable ['GUI_BCG_RGB_B',0.21])",
		1
	};
	autocomplete = "";
	text = "";
	size = 0.2;
	style = "0x00 + 0x40";
	font = "RobotoCondensed";
	shadow = 2;
	sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	canModify = 1;
	tooltipColorText[] = 
	{
		1,
		1,
		1,
		1
	};
	tooltipColorBox[] = 
	{
		1,
		1,
		1,
		1
	};
	tooltipColorShade[] = 
	{
		0,
		0,
		0,
		0.65
	};
};

 // DA

class RscTextSmall: RscText {
	h = 0.03;
	sizeEx = TextSize_small;
};

class RscText_Header: RscText {
	w = 0.35; h = 0.1;
	shadow = 1;
	font = DEFAULTFONT;
	colorShadow[] = {0, 0, 0, 0.5};
	colorBackground[] = {1, 1, 1, 0};
	sizeEx = 0.055;
	colorText[] = Color_MainCapt;
};

class RscLine : RscText {
	idc = -1;
	style = 176;
	x = 0.17;
	y = 0.48;
	w = 0.66;
	h = 0;
	text = "";
	colorBackground[] = {0, 0, 0, 0};
	colorText[] = {1, 1, 1, 1.0};
};

class RscTitle : RscText {
	style = 0;
	sizeEx = "(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	colorText[] = {0.95, 0.95, 0.95, 1};
};

class RscStdText {
	type=0;
	idc=-1;
	style=2; 
	colorBackground[]={0,0,0,0}; 
	colorText[]={1,1,1,1};       
	font=DEFAULTFONT;
	size=1;
};

class RscPicture {
    access=0;
    type=CT_STATIC;
    idc=-1;
    style=ST_PICTURE;
    colorBackground[]={0,0,0,0};
    colorText[]={1,1,1,1};
    font=DEFAULTFONT;
	sizeEx = 0.023;
	x = 0.0; y = 0.2;
	w = 0.2; h = 0.2;
    lineSpacing=0;
    text="";
};

class RscActiveText {
	idc = -1;
	access = ReadAndWrite;
	type = CT_ACTIVETEXT;
	style = ST_CENTER;
	h = 0.05;
	w = 0.15;
	font = DEFAULTFONT;
	sizeEx = TextSize_IGUI_normal;
	color[] = Color_Black;
	colorActive[] = {0.3, 0.4, 0, 1};
	soundEnter[] = {"", 0.1, 1};
	soundPush[] = {"", 0.1, 1};
	soundClick[] = {"", 0.1, 1};
	soundEscape[] = {"", 0.1, 1};
	text = "";
	default = 0;
};

class RscStructuredText {
	idc = -1;
    deletable = 0;
	type = CT_STRUCTURED_TEXT;
	style = ST_LEFT;
	colorBackground[] = {1,1,1,1};
	x = 0; y = 0;
	w = 0.3;
	h = 0.035; //h = 0.1;	
	text = "";
	//size = TextSize_IGUI_normal;
    size = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	colorText[] = Color_Black;
	class Attributes {
		font = DEFAULTFONT;
		color = "#FFFFFF";
		align = "left";
		valign = "middle";
		shadow = true;
		shadowColor = "#000000";
	};
};

class RscListBox {
	style = 16;
	idc = -1;
	type = 5;
	w = 0.275;
	h = 0.04;
	font = DEFAULTFONT;
	colorSelect[] = {1, 1, 1, 1};
	colorText[] = {1, 1, 1, 1};
	colorBackground[] = {0.28,0.28,0.28,0.5};
	colorSelect2[] = {0, 0, 0, 1};
	colorSelectBackground[] = {0.5, 0.5, 0.5, 1};
	//colorSelectBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
	colorSelectBackground2[] = {1, 1, 1, 0.5};
	colorScrollbar[] = {0.2, 0.2, 0.2, 1};
	arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
	arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
	wholeHeight = 0.45;
	rowHeight = 0.04;
	color[] = {0.7, 0.7, 0.7, 1};
	colorActive[] = {0,0,0,1};
	colorDisabled[] = {0,0,0,0.3};
	sizeEx = 0.023;
	soundSelect[] = {"",0.1,1};
	soundExpand[] = {"",0.1,1};
	soundCollapse[] = {"",0.1,1};
	soundEnter[] = {"",0.1,1};
	soundPush[] = {"",0.1,1};
	soundClick[] = {"",0.1,1};
	soundEscape[] = {"",0.1,1};
	maxHistoryDelay = 1;
	autoScrollSpeed = -1;
	autoScrollDelay = 5;
	autoScrollRewind = 0;
	period = 1;
	
    class ListScrollBar {
        color[] = {1,1,1,1};
        autoScrollEnabled = 1;
	};
	class ScrollBar {
		color[] = {1, 1, 1, 0.6};
		colorActive[] = {1, 1, 1, 1};
		colorDisabled[] = {1, 1, 1, 0.3};
		thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
		arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
		arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
		border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
	};
};
class RscListBox_OPT {
	style = 16;
	idc = -1;
	type = 5;
	w = 0.4;
	h = 0.4;
	font = DEFAULTFONT;
	colorSelect[] = {0, 0, 0, 1};
	colorText[] = {1, 1, 1, 1};
	colorBackground[] = {0,0,0,0.3};
	colorSelect2[] = {0, 0, 0, 1};
	colorSelectBackground[] = {0.95, 0.95, 0.95, 1};
	//colorSelectBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
	colorSelectBackground2[] = {1, 1, 1, 0.5};
	colorScrollbar[] = Color_Scrollbar;
	arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
	arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
	wholeHeight = 0.45;
	rowHeight = 0.07;
	color[] = {0.7, 0.7, 0.7, 1};
	colorActive[] = {0,0,0,1};
	colorDisabled[] = {0,0,0,0.3};
    colorPicture[] = {1,1,1,0.9};
    colorPictureSelected[] = {1,1,1,1};
    colorPictudeDisabled[] = {1,1,1,0.25};
    tooltipColorText[] = {1,1,1,1};
    tooltipColorBox[] = {1,1,1,1};
    tooltipColorShade[] = {1,1,1,0.65};
	sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	soundSelect[] = {"\A3\ui_f\data\sound\RscListbox\soundSelect",0.1,1};
	soundExpand[] = {"",0.1,1};
	soundCollapse[] = {"",0.1,1};
	maxHistoryDelay = 1;
	autoScrollSpeed = -1;
	autoScrollDelay = 5;
	autoScrollRewind = 0;
	period = 1.2;
	
    class ListScrollBar {
        color[] = Color_Scrollbar;
        autoScrollEnabled = 1;
	};
	class ScrollBar {
		color[] = Color_Scrollbar;
		colorActive[] = {1, 1, 1, 1};
		colorDisabled[] = {1, 1, 1, 0.3};
		thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
		arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
		arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
		border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
	};
};

class UIComboBox : RscListBox {
	type = UICOMBO;
	style = 0;
	idc = -1;
	sizeEx = 0.025;
	wholeHeight = 0.3;
	class ComboScrollBar : ScrollBar {
	  color[] = Color_Scrollbar;
	  colorActive[] = {1,1,1,1};
	  colorDisabled[] = {1,1,1,0.3};
	  thumb = "#(argb,8,8,3)color(1,1,1,1)";
	  arrowEmpty = "#(argb,8,8,3)color(1,1,1,1)";
	  arrowFull = "#(argb,8,8,3)color(1,1,1,1)";
	  border = "#(argb,8,8,3)color(1,1,1,1)";
	  shadow = 0;
	};
};

class RscCombo {
access = 0;
 type = CT_COMBO;
 style = ST_LEFT;
 h = 0.05;
 wholeHeight = 0.25;
 colorSelect[] = {0.6,0.6,0.6,1};
 colorText[] = {1,1,1,1};
 colorBackground[] = {0.2,0.2,0.2,1};
 colorScrollbar[] = {1,1,1,1};
 font = "TahomaB";
 sizeEx = 0.04;
 soundSelect[] = {"",0.1,1};
 soundExpand[] = {"",0.1,1};
 soundCollapse[] = {"",0.1,1};
 maxHistoryDelay = 1.0;
 shadow = 0;
 colorDisabled[] = {1,1,1,0.5}; // Disabled text color
 arrowEmpty = "\A3\ui_f\data\GUI\RscCommon\rsccombo\arrow_combo_ca.paa"; // Expand arrow
 arrowFull = "\A3\ui_f\data\GUI\RscCommon\rsccombo\arrow_combo_active_ca.paa"; // Collapse arrow

 class ScrollBar;
 class ComboScrollBar : ScrollBar
	 {
	  color[] = {1,1,1,0.6};
	  colorActive[] = {1,1,1,1};
	  colorDisabled[] = {1,1,1,0.3};
	  thumb = "#(argb,8,8,3)color(1,1,1,1)";
	  arrowEmpty = "#(argb,8,8,3)color(1,1,1,1)";
	  arrowFull = "#(argb,8,8,3)color(1,1,1,1)";
	  border = "#(argb,8,8,3)color(1,1,1,1)";
	  shadow = 0;
	 };
};

class RscButton {
	access = ReadAndWrite;
	type = CT_BUTTON;
	style = ST_LEFT;
	x = 0; y = 0;
	w = 0.3; h = 0.1;
	text = "";
	font = DEFAULTFONT;
	sizeEx = 0.024;
	colorText[] = {0.9, 0.9, 0.9, 1};
	colorDisabled[] = {0.4, 0.4, 0.4, 1};
	//colorBackground[] = {0.6, 0.6, 0.2, 0.5};
	//colorBackgroundActive[] = {0.6, 0.6, 0.1, 1};
	//colorBackgroundDisabled[] = {0.58, 0.1147, 0.1108, 1};
	colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.7};
	colorBackgroundActive[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 1};
	colorBackgroundDisabled[] = {0.95, 0.95, 0.95, 1};
	textureNoShortcut = "#(argb,8,8,3)color(0,0,0,0)";
	offsetX = 0.003;
	offsetY = 0.003;
	offsetPressedX = 0.002;
	offsetPressedY = 0.002;
	colorFocused[] = {0.2, 0.2, 0, 1};
	colorShadow[] = {0.023529, 0, 0.0313725, 1};
	colorBorder[] = {0.023529, 0, 0.0313725, 1};
	borderSize = 0.003; // when negative, the border is on the right side of background
	soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1};
    soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1};
    soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1};
    soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1};
};
class RscButton_OPT {
	access = ReadAndWrite;
	type = CT_BUTTON;
	style = ST_LEFT;
	x = 0; y = 0;
	w = 0.095589; h = 0.039216;
	text = "";
	font = DEFAULTFONT;
	sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	colorText[] = {0.9, 0.9, 0.9, 1};
	colorDisabled[] = {0.4, 0.4, 0.4, 1};
	//colorBackground[] = {0.6, 0.6, 0.2, 0.5};
	//colorBackgroundActive[] = {0.6, 0.6, 0.1, 1};
	//colorBackgroundDisabled[] = {0.58, 0.1147, 0.1108, 1};
	colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.7};
	colorBackgroundActive[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 1};
	colorBackgroundDisabled[] = {0.95, 0.95, 0.95, 1};
	textureNoShortcut = "#(argb,8,8,3)color(0,0,0,0)";
	offsetX = 0.003;
	offsetY = 0.003;
	offsetPressedX = 0.002;
	offsetPressedY = 0.002;
	colorFocused[] = {0.2, 0.2, 0, 1};
	colorShadow[] = {0.023529, 0, 0.0313725, 1};
	colorBorder[] = {0.023529, 0, 0.0313725, 1};
	borderSize = 0.003; // when negative, the border is on the right side of background
    soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1};
    soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1};
    soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1};
    soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1};
};

class RscShortcutButton {
	type = 16;
	idc = -1;
	style = 0;
	default = 0;
	w = 0.183825;
	h = 0.104575;
	color[] = {0.95, 0.95, 0.95, 1};
	color2[] = {1, 1, 1, 0.4};
	colorBackground[] = {0.8, 0.8, 0.8, 0.9};
	colorbackground2[] = {1, 1, 1, 0.4};
	colorDisabled[] = {1, 1, 1, 0.25};
	colorFocused[] = { 1, 1, 1, 1 };
	colorBackgroundFocused[] = { 1, 1, 1, 0 };
	textureNoShortcut = "#(argb,8,8,3)color(0,0,0,0)";
	soundEnter[] = {"",0.1,1};
	soundPush[] = {"",0.1,1};
	soundClick[] = {"",0.1,1};
	soundEscape[] = {"",0.1,1};
	periodFocus = 1.2;
	periodOver = 0.8;
	class HitZone {
		left = 0.004;
		top = 0.029;
		right = 0.004;
		bottom = 0.029;
	};
	class ShortcutPos {
		left = 0.004;
		top = 0.026;
		w = 0.0392157;
		h = 0.0522876;
	};
	class TextPos {
		left = 0.05;
		top = 0.034;
		right = 0.005;
		bottom = 0.005;
	};
	animTextureDefault = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\normal_ca.paa";
	animTextureNormal = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\normal_ca.paa";
	animTextureDisabled = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\normal_ca.paa";
	animTextureOver = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\over_ca.paa";
	animTextureFocused = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\focus_ca.paa";
	animTexturePressed = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\down_ca.paa";
	period = 0.4;
	font = DEFAULTFONT;
	size = 0.03521;
	sizeEx = 0.03521;
	text = "";
	action = "";	
	class Attributes {
		font = DEFAULTFONT;
		color = "#E5E5E5";
		align = "left";
		shadow = "true";
	};
	class AttributesImage {
		font = DEFAULTFONT;
		color = "#E5E5E5";
		align = "left";
	};
};

class RscIGUIShortcutButton : RscShortcutButton {
	w = 0.13;
	h = 0.045;
	style = 2;
	color[] = {0.95, 0.95, 0.95, 1};
	color2[] = {1, 1, 1, 0.85};
	colorBackground[] = {0.8, 0.8, 0.8, 0.9};
	colorbackground2[] = {1, 1, 1, 0.4};
	colorDisabled[] = {1, 1, 1, 0.4};
	colorFocused[] = {0,0,0,1};
	class HitZone {
		left = 0.002;
		top = 0.003;
		right = 0.002;
		bottom = 0.016;
	};
	class ShortcutPos {
		left = -0.006;
		top = -0.007;
		w = 0.0392157;
		h = 0.0522876;
	};
	class TextPos {
		left = "0.25 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
		top = "(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) - 		(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)) / 2";
		right = 0.005;
		bottom = 0.0;
	};
	animTextureDefault = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\normal_ca.paa";
	animTextureNormal = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\normal_ca.paa";
	animTextureDisabled = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\normal_ca.paa";
	animTextureOver = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\over_ca.paa";
	animTextureFocused = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\focus_ca.paa";
	animTexturePressed = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\down_ca.paa";
	class Attributes {
		font = DEFAULTFONT;
		color = "#E5E5E5";
		align = "center";
		shadow = "true";
	};
};

class RscControlsGroup {
  type = CT_CONTROLS_GROUP;
  idc = -1;
  style = 0;
  x = 0; y = 0;
  w = 1; h = 1;
  class VScrollbar {
    color[] = Color_Black;
    width = 0.021;
    autoScrollSpeed = -1;
    autoScrollDelay = 5;
    autoScrollRewind = false;	    
  };
  class HScrollbar {
    color[] = Color_Black;
    height = 0.028;
    autoScrollSpeed = -1;
    autoScrollDelay = 5;
    autoScrollRewind = false;	    
  };
  class Controls {};
};

class CA_Mainback: RscPicture {
	x = 0.0;
	y = 0.0;
	w = 1.15;
	h = 0.9;
	text = "#(argb,8,8,3)color(0.2,0.2,0.3,0.4)";
	colorBackground[] = {0, 0, 0, 0.7};
	colorText[] = {"(profilenamespace getvariable ['IGUI_TEXT_RGB_R',0])","(profilenamespace getvariable ['IGUI_TEXT_RGB_G',1])","(profilenamespace getvariable ['IGUI_TEXT_RGB_B',1])","(profilenamespace getvariable ['IGUI_TEXT_RGB_A',0.8])"};
};
class CA_Back: CA_Mainback {
	x = 0.29;
	y = 0.38;
	w = 0.56;
	h = 0.57;
	colorText[] = {"(profilenamespace getvariable ['IGUI_TEXT_RGB_R',0])","(profilenamespace getvariable ['IGUI_TEXT_RGB_G',1])","(profilenamespace getvariable ['IGUI_TEXT_RGB_B',1])","(profilenamespace getvariable ['IGUI_TEXT_RGB_A',0.8])"};
	text = "#(argb,8,8,3)color(0,0,0,0.5)";
};
class CA_Title_Back: CA_Mainback {
	x = 0; y = 0;
	w = 1.15; h = 0.1;
	colorBackground[] = {0.5,1,1,0.8};
	text = "#(argb,8,8,3)color(0,0,0,0.5)";
	colorText[] = {"(profilenamespace getvariable ['IGUI_TEXT_RGB_R',0])","(profilenamespace getvariable ['IGUI_TEXT_RGB_G',1])","(profilenamespace getvariable ['IGUI_TEXT_RGB_B',1])","(profilenamespace getvariable ['IGUI_TEXT_RGB_A',0.8])"};
};
class CA_Black_Back: CA_Mainback {
	x = "SafeZoneX - SafeZoneW";
	y = "SafeZoneY - SafeZoneH";
	w = "SafeZoneW * 4";
	h = "SafeZoneH * 4";
	text = "#(argb,8,8,3)color(0,0,0,1)";
	colorText[] = {0,0,0,1};
	color[] = {0,0,0,1};
	colorBackground[] = {0,0,0,1};
};

class RscMapControl {
	idc = -1;
	type=101;
	style=48;
	x = 0;
	y = 0;
	w = 1;
	h = 1;	
	colorBackground[] = {1, 1, 1, 1};
	colorText[] = {0, 0, 0, 1};
	colorSea[] = {0.56, 0.8, 0.98, 0.5};
	colorForest[] = {0.6, 0.8, 0.2, 0.5};
	colorRocks[] = {0.5, 0.5, 0.5, 0.5};
	colorCountlines[] = {0.65, 0.45, 0.27, 0.5};
	colorMainCountlines[] = {0.65, 0.45, 0.27, 1};
	colorCountlinesWater[] = {0, 0.53, 1, 0.5};
	colorMainCountlinesWater[] = {0, 0.53, 1, 1};
	colorForestBorder[] = {0.4, 0.8, 0, 1};
	colorRocksBorder[] = {0.5, 0.5, 0.5, 1};
	colorPowerLines[] = {0, 0, 0, 1};
	colorNames[] = {0, 0, 0, 1};
	colorInactive[] = {1, 1, 1, 0.5};
	colorLevels[] = {0, 0, 0, 1};
	colorRailWay[] = {0, 0, 0, 1};
	colorOutside[] = {0, 0, 0, 1};
	colorTracks[] = {0.84,0.76,0.65,0.15};
	colorTracksFill[] = {0.84,0.76,0.65,1.0};
	colorRoads[] = {0.7,0.7,0.7,1.0};
	colorRoadsFill[] = {1.0,1.0,1.0,1.0};
	colorMainRoads[] = {0.9,0.5,0.3,1.0};
	colorMainRoadsFill[] = {1.0,0.6,0.4,1.0};
	colorGrid[] = {0.1,0.1,0.1,0.6};
	colorGridMap[] = {0.1,0.1,0.1,0.6};
	font = DEFAULTFONT;
	sizeEx = 0.04;
	scaleMin = 0.001;
	scaleMax = 1.0;
	stickX[] = {0.2, {"Gamma", 1, 1.5}};
	stickY[] = {0.2, {"Gamma", 1, 1.5}};
	ptsPerSquareSea = 6;
	ptsPerSquareTxt = 8;
	ptsPerSquareCLn = 8;
	ptsPerSquareExp = 8;
	ptsPerSquareCost = 8;
	ptsPerSquareFor = "4.0f";
	ptsPerSquareForEdge = "10.0f";
	ptsPerSquareRoad = 2;
	ptsPerSquareObj = 10;
	fontLabel = DEFAULTFONT;
	sizeExLabel = 0.034;
	fontGrid = DEFAULTFONT;
	sizeExGrid = 0.034;
	fontUnits = DEFAULTFONT;
	sizeExUnits = 0.034;
	fontNames = DEFAULTFONT;
	sizeExNames = 0.056;
	fontInfo = DEFAULTFONT;
	sizeExInfo = 0.034;
	fontLevel = DEFAULTFONT;
	sizeExLevel = 0.034;
	maxSatelliteAlpha = 0;
	alphaFadeStartScale = 1.0; 
	alphaFadeEndScale = 1.1;
	showCountourInterval=2;
	scaleDefault = 0.1;
	onMouseButtonClick = "";
	onMouseButtonDblClick = "";
	text = "#(argb,8,8,3)color(1,1,1,1)";
	default = false;
	class Legend {
		x = "SafeZoneX + 					(			((safezoneW / safezoneH) min 1.2) / 40)";
		y = "SafeZoneY + safezoneH - 4.5 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
		w = "10 * 					(			((safezoneW / safezoneH) min 1.2) / 40)";
		h = "3.5 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
		font = DEFAULTFONT;
		sizeEx = "(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
		colorBackground[] = {1,1,1,0.5};
		color[] = {0,0,0,1};
	};
	class Task {
		icon = "\A3\ui_f\data\map\mapcontrol\taskIcon_CA.paa";
		iconCreated = "\A3\ui_f\data\map\mapcontrol\taskIconCreated_CA.paa";
		iconCanceled = "\A3\ui_f\data\map\mapcontrol\taskIconCanceled_CA.paa";
		iconDone = "\A3\ui_f\data\map\mapcontrol\taskIconDone_CA.paa";
		iconFailed = "\A3\ui_f\data\map\mapcontrol\taskIconFailed_CA.paa";
		color[] = {0.863,0.584,0,1};
		colorCreated[] = {1,1,1,1};
		colorCanceled[] = {0.7,0.7,0.7,1};
		colorDone[] = {0.7,1,0.3,1};
		colorFailed[] = {1,0.3,0.2,1};
		size = 27;
		importance = 1;
		coefMin = 1;
		coefMax = 1;
	};
	class Waypoint {
		icon = "\A3\ui_f\data\map\mapcontrol\waypoint_ca.paa";
		size = 24;
		importance = 1;
		coefMin = 1;
		coefMax = 1;
		color[] = {0,0,0,1};
	};
	class WaypointCompleted {
		icon = "\A3\ui_f\data\map\mapcontrol\waypointCompleted_ca.paa";
		size = 24;
		importance = 1;
		coefMin = 1;
		coefMax = 1;
		color[] = {0,0,0,1};
	};
	class CustomMark {
		icon = "\A3\ui_f\data\map\mapcontrol\custommark_ca.paa";
		size = 24;
		importance = 1;
		coefMin = 1;
		coefMax = 1;
		color[] = {0,0,0,1};
	};
	class Command {
		icon = "\A3\ui_f\data\map\mapcontrol\waypoint_ca.paa";
		size = 18;
		importance = 1;
		coefMin = 1;
		coefMax = 1;
		color[] = {1,1,1,1};
	};
	class Bush {
		icon = "\A3\ui_f\data\map\mapcontrol\bush_ca.paa";
		color[] = {0.45,0.64,0.33,0.4};
		size = "14/2";
		importance = "0.2 * 14 * 0.05 * 0.05";
		coefMin = 0.25;
		coefMax = 4;
	};
	class Rock {
		icon = "\A3\ui_f\data\map\mapcontrol\rock_ca.paa";
		color[] = {0.1,0.1,0.1,0.8};
		size = 12;
		importance = "0.5 * 12 * 0.05";
		coefMin = 0.25;
		coefMax = 4;
	};
	class SmallTree {
		icon = "\A3\ui_f\data\map\mapcontrol\bush_ca.paa";
		color[] = {0.45,0.64,0.33,0.4};
		size = 12;
		importance = "0.6 * 12 * 0.05";
		coefMin = 0.25;
		coefMax = 4;
	};
	class Tree {
		icon = "\A3\ui_f\data\map\mapcontrol\bush_ca.paa";
		color[] = {0.45,0.64,0.33,0.4};
		size = 12;
		importance = "0.9 * 16 * 0.05";
		coefMin = 0.25;
		coefMax = 4;
	};
	class busstop {
		icon = "\A3\ui_f\data\map\mapcontrol\busstop_CA.paa";
		size = 24;
		importance = 1;
		coefMin = 0.85;
		coefMax = 1.0;
		color[] = {1,1,1,1};
	};
	class fuelstation {
		icon = "\A3\ui_f\data\map\mapcontrol\fuelstation_CA.paa";
		size = 24;
		importance = 1;
		coefMin = 0.85;
		coefMax = 1.0;
		color[] = {1,1,1,1};
	};
	class hospital {
		icon = "\A3\ui_f\data\map\mapcontrol\hospital_CA.paa";
		size = 24;
		importance = 1;
		coefMin = 0.85;
		coefMax = 1.0;
		color[] = {1,1,1,1};
	};
	class church {
		icon = "\A3\ui_f\data\map\mapcontrol\church_CA.paa";
		size = 24;
		importance = 1;
		coefMin = 0.85;
		coefMax = 1.0;
		color[] = {1,1,1,1};
	};
	class lighthouse {
		icon = "\A3\ui_f\data\map\mapcontrol\lighthouse_CA.paa";
		size = 24;
		importance = 1;
		coefMin = 0.85;
		coefMax = 1.0;
		color[] = {1,1,1,1};
	};
	class power {
		icon = "\A3\ui_f\data\map\mapcontrol\power_CA.paa";
		size = 24;
		importance = 1;
		coefMin = 0.85;
		coefMax = 1.0;
		color[] = {1,1,1,1};
	};
	class powersolar {
		icon = "\A3\ui_f\data\map\mapcontrol\powersolar_CA.paa";
		size = 24;
		importance = 1;
		coefMin = 0.85;
		coefMax = 1.0;
		color[] = {1,1,1,1};
	};
	class powerwave {
		icon = "\A3\ui_f\data\map\mapcontrol\powerwave_CA.paa";
		size = 24;
		importance = 1;
		coefMin = 0.85;
		coefMax = 1.0;
		color[] = {1,1,1,1};
	};
	class powerwind {
		icon = "\A3\ui_f\data\map\mapcontrol\powerwind_CA.paa";
		size = 24;
		importance = 1;
		coefMin = 0.85;
		coefMax = 1.0;
		color[] = {1,1,1,1};
	};
	class quay {
		icon = "\A3\ui_f\data\map\mapcontrol\quay_CA.paa";
		size = 24;
		importance = 1;
		coefMin = 0.85;
		coefMax = 1.0;
		color[] = {1,1,1,1};
	};
	class shipwreck {
		icon = "\A3\ui_f\data\map\mapcontrol\shipwreck_CA.paa";
		size = 24;
		importance = 1;
		coefMin = 0.85;
		coefMax = 1.0;
		color[] = {1,1,1,1};
	};
	class transmitter {
		icon = "\A3\ui_f\data\map\mapcontrol\transmitter_CA.paa";
		size = 24;
		importance = 1;
		coefMin = 0.85;
		coefMax = 1.0;
		color[] = {1,1,1,1};
	};
	class watertower {
		icon = "\A3\ui_f\data\map\mapcontrol\watertower_CA.paa";
		size = 24;
		importance = 1;
		coefMin = 0.85;
		coefMax = 1.0;
		color[] = {1,1,1,1};
	};
	class Cross {
		icon = "\A3\ui_f\data\map\mapcontrol\Cross_CA.paa";
		size = 24;
		importance = 1;
		coefMin = 0.85;
		coefMax = 1.0;
		color[] = {0,0,0,1};
	};
	class Chapel {
		icon = "\A3\ui_f\data\map\mapcontrol\Chapel_CA.paa";
		size = 24;
		importance = 1;
		coefMin = 0.85;
		coefMax = 1.0;
		color[] = {0,0,0,1};
	};
	class Bunker {
		icon = "\A3\ui_f\data\map\mapcontrol\bunker_ca.paa";
		size = 14;
		importance = "1.5 * 14 * 0.05";
		coefMin = 0.25;
		coefMax = 4;
		color[] = {0,0,0,1};
	};
	class Fortress {
		icon = "\A3\ui_f\data\map\mapcontrol\bunker_ca.paa";
		size = 16;
		importance = "2 * 16 * 0.05";
		coefMin = 0.25;
		coefMax = 4;
		color[] = {0,0,0,1};
	};
	class Fountain {
		icon = "\A3\ui_f\data\map\mapcontrol\fountain_ca.paa";
		size = 11;
		importance = "1 * 12 * 0.05";
		coefMin = 0.25;
		coefMax = 4;
		color[] = {0,0,0,1};
	};
	class Ruin {
		icon = "\A3\ui_f\data\map\mapcontrol\ruin_ca.paa";
		size = 16;
		importance = "1.2 * 16 * 0.05";
		coefMin = 1;
		coefMax = 4;
		color[] = {0,0,0,1};
	};
	class Stack {
		icon = "\A3\ui_f\data\map\mapcontrol\stack_ca.paa";
		size = 20;
		importance = "2 * 16 * 0.05";
		coefMin = 0.9;
		coefMax = 4;
		color[] = {0,0,0,1};
	};
	class Tourism {
		icon = "\A3\ui_f\data\map\mapcontrol\tourism_ca.paa";
		size = 16;
		importance = "1 * 16 * 0.05";
		coefMin = 0.7;
		coefMax = 4;
		color[] = {0,0,0,1};
	};
	class ViewTower {
		icon = "\A3\ui_f\data\map\mapcontrol\viewtower_ca.paa";
		size = 16;
		importance = "2.5 * 16 * 0.05";
		coefMin = 0.5;
		coefMax = 4;
		color[] = {0,0,0,1};
	};
    class ActiveMarker {
        color[] = {0,0,0,0};
        size = 1;
    };
};

class Dummy_Map {
	idc = -1;
	type=100;
	style=48;
	x = 0;y = 0;w = 1;h = 1;
	colorBackground[] = {0,0,0,0};
	colorText[] = {0,0,0,0};
	colorSea[] = {0,0,0,0};
	colorForest[] = {0,0,0,0};
	colorRocks[] = {0,0,0,0};
	colorCountlines[] = {0,0,0,0};
	colorMainCountlines[] = {0,0,0,0};
	colorCountlinesWater[] = {0,0,0,0};
	colorMainCountlinesWater[] = {0,0,0,0};
	colorForestBorder[] = {0,0,0,0};
	colorRocksBorder[] = {0,0,0,0};
	colorPowerLines[] = {0,0,0,0};
	colorNames[] = {0,0,0,0};
	colorInactive[] = {0,0,0,0};
	colorLevels[] = {0,0,0,0};
	colorRailWay[] = {0,0,0,0};
	colorOutside[] = {0,0,0,0};
	colorTracks[] = {0.84,0.76,0.65,0.15};
	colorTracksFill[] = {0.84,0.76,0.65,1.0};
	colorRoads[] = {0.7,0.7,0.7,1.0};
	colorRoadsFill[] = {1.0,1.0,1.0,1.0};
	colorMainRoads[] = {0.9,0.5,0.3,1.0};
	colorMainRoadsFill[] = {1.0,0.6,0.4,1.0};
	colorGrid[] = {0.1,0.1,0.1,0.6};
	colorGridMap[] = {0.1,0.1,0.1,0.6};
	font = DEFAULTFONT;
	sizeEx = 0.00;
	stickX[] = {0.0,{"Gamma", 1, 1}};
	stickY[] = {0.0,{"Gamma", 1, 1}};
	ptsPerSquareSea = 0;
	ptsPerSquareTxt = 0;
	ptsPerSquareCLn = 0;
	ptsPerSquareExp = 0;
	ptsPerSquareCost = 0;
	ptsPerSquareFor = "0f";
	ptsPerSquareForEdge = "0f";
	ptsPerSquareRoad = 0;
	ptsPerSquareObj = 0;
	fontLabel = DEFAULTFONT;
	sizeExLabel = 0.0;
	fontGrid = DEFAULTFONT;
	sizeExGrid = 0.0;
	fontUnits = DEFAULTFONT;
	sizeExUnits = 0.0;
	fontNames = DEFAULTFONT;
	sizeExNames = 0.0;
	fontInfo = DEFAULTFONT;
	sizeExInfo = 0.0;
	fontLevel = DEFAULTFONT;
	sizeExLevel = 0.0;
    scaleMax = 1;
    scaleMin = 0.125;
	text = "";
	maxSatelliteAlpha = 0;
	alphaFadeStartScale = 1;
	alphaFadeEndScale = 1.0;
	showCountourInterval=1;
	scaleDefault = 2;
    class Task {
		icon = "\a3\ui_f\data\IGUI\Cfg\Actions\clear_empty_ca.paa";
        color[] = {0,0,0,0};
        size = 1;
        importance = 1;
        coefMin = 1;
        coefMax = 1;
        iconCreated = "";
        iconCanceled = "";
        iconDone = "";
        iconFailed = "";
        colorCreated[] = {0,0,0,0};
        colorCanceled[] = {0,0,0,0};
        colorDone[] = {0,0,0,0};
        colorFailed[] = {0,0,0,0};
    };
    class CustomMark {
		icon = "\a3\ui_f\data\IGUI\Cfg\Actions\clear_empty_ca.paa";
        color[] = {0,0,0,0};
        size = 1;
        importance = 1;
        coefMin = 1;
        coefMax = 1;
    };
    class Legend {
        x = "SafeZoneX";
        y = "SafeZoneY";
        w = 0.340000;
        h = 0.152000;
        font = DEFAULTFONT;
        sizeEx = 0.039210;
        colorBackground[] = {0,0,0,0};
        color[] = {0,0,0,0};
    };
    class Bunker {
		icon = "\a3\ui_f\data\IGUI\Cfg\Actions\clear_empty_ca.paa";
        color[] = {0,0,0,0};
        size = 14;
        importance = "1.5 * 14 * 0.05";
        coefMin = 0.250000;
        coefMax = 4;
    };
    class Bush {
		icon = "\a3\ui_f\data\IGUI\Cfg\Actions\clear_empty_ca.paa";
        color[] = {0,0,0,0};
        size = 14;
        importance = "0.2 * 14 * 0.05";
        coefMin = 0.250000;
        coefMax = 4;
    };
	class powersolar {
		icon = "\A3\ui_f\data\map\mapcontrol\powersolar_CA.paa";
		size = 14;
		importance = 1;
		coefMin = 0.250000;
		coefMax = 4;
		color[] = {1,1,1,1};
	};
	class powerwave {
		icon = "\A3\ui_f\data\map\mapcontrol\powerwave_CA.paa";
		size = 14;
		importance = 1;
		coefMin = 0.250000;
		coefMax = 4;
		color[] = {1,1,1,1};
	};
	class powerwind {
		icon = "\A3\ui_f\data\map\mapcontrol\powerwind_CA.paa";
		size = 14;
		importance = 1;
		coefMin = 0.250000;
		coefMax = 4;
		color[] = {1,1,1,1};
	};
	class shipwreck {
		icon = "\A3\ui_f\data\map\mapcontrol\shipwreck_CA.paa";
		size = 14;
		importance = 1;
		coefMin = 0.25;
		coefMax = 4;
		color[] = {1,1,1,1};
	};
    class BusStop {
		icon = "\a3\ui_f\data\IGUI\Cfg\Actions\clear_empty_ca.paa";
        color[] = {0,0,0,0};
        size = 12;
        importance = "1 * 10 * 0.05";
        coefMin = 0.250000;
        coefMax = 4;
    };
    class Command {
		icon = "\a3\ui_f\data\IGUI\Cfg\Actions\clear_empty_ca.paa";
        color[] = {0,0,0,0};
        size = 18;
        importance = 1;
        coefMin = 1;
        coefMax = 1;
    };
    class Cross {
		icon = "\a3\ui_f\data\IGUI\Cfg\Actions\clear_empty_ca.paa";
        size = 16;
        color[] = {0,0,0,0};
        importance = "0.7 * 16 * 0.05";
        coefMin = 0.250000;
        coefMax = 4;
    };
    class Fortress {
		icon = "\a3\ui_f\data\IGUI\Cfg\Actions\clear_empty_ca.paa";
        size = 16;
        color[] = {0,0,0,0};
        importance = "2 * 16 * 0.05";
        coefMin = 0.250000;
        coefMax = 4;
    };
    class Fuelstation {
		icon = "\a3\ui_f\data\IGUI\Cfg\Actions\clear_empty_ca.paa";
        size = 16;
        color[] = {0,0,0,0};
        importance = "2 * 16 * 0.05";
        coefMin = 0.750000;
        coefMax = 4;
    };
    class Fountain {
		icon = "\a3\ui_f\data\IGUI\Cfg\Actions\clear_empty_ca.paa";
        color[] = {0,0,0,0};
        size = 11;
        importance = "1 * 12 * 0.05";
        coefMin = 0.250000;
        coefMax = 4;
    };
    class Hospital {
		icon = "\a3\ui_f\data\IGUI\Cfg\Actions\clear_empty_ca.paa";
        color[] = {0,0,0,0};
        size = 16;
        importance = "2 * 16 * 0.05";
        coefMin = 0.500000;
        coefMax = 4;
    };
    class Chapel {
		icon = "\a3\ui_f\data\IGUI\Cfg\Actions\clear_empty_ca.paa";
        color[] = {0,0,0,0};
        size = 16;
        importance = "1 * 16 * 0.05";
        coefMin = 0.900000;
        coefMax = 4;
    };
    class Church {
 		icon = "\a3\ui_f\data\IGUI\Cfg\Actions\clear_empty_ca.paa";
        size = 16;
        color[] = {0,0,0,0};
        importance = "2 * 16 * 0.05";
        coefMin = 0.900000;
        coefMax = 4;
    };
    class Lighthouse {
		icon = "\a3\ui_f\data\IGUI\Cfg\Actions\clear_empty_ca.paa";
        size = 14;
        color[] = {0,0,0,0};
        importance = "3 * 16 * 0.05";
        coefMin = 0.900000;
        coefMax = 4;
    };
    class Quay {
		icon = "\a3\ui_f\data\IGUI\Cfg\Actions\clear_empty_ca.paa";
        size = 16;
        color[] = {0,0,0,0};
        importance = "2 * 16 * 0.05";
        coefMin = 0.500000;
        coefMax = 4;
    };
    class Rock {
		icon = "\a3\ui_f\data\IGUI\Cfg\Actions\clear_empty_ca.paa";
        color[] = {0,0,0,0};
        size = 12;
        importance = "0.5 * 12 * 0.05";
        coefMin = 0.250000;
        coefMax = 4;
    };
    class Ruin {
		icon = "\a3\ui_f\data\IGUI\Cfg\Actions\clear_empty_ca.paa";
        size = 16;
        color[] = {0,0,0,0};
        importance = "1.2 * 16 * 0.05";
        coefMin = 1;
        coefMax = 4;
    };
    class SmallTree {
		icon = "\a3\ui_f\data\IGUI\Cfg\Actions\clear_empty_ca.paa";
        color[] = {0,0,0,0};
        size = 12;
        importance = "0.6 * 12 * 0.05";
        coefMin = 0.250000;
        coefMax = 4;
    };
    class Stack {
		icon = "\a3\ui_f\data\IGUI\Cfg\Actions\clear_empty_ca.paa";
        size = 20;
        color[] = {0,0,0,0};
        importance = "2 * 16 * 0.05";
        coefMin = 0.900000;
        coefMax = 4;
    };
    class Tree {
		icon = "\a3\ui_f\data\IGUI\Cfg\Actions\clear_empty_ca.paa";
        color[] = {0,0,0,0};
        size = 12;
        importance = "0.9 * 16 * 0.05";
        coefMin = 0.250000;
        coefMax = 4;
    };
    class Tourism {
		icon = "\a3\ui_f\data\IGUI\Cfg\Actions\clear_empty_ca.paa";
        color[] = {0,0,0,0};
        size = 16;
        importance = "1 * 16 * 0.05";
        coefMin = 0.700000;
        coefMax = 4;
    };
    class Transmitter {
		icon = "\a3\ui_f\data\IGUI\Cfg\Actions\clear_empty_ca.paa";
        color[] = {0,0,0,0};
        size = 20;
        importance = "2 * 16 * 0.05";
        coefMin = 0.900000;
        coefMax = 4;
    };
    class ViewTower {
		icon = "\a3\ui_f\data\IGUI\Cfg\Actions\clear_empty_ca.paa";
        color[] = {0,0,0,0};
        size = 16;
        importance = "2.5 * 16 * 0.05";
        coefMin = 0.500000;
        coefMax = 4;
    };
    class Watertower {
		icon = "\a3\ui_f\data\IGUI\Cfg\Actions\clear_empty_ca.paa";
        color[] = {0,0,0,0};
        size = 20;
        importance = "1.2 * 16 * 0.05";
        coefMin = 0.900000;
        coefMax = 4;
    };
    class Waypoint {
		icon = "\a3\ui_f\data\IGUI\Cfg\Actions\clear_empty_ca.paa";
        color[] = {0,0,0,0};
        size = 16;
        importance = "2.5 * 16 * 0.05";
        coefMin = 0.500000;
        coefMax = 4;
    };
    class WaypointCompleted {
		icon = "\a3\ui_f\data\IGUI\Cfg\Actions\clear_empty_ca.paa";
        color[] = {0,0,0,0};
        size = 16;
        importance = "2.5 * 16 * 0.05";
        coefMin = 0.500000;
        coefMax = 4;
    };
    class ActiveMarker {
        color[] = {0,0,0,0};
        size = 1;
    };
};





// -----------------------------------------------------------------------------------------
// ------------ ! Standard Defintions for Backgrounds and Buttons ! ------------------------



// standard background, dark grey and header, black and header text (must be defined in the expected dialog
class psy_BackGround : CA_Mainback {
	x = -0.04; y = 0;
	w = 1.15; h = 0.9;
};
class psy_BackGround_Header : CA_Title_Back {
	x = -0.04; y = 0;
	w = 1.15; h = 0.1;
};
class psy_MainCaption_Header : RscText_Header {
	x = 0.00; y = 0.01;
	text = "define text header";
};
// x cross picture and red button for exit at right top corner
class psy_exit_cross_picture : RscPicture {
	sizeEx = 0.01;
	x = 1.062; y = 0.015;
	w = 0.03; h = 0.03;
	text = "\a3\ui_f\data\gui\Rsc\RscDisplayArcadeMap\icon_exit_cross_ca.paa";
};
class psy_exit_cross_button : RscButton {
	idc = -1;
	x = 1.062; y = 0.015;
	w = 0.032; h = 0.032;
	text = "";
	colorBackground[] = {0.9, 0.2, 0.2, 0.3};
	colorBackgroundActive[] = {0.9, 0.2, 0.2, 0.5};
	colorShadow[] = {0.023529, 0, 0.0313725, 0.2};
	colorBorder[] = {0.6, 0.6, 0.6, 0.3};
	borderSize = 0.000;
	action = "closeDialog 0";
	default = false;
};




// same background but smaller
class psy_BackGround_small : CA_Mainback {
	x = 0; y = 0;
	w = 0.7666; h = 0.45;
};
class psy_BackGround_Header_small : CA_Title_Back {
	x = 0; y = 0;
	w = 0.7666; h = 0.05;
};
class psy_MainCaption_Header_small : RscText_Header {
	x = 0.01; y = -0.02;
	sizeEx = 0.05;
	text = "define text header";
};
// xcross for small backgrounds
class psy_exit_cross_picture_small : psy_exit_cross_picture {
	x = 0.725; y = 0.0075;
};
class psy_exit_cross_button_small : psy_exit_cross_button {
	idc = -1;
	x = 0.725; y = 0.0075;
};
