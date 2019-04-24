// include the required addons directly from CLib
#include "\tc\CLib\addons\CLib\ModuleMacros.hpp"

// This file is kind of the CLib-correspondant to the standard CfgFunctions - though it got way more features
// concerning both: security and debuggabilty (e.g. full stack-traces).
// Every "module" represents a folder inside this mod and all FNC(someName) correspond
// to a file called fn_someName.sqf in that module-folder
class CfgCLibModules {
	// This is the name of this mod as can be used to refer to it via the Clib-framework
	// casing does not matter (all names are being transformed to lower-cases)
    class LordMarker {
		// Specify the absolute path of the root of all listed modules below
		// this is determined by the used PBO-prefix
        path = "rvn\clibref\addons\clibref";
		
		// list the dependencies of this mod inside the CLib-framework (that is either Clib itself or any
		// mod that builds upon it). Dependencies are always references to modules inside another mod
		// in the form "ModName/ModuleName"
		// All dependencies specified here are simply appended to each module's dependencies.
		// Dependencies in CLib are used to determine which code-fragments need to be sent to the client.
		// If a dependency can not be met, an error message will be written to the respective RPT file.
		// All dependencies are matched case-insensitively
		dependency[] = {};
		
		// the module-names are also case-insensitive
		MODULE(LM) {
			// The dependency-array specifies on which components inside the CLib-framework this particular
			// module is dependent.
			dependency[] = {"CLib/PerFrame", "Clib/Events"};
			// Declares a new function in this module. It is expected to correspond to
			// a file fn_clientInit.sqf inside the folder PFH (as this is the module's name).
			// This is actually a special function as this is an entry point (see at the bottom of this file)
			FNC(clientInit);
		};
    };
};


