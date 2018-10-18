local classDef = {
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
}

local itemDefs = {
    
}



return {items=itemDefs, class=classDef}