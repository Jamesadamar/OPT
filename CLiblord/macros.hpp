// these 3 components basically decompose the PBO-prefix in it's individual parts
// or at least that's what they should do
// They are being used in loggin and in the naming of global variables, functions, etc.
#define PREFIX cliblord
#define PATH rvn
#define MOD cliblord

// Define version information of this mod
#define MAJOR 1
#define MINOR 0
#define PATCHLVL 0
#define BUILD 0

// Clear any previously set versions properly before overriding the macros
// Normally you don't have the following steps concerning the version-macros
#ifdef VERSION
    #undef VERSION
#endif
#ifdef VERSION_AR
    #undef VERSION_AR
#endif
// define the actual version macros with the info above.
#define VERSION_AR MAJOR,MINOR,PATCHLVL,BUILD
#define VERSION MAJOR.MINOR.PATCHLVL.BUILD

// These are all settings determining the verbosity of logs and other debug-options
// If you are currently working on this mod, you should define the ISDEV macro

// Do not release with this setting enabled!
// #define DEBUGFULL // Enable all debug methods
// #define ISDEV // Enable better logging
// #define ENABLEPERFORMANCECOUNTER // Enable performance counter for function calls
// #define ENABLEFUNCTIONTRACE // Enable SQF based function tracer


// When transmitting the functions from server to client, the code can be transferred over the net
// in a compressed form, to save on network traffic. With this macro enabled, this will not be the case.
// Unless you know what you are doing I recommend disabling compression by leaving this macro defined.
#define DISABLECOMPRESSION

// include the defualt CLib-macros (providing GVAR and similar)
// Found here: https://github.com/TaktiCool/CLib/blob/master/addons/CLib/macros.hpp
#include "\tc\CLib\addons\CLib\macros.hpp"
