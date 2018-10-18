local classDef = {
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
}

local itemDefs = {
    {
        class="Medium", 
        name="Sawed Off Shotgun", 
        changes={
            Damage = 80,
            ShotgunShotCount = 8,
            ClipAmmo = 2,
            SpareAmmo = 50,
            HitscanRange = 3000,
            ReloadTime = 1.28,
        },
    },
}



return {items=itemDefs, class=classDef}