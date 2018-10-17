local utils = require("gotylike/utils")

--------------------------
-- Settings
--------------------------

-- Limit all classes to two weapons
ServerSettings.DisabledEquipPoints.add("Light", Loadouts.EquipPoints.Tertiary)
ServerSettings.DisabledEquipPoints.add("Medium", Loadouts.EquipPoints.Tertiary)
ServerSettings.DisabledEquipPoints.add("Heavy", Loadouts.EquipPoints.Tertiary)

-- Custom Classes
ServerSettings.CustomClasses.Enabled = true

classDefs = {
    Pathfinder={
        ootbClass="Light",
        armorClass="Pathfinder",
        weapons={
            "Light Spinfusor",
            "Bolt Launcher",
            "Blinksfusor",
            "Light Twinfusor",
            "Dueling Spinfusor",
            "Light Grenade Launcher",
            "Light Assault Rifle",
            "Shotgun",
            "Holdout Shotgun",
            "Sparrow",
            {class="Medium", name="Long Range Repair Tool"}, -- Dummy tertiary weapon
        },
        beltItems={
            "Impact Nitron",
            "Explosive Nitron",
            "Compact Nitron",
        },
        packs={
            "Thrust Pack",
            "Light Energy Pack",
            "Light Utility Pack",
        },
        skins={
            "Pathfinder",
            "Freerunner",
        },
        properties={
            HealthPool = 800,
            EnergyPool = 100,
            EnergyRechargeRate = 14,
            GroundSpeed = 500,
            AirControlMaxMultiplier = 3.7,
            AirControlMinMultiplier = 1.4,
            VehicleSpeedInheritance = 1,
        },
        armorValueMods={
            -- QuickDraw
            QuickDraw = 0.5,
            BeltThrowSpeedBuff = 0.25,
            AcquisitionTimeByEnemyTurretsBuff = 0.5,
            -- Survivalist
            SurvivalistHealth = 0.3,
            SurvivalistEnergy = 0.2,
            -- Pathfinder Armor Upgrades
            RegenTimeBuff = 0.25,
            EnergyBuff = 10,
            HealthRegenRateBuff = 0.25,
            HealthBuff = 100,
            MassBuff = -0.1,
            -- Egocentric
            Egocentric = 0.35,
            -- Rage
            Rage = true,
            RageEnergyRegen = 0.2,
            RageTime = 15.0,
            RageMassReduction = -0.25,
        }
    },
    Infiltrator={
        ootbClass="Light",
        armorClass="Infiltrator",
        weapons={
            "Stealth Spinfusor",
            "Jackal",
            "Rhino SMG",
            "Arctic Rhino SMG",
            "SN7 Pistol",
            "Arctic SN7 Pistol",
            "Throwing Knives",
            "Shocklance",
            {class="Medium", name="Long Range Repair Tool"}, -- Dummy tertiary weapon
        },
        beltItems={
            "Sticky Grenades",
            "Sticky Grenades XL",
            "Prism Mines",
            "Chaff Grenades",
        },
        packs={
            "Stealth Pack",
        },
        skins={
            "Infiltrator",
            "Mercenary",
            "Assassin",
        },
        properties={
            HealthPool = 800,
            VehicleSpeedInheritance = 1,
        },
        armorValueMods={
            -- QuickDraw
            QuickDraw = 0.5,
            BeltThrowSpeedBuff = 0.25,
            AcquisitionTimeByEnemyTurretsBuff = 0.5,
            -- Survivalist
            SurvivalistHealth = 0.3,
            SurvivalistEnergy = 0.2,
            -- Infiltrator Armor Upgrades
            RegenTimeBuff = 0.25,
            EnergyBuff = 10,
            HealthBuff = 200,
            WalkSpeedBuff = 0.1,
        }
    },
    Sentinel={
        ootbClass="Light",
        armorClass="Sentinel",
        weapons={
            "BXT1",
            "BXT1A",
            "Phase Rifle",
            "SAP20",
            "Falcon",
            "Accurized Shotgun",
            {class="Medium", name="Long Range Repair Tool"}, -- Dummy tertiary weapon
        },
        beltItems={
            "T5 Grenades",
            "Claymore Mines",
            "Motion Mines",
        },
        packs={
            "Light Energy Pack",
        },
        skins={
            "Sentinel",
            "Specter",
        },
        properties={
            HealthPool = 800,
            EnergyPool = 90,
            VehicleSpeedInheritance = 1,
        },
        armorValueMods={
            -- QuickDraw
            QuickDraw = 0.5,
            BeltThrowSpeedBuff = 0.25,
            AcquisitionTimeByEnemyTurretsBuff = 0.5,
            -- Survivalist
            SurvivalistHealth = 0.3,
            SurvivalistEnergy = 0.2,
            -- Sentinel Armor Upgrades
            RegenTimeBuff = 0.25,
            WalkSpeedBuff = 0.1,
            HealthRegenRateBuff = 0.25,
            HealthBuff = 100,
            EnergyBuff = 10,
        }
    },
    Soldier={
        ootbClass="Medium",
        armorClass="Soldier",
        weapons={
            "Spinfusor",
            "Twinfusor",
            "Honorfusor",
            "Assault Rifle",
            "Gast Rifle",
            "Spare Spinfusor",
            "Thumper D",
            "Thumper DX",
            "Eagle",
            "Nova Blaster",
            {class="Medium", name="Long Range Repair Tool"}, -- Dummy tertiary weapon
        },
        beltItems={
            "Frag Grenades XL",
            "Short-Fuse Frag Grenades",
            "AP Grenades",
            "Proximity Grenades",
        },
        packs={
            "Energy Pack",
            "Utility Pack",
        },
        skins={
            "Soldier",
            "Synthrall",
        },
        properties={
            HealthPool = 1200,
            Mass = 100,
            VehicleSpeedInheritance = 1,
        },
        armorValueMods={
            -- QuickDraw
            QuickDraw = 0.5,
            BeltThrowSpeedBuff = 0.25,
            AcquisitionTimeByEnemyTurretsBuff = 0.5,
            -- Survivalist
            SurvivalistHealth = 0.2,
            SurvivalistEnergy = 0.2,
            -- Soldier Armor Upgrades
            RegenTimeBuff = 0.25,
            HealthBuff = 100,
            HealthRegenRateBuff = 0.25,
            EnergyBuff = 5,
        }
    },
    Raider={
        ootbClass="Medium",
        armorClass="Raider",
        weapons={
            "Arx Buster",
            "Dust Devil",
            "Grenade Launcher",
            "Plasma Gun",
            "NJ4 SMG",
            "Desert NJ4 SMG",
            "NJ5 SMG",
            {class="Medium", name="Long Range Repair Tool"}, -- Dummy tertiary weapon
        },
        beltItems={
            "EMP Grenade",
            "EMP XL Grenade",
            "Blackout Grenade",
            "Cluster Grenade",
        },
        packs={
            "Shield Pack",
            "Jammer Pack",
        },
        skins={
            "Raider",
            "Mercenary",
            "Griever",
        },
        properties={
            HealthPool = 1200,
            VehicleSpeedInheritance = 1,
        },
        armorValueMods={
            -- QuickDraw
            QuickDraw = 0.5,
            BeltThrowSpeedBuff = 0.25,
            AcquisitionTimeByEnemyTurretsBuff = 0.5,
            -- Survivalist
            SurvivalistHealth = 0.2,
            SurvivalistEnergy = 0.2,
            -- Raider Armor Upgrades
            RegenTimeBuff = 0.25,
            HealthBuff = 100,
            HealthRegenRateBuff = 0.25,
            EnergyBuff = 10,
        }
    },
    Technician={
        ootbClass="Medium",
        armorClass="Technician",
        weapons={
            "Thumper",
            "TCN4",
            "TCN4 Rockwind",
            "Flak Cannon",
            "Improved Repair Tool",
            "Sawed Off Shotgun",
            {class="Medium", name="Long Range Repair Tool"}, -- Dummy tertiary weapon
        },
        beltItems={
            "TCNG",
            "TCNG Quickfuse",
            "Motion Sensor",
        },
        packs={
            "Light Turret",
            "EXR Turret",
        },
        skins={
            "Technician",
            "Specialist",
        },
        properties={
            HealthPool = 1200,
            VehicleSpeedInheritance = 1,
        },
        armorValueMods={
            -- QuickDraw
            QuickDraw = 0.5,
            BeltThrowSpeedBuff = 0.25,
            AcquisitionTimeByEnemyTurretsBuff = 0.5,
            -- Survivalist
            SurvivalistHealth = 0.2,
            SurvivalistEnergy = 0.2,
            -- Technician Armor Upgrades
            RegenTimeBuff = 0.25,
            HealthBuff = 100,
            HealthRegenRateBuff = 0.25,
            EnergyBuff = 10,
            -- Vehicle Improvements
            VehicleEnergyBuff = 0.25,
        }
    },
    Juggernaught={
        ootbClass="Heavy",
        armorClass="Juggernaught",
        weapons={
            "Fusion Mortar",
            "Fusion Mortar Deluxe",
            "MIRV Launcher",
            "Spinfusor MKD",
            "Spinfusor MK-X",
            "Heavy Twinfusor",
            "X1 LMG",
            {class="Medium", name="Long Range Repair Tool"}, -- Dummy tertiary weapon
        },
        beltItems={
            "Heavy AP Grenade",
            "Heavy AP-XL",
            "Spinfusor Disk",
        },
        packs={
            "Regen Pack",
            "Heavy Energy Pack",
        },
        skins={
            "Juggernaut",
            "The Forlorn",
        },
        properties={
            HealthPool = 2400,
            EnergyPool = 80,
            EnergyRechargeRate = 9,
            GroundSpeed = 360,
            Mass = 130,
            AirControlMaxMultiplier = 3.7,
            AirControlMinMultiplier = 0.4,
            VehicleSpeedInheritance = 0.75,
        },
        armorValueMods={
            -- QuickDraw
            QuickDraw = 0.5,
            BeltThrowSpeedBuff = 0.25,
            AcquisitionTimeByEnemyTurretsBuff = 0.5,
            -- Survivalist
            SurvivalistHealth = 0.12,
            SurvivalistEnergy = 0.2,
            -- Juggernaught Armor Upgrades
            HealthBuff = 200,
            RegenTimeBuff = 0.25,
            EnergyBuff = 10,
            HealthRegenRateBuff = 0.25,
            -- Potential Energy
            PotentialEnergy = true,
            -- Super Heavy
            SuperHeavy = true,
        }
    },
    Doombringer={
        ootbClass="Heavy",
        armorClass="Doombringer",
        weapons={
            "Chain Gun",
            "Chain Cannon",
            "Heavy Bolt Launcher",
            "Saber Launcher",
            "Titan Launcher",
            {class="Medium", name="Long Range Repair Tool"}, -- Dummy tertiary weapon
        },
        beltItems={
            "Frag Grenade",
            "Mines",
        },
        packs={
            "Forcefield",
        },
        skins={
            "Doombringer",
            "Executioner",
        },
        properties={
            HealthPool = 2300,
            VehicleSpeedInheritance = 0.75,
        },
        armorValueMods={
            -- QuickDraw
            QuickDraw = 0.5,
            BeltThrowSpeedBuff = 0.25,
            AcquisitionTimeByEnemyTurretsBuff = 0.5,
            -- Survivalist
            SurvivalistHealth = 0.12,
            SurvivalistEnergy = 0.2,
            -- Doombringer Armor Upgrades
            HealthBuff = 200,
            RegenTimeBuff = 0.25,
            EnergyBuff = 10,
            HealthRegenRateBuff = 0.25,
            -- Potential Energy
            PotentialEnergy = true,
            -- Super Heavy
            SuperHeavy = true,
        }
    },
    Brute={
        ootbClass="Heavy",
        armorClass="Brute",
        weapons={
            "Heavy Spinfusor",
            "Devastator Spinfusor",
            "Gladiator",
            "Automatic Shotgun",
            "The Hammer",
            "Nova Colt",
            "Plasma Cannon",
            "Nova Blaster MX",
            "EFG",
            {class="Medium", name="Long Range Repair Tool"}, -- Dummy tertiary weapon
        },
        beltItems={
            "Fractal Grenade",
            "Extended Fractal",
            "Light Sticky Grenade",
        },
        packs={
            "Heavy Shield Pack",
            "Heavy Energy Pack",
            "Survival Pack",
        },
        skins={
            "Brute",
            "Crusher",
        },
        properties={
            HealthPool = 2400,
            VehicleSpeedInheritance = 0.75,
        },
        armorValueMods={
            -- QuickDraw
            QuickDraw = 0.5,
            BeltThrowSpeedBuff = 0.25,
            AcquisitionTimeByEnemyTurretsBuff = 0.5,
            -- Survivalist
            SurvivalistHealth = 0.12,
            SurvivalistEnergy = 0.2,
            -- Brute Armor Upgrades
            HealthBuff = 200,
            RegenTimeBuff = 0.25,
            EnergyBuff = 5,
            HealthRegenRateBuff = 0.25,
            -- Potential Energy
            PotentialEnergy = true,
            -- Super Heavy
            SuperHeavy = true,
        }
    },
}

for className, classDef in pairs(classDefs) do
    utils:addClass(className, classDef.ootbClass, classDef.armorClass,
                   classDef.weapons, classDef.beltItems, classDef.packs,
                   classDef.skins)
    Classes.setValueMods(classDef.armorClass, utils:valueModsListDefConverter(classDef.armorValueMods))
    for propName, propVal in pairs(classDef.properties) do
        Classes.setProperty(classDef.armorClass, Classes.Properties[propName], propVal)
    end
end