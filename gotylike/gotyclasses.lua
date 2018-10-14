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
            {Classes.Properties.HealthPool, 800},
            {Classes.Properties.EnergyPool, 100},
            {Classes.Properties.EnergyRechargeRate, 14},
            {Classes.Properties.GroundSpeed, 500},
            {Classes.Properties.AirControlMaxMultiplier, 3.7},
            {Classes.Properties.AirControlMinMultiplier, 1.4},
            {Classes.Properties.VehicleSpeedInheritance, 1},
        },
        armorValueMods={
            -- QuickDraw
            {ValueMods.QuickDraw, 0.5},
            {ValueMods.BeltThrowSpeedBuff, 0.25},
            {ValueMods.AcquisitionTimeByEnemyTurretsBuff, 0.5},
            -- Survivalist
            {ValueMods.SurvivalistHealth, 0.3},
            {ValueMods.SurvivalistEnergy, 0.2},
            -- Pathfinder Armor Upgrades
            {ValueMods.RegenTimeBuff, 0.25},
            {ValueMods.EnergyBuff, 10},
            {ValueMods.HealthRegenRateBuff, 0.25},
            {ValueMods.HealthBuff, 100},
            {ValueMods.MassBuff, -0.1},
            -- Rage
            {ValueMods.Rage, true},
            {ValueMods.RageEnergyRegen, 0.2},
            {ValueMods.RageTime, 15.0},
            {ValueMods.RageMassReduction, -0.25},
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
            {Classes.Properties.HealthPool, 800},
            {Classes.Properties.VehicleSpeedInheritance, 1},
        },
        armorValueMods={
            -- QuickDraw
            {ValueMods.QuickDraw, 0.5},
            {ValueMods.BeltThrowSpeedBuff, 0.25},
            {ValueMods.AcquisitionTimeByEnemyTurretsBuff, 0.5},
            -- Survivalist
            {ValueMods.SurvivalistHealth, 0.3},
            {ValueMods.SurvivalistEnergy, 0.2},
            -- Infiltrator Armor Upgrades
            {ValueMods.RegenTimeBuff, 0.25},
            {ValueMods.EnergyBuff, 10},
            {ValueMods.HealthBuff, 100},
            {ValueMods.WalkSpeedBuff, 0.1},
            {ValueMods.HealthBuff, 100},
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
            {Classes.Properties.HealthPool, 800},
            {Classes.Properties.EnergyPool, 90},
            {Classes.Properties.VehicleSpeedInheritance, 1},
        },
        armorValueMods={
            -- QuickDraw
            {ValueMods.QuickDraw, 0.5},
            {ValueMods.BeltThrowSpeedBuff, 0.25},
            {ValueMods.AcquisitionTimeByEnemyTurretsBuff, 0.5},
            -- Survivalist
            {ValueMods.SurvivalistHealth, 0.3},
            {ValueMods.SurvivalistEnergy, 0.2},
            -- Sentinel Armor Upgrades
            {ValueMods.RegenTimeBuff, 0.25},
            {ValueMods.WalkSpeedBuff, 0.1},
            {ValueMods.HealthRegenRateBuff, 0.25},
            {ValueMods.HealthBuff, 100},
            {ValueMods.EnergyBuff, 10},
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
            {Classes.Properties.HealthPool, 1200},
            {Classes.Properties.Mass, 100},
            {Classes.Properties.VehicleSpeedInheritance, 1},
        },
        armorValueMods={
            -- QuickDraw
            {ValueMods.QuickDraw, 0.5},
            {ValueMods.BeltThrowSpeedBuff, 0.25},
            {ValueMods.AcquisitionTimeByEnemyTurretsBuff, 0.5},
            -- Survivalist
            {ValueMods.SurvivalistHealth, 0.2},
            {ValueMods.SurvivalistEnergy, 0.2},
            -- Soldier Armor Upgrades
            {ValueMods.RegenTimeBuff, 0.25},
            {ValueMods.HealthBuff, 50},
            {ValueMods.HealthRegenRateBuff, 0.25},
            {ValueMods.EnergyBuff, 5},
            {ValueMods.HealthBuff, 50},
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
            {Classes.Properties.HealthPool, 1200},
            {Classes.Properties.VehicleSpeedInheritance, 1},
        },
        armorValueMods={
            -- QuickDraw
            {ValueMods.QuickDraw, 0.5},
            {ValueMods.BeltThrowSpeedBuff, 0.25},
            {ValueMods.AcquisitionTimeByEnemyTurretsBuff, 0.5},
            -- Survivalist
            {ValueMods.SurvivalistHealth, 0.2},
            {ValueMods.SurvivalistEnergy, 0.2},
            -- Raider Armor Upgrades
            {ValueMods.RegenTimeBuff, 0.25},
            {ValueMods.HealthBuff, 50},
            {ValueMods.HealthRegenRateBuff, 0.25},
            {ValueMods.EnergyBuff, 10},
            {ValueMods.HealthBuff, 50},
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
            {Classes.Properties.HealthPool, 1200},
            {Classes.Properties.VehicleSpeedInheritance, 1},
        },
        armorValueMods={
            -- QuickDraw
            {ValueMods.QuickDraw, 0.5},
            {ValueMods.BeltThrowSpeedBuff, 0.25},
            {ValueMods.AcquisitionTimeByEnemyTurretsBuff, 0.5},
            -- Survivalist
            {ValueMods.SurvivalistHealth, 0.2},
            {ValueMods.SurvivalistEnergy, 0.2},
            -- Technician Armor Upgrades
            {ValueMods.RegenTimeBuff, 0.25},
            {ValueMods.HealthBuff, 50},
            {ValueMods.HealthRegenRateBuff, 0.25},
            {ValueMods.EnergyBuff, 10},
            {ValueMods.HealthBuff, 50},
            -- Vehicle Improvements
            {ValueMods.VehicleEnergyBuff, 0.25},
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
            {Classes.Properties.HealthPool, 2400},
            {Classes.Properties.EnergyPool, 80},
            {Classes.Properties.EnergyRechargeRate, 9},
            {Classes.Properties.GroundSpeed, 360},
            {Classes.Properties.Mass, 130},
            {Classes.Properties.AirControlMaxMultiplier, 3.7},
            {Classes.Properties.AirControlMinMultiplier, 0.4},
            {Classes.Properties.VehicleSpeedInheritance, 0.75},
        },
        armorValueMods={
            -- QuickDraw
            {ValueMods.QuickDraw, 0.5},
            {ValueMods.BeltThrowSpeedBuff, 0.25},
            {ValueMods.AcquisitionTimeByEnemyTurretsBuff, 0.5},
            -- Survivalist
            {ValueMods.SurvivalistHealth, 0.12},
            {ValueMods.SurvivalistEnergy, 0.2},
            -- Juggernaught Armor Upgrades
            {ValueMods.HealthBuff, 100},
            {ValueMods.RegenTimeBuff, 0.25},
            {ValueMods.EnergyBuff, 10},
            {ValueMods.HealthRegenRateBuff, 0.25},
            {ValueMods.HealthBuff, 100},
            -- Potential Energy
            {ValueMods.PotentialEnergy, true},
            -- Super Heavy
            {ValueMods.SuperHeavy, true},
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
            {Classes.Properties.HealthPool, 2300},
            {Classes.Properties.VehicleSpeedInheritance, 0.75},
        },
        armorValueMods={
            -- QuickDraw
            {ValueMods.QuickDraw, 0.5},
            {ValueMods.BeltThrowSpeedBuff, 0.25},
            {ValueMods.AcquisitionTimeByEnemyTurretsBuff, 0.5},
            -- Survivalist
            {ValueMods.SurvivalistHealth, 0.12},
            {ValueMods.SurvivalistEnergy, 0.2},
            -- Doombringer Armor Upgrades
            {ValueMods.HealthBuff, 100},
            {ValueMods.RegenTimeBuff, 0.25},
            {ValueMods.EnergyBuff, 10},
            {ValueMods.HealthRegenRateBuff, 0.25},
            {ValueMods.HealthBuff, 100},
            -- Potential Energy
            {ValueMods.PotentialEnergy, true},
            -- Super Heavy
            {ValueMods.SuperHeavy, true},
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
            {Classes.Properties.HealthPool, 2400},
            {Classes.Properties.VehicleSpeedInheritance, 0.75},
        },
        armorValueMods={
            -- QuickDraw
            {ValueMods.QuickDraw, 0.5},
            {ValueMods.BeltThrowSpeedBuff, 0.25},
            {ValueMods.AcquisitionTimeByEnemyTurretsBuff, 0.5},
            -- Survivalist
            {ValueMods.SurvivalistHealth, 0.12},
            {ValueMods.SurvivalistEnergy, 0.2},
            -- Brute Armor Upgrades
            {ValueMods.HealthBuff, 100},
            {ValueMods.RegenTimeBuff, 0.25},
            {ValueMods.EnergyBuff, 5},
            {ValueMods.HealthRegenRateBuff, 0.25},
            {ValueMods.HealthBuff, 100},
            -- Potential Energy
            {ValueMods.PotentialEnergy, true},
            -- Super Heavy
            {ValueMods.SuperHeavy, true},
        }
    },
}

for className, classDef in pairs(classDefs) do
    utils:addClass(className, classDef.ootbClass, classDef.armorClass,
                   classDef.weapons, classDef.beltItems, classDef.packs,
                   classDef.skins)
    Classes.setValueMods(classDef.armorClass, classDef.armorValueMods)
    for k, v in pairs(classDef.properties) do
        Classes.setProperty(classDef.armorClass, v[1], v[2])
    end
end