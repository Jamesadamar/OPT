/**
* Gameplay 
*/
#define OPT_MISSION_ACTION_EARPLUG "Ohrenstöpsel"

/** SERVICE PAD **/
#define REPAIR_SYSTEM_USER_INSTRUCTION "Schalten Sie den Motor aus, um auf das Service-Pad Zugriff zu erhalten."
#define REPAIR_SYSTEM_ACTION_REFUEL "<t size=""1.2"">Fahrzeug auftanken</t>"
#define REPAIR_SYSTEM_ACTION_REFUEL_DONE FORMAT_1("Fahrzeug fertig betankt für %1 €",GVARMAIN(refuelCost))
#define REPAIR_SYSTEM_ACTION_REFUEL_ABORT "Vorgang abgebrochen"
#define REPAIR_SYSTEM_ACTION_REFUEL_ONGOING "Fahrzeug wird betankt..."

#define REPAIR_SYSTEM_ACTION_REPAIR "<t size=""1.2"">Fahrzeug reparieren</t>"
#define REPAIR_SYSTEM_ACTION_REPAIR_DONE FORMAT_1("Fahrzeug vollständig repariert für %1 €",GVARMAIN(repairCost))
#define REPAIR_SYSTEM_ACTION_REPAIR_ABORT "Vorgang abgebrochen"
#define REPAIR_SYSTEM_ACTION_REPAIR_ONGOING "Fahrzeug wird repariert..."
