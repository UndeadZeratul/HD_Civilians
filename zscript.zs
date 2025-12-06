version "4.8"

#include "zscript/HDCivvies.zs"
#include "zscript/HDFemCivvies.zs"


class Civvie_Spawner : EventHandler{

override void CheckReplacement( ReplaceEvent Civvie ){

  switch ( Civvie.Replacee.GetClassName() ) {

    // Wild spawns: Civilians replace 
    // decorative gore and corpses

    // adding time checks so gib/gore replacements
    // don't happen after mapstart. in cases where
    // rescued civilians spawn them after teleporting
    case 'ColonGibs'  : if(Civvie_EnableWorldSpawns
                           &&level.time<=1
                           &&!random(0,2)
                          )Civvie.Replacement = "CivvieDropper";
						break;
    case 'Gibs'  : 	if(Civvie_EnableWorldSpawns
                     &&level.time<=1
                     &&!random(0,2)
                    )Civvie.Replacement = "CivvieDropper";
					break;
    case 'SmallBloodPool' : if(Civvie_EnableWorldSpawns
                               &&level.time<=1
                               &&!random(0,2)
                              )Civvie.Replacement = "CivvieDropper";
							break;
    case 'DeadRifleman'  :  if(Civvie_EnableWorldSpawns
                               &&!random(0,2)
                              )Civvie.Replacement = "CivvieDropper";
							break;
    case 'ReallyDeadRifleman' : if(Civvie_EnableWorldSpawns
                                   &&!random(0,2)
                                  )Civvie.Replacement = "CivvieDropper";
								break;
    case 'DeadZombieMan'  : if(Civvie_EnableWorldSpawns
                               &&!random(0,2)
                              )Civvie.Replacement = "CivvieDropper";
							break;
    case 'DeadShotgunGuy' : if(Civvie_EnableWorldSpawns
                               &&!random(0,2)
                              )Civvie.Replacement = "CivvieDropper";
							break;
    case 'DeadDoomImp'  :   if(Civvie_EnableWorldSpawns
                               &&!random(0,2)
                              )Civvie.Replacement = "CivvieDropper";
							break;
    case 'DeadDemon'  : if(Civvie_EnableWorldSpawns
                           &&!random(0,2)
                          )Civvie.Replacement = "CivvieDropper";
						break;
    case 'DeadMarine':  if(Civvie_EnableWorldSpawns
                           &&!random(0,2)
                          )Civvie.Replacement = "CivvieDropper";
						break;
    case 'GibbedMarine' : 	if(Civvie_EnableWorldSpawns
                               &&!random(0,2)
                              )Civvie.Replacement = "CivvieDropper";
							break;
      
    // Monster Replacements
        
    // Doom 1 Monsters //
        
    // Zombies
    case 'ZombieMan'  : if(Civvie_Zombieman_SpawnBias>=0
						   &&!random(0,Civvie_Zombieman_SpawnBias)
						  )Civvie.Replacement = "CivvieDropper";
						break;
    case 'ShotgunGuy' : if(Civvie_Shotgunner_SpawnBias>=0
							 &&!random(0,Civvie_Shotgunner_SpawnBias)
						  )Civvie.Replacement = "CivvieDropper";
						break;
    case 'ChaingunGuy'  : 	if(Civvie_Chaingunner_SpawnBias>=0
							   &&!random(0,Civvie_Chaingunner_SpawnBias)
							  )Civvie.Replacement = "CivvieDropper";
							break;
    // Hell Spawn
            
    case 'DoomImp'  : 	if(Civvie_Imp_SpawnBias>=0
						   &&!random(0,Civvie_Imp_SpawnBias)
						  )Civvie.Replacement = "CivvieDropper";
						break;
    case 'Demon'  : if(Civvie_Demon_SpawnBias>=0
					   &&!random(0,Civvie_Demon_SpawnBias)
					  )Civvie.Replacement = "CivvieDropper";
					break;
    case 'Spectre'  : 	if(Civvie_Spectre_SpawnBias>=0
						   &&!random(0,Civvie_Spectre_SpawnBias)
						  )Civvie.Replacement = "CivvieDropper";
						break;
    case 'Cacodemon'  : if(Civvie_Caco_SpawnBias>=0
						   &&!random(0,Civvie_Caco_SpawnBias)
						  )Civvie.Replacement = "CivvieDropper";
						break;
    case 'LostSoul'   : if(Civvie_Skull_SpawnBias>=0
						   &&!random(0,Civvie_Skull_SpawnBias)
						  )Civvie.Replacement = "CivvieDropper";
						break;
    // Bosses

    case 'BaronOfHell'  : 	if(Civvie_Baron_SpawnBias>=0
							   &&!random(0,Civvie_Baron_SpawnBias)
							  )Civvie.Replacement = "CivvieDropper";
							break;
    case 'Cyberdemon' : if(Civvie_Cybie_SpawnBias>=0
							   &&!random(0,Civvie_Cybie_SpawnBias)
							  )Civvie.Replacement = "CivvieDropper";
							break;

    case 'SpiderMastermind' : 	if(Civvie_Spidermind_SpawnBias>=0
							       &&!random(0,Civvie_Spidermind_SpawnBias)
							      )Civvie.Replacement = "CivvieDropper";
								break;            
    // Doom II Monsters //
            
    case 'HellKnight' : if(Civvie_Goat_SpawnBias>=0
						   &&!random(0,Civvie_Goat_SpawnBias)
					      )Civvie.Replacement = "CivvieDropper";
						break;    
    case 'Arachnotron'  : 	if(Civvie_Tron_SpawnBias>=0
							   &&!random(0,Civvie_Tron_SpawnBias)
							  )Civvie.Replacement = "CivvieDropper";
						break;    

    case 'Revenant'  : 	if(Civvie_Bones_SpawnBias>=0
						   &&!random(0,Civvie_Bones_SpawnBias)
						  )Civvie.Replacement = "CivvieDropper";
						break;    
	
    case 'PainElemental'  : if(Civvie_Meatball_SpawnBias>=0
							   &&!random(0,Civvie_Meatball_SpawnBias)
							  )Civvie.Replacement = "CivvieDropper";
							break;    	
    case 'Fatso'  : if(Civvie_Manc_SpawnBias>=0
				       &&!random(0,Civvie_Manc_SpawnBias)
				      )Civvie.Replacement = "CivvieDropper";
					break;    
    case 'Archvile' : 	if(Civvie_Archie_SpawnBias>=0
					       &&!random(0,Civvie_Archie_SpawnBias)
					      )Civvie.Replacement = "CivvieDropper";
						break;    
    case 'WolfensteinSS'  : if(Civvie_Nazi_SpawnBias>=0
							   &&!random(0,Civvie_Nazi_SpawnBias)
							  )Civvie.Replacement = "CivvieDropper";
							break;    
      }
    Civvie.IsFinal = false;
    //always set this to false or else it screws with
    //monster replacements in other addons
    }
}
