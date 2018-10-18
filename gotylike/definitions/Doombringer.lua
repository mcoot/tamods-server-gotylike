local classDef = {
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
}

local itemDefs = {
    
}



return {items=itemDefs, class=classDef}