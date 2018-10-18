local classDef = {
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
        -- The Energy pack is the SEN one now
        -- But in GOTY the two were identical
        "Light Energy Pack",
        -- Light Utility pack is being converted
        -- into a 'Lightweight pack'
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
}

local itemDefs = {
    {
        class="Light", 
        name="Light Spinfusor", 
        changes={
            Damage = 550,
            DirectHitMultiplier = 1.4,
            SpareAmmo = 28,
        },
    },
    {
        class="Light", 
        name="Dueling Spinfusor", 
        changes={
            Damage = 550,
            DirectHitMultiplier = 1.6,
            SpareAmmo = 28,
        },
    },
    {
        class="Light", 
        name="Light Twinfusor", 
        changes={
            Damage = 380,
            ExplosiveRadius = 360,
            DirectHitMultiplier = 1.4,
            SpareAmmo = 36,
            ImpactMomentum = 85000,
            SelfImpactMomentumMultiplier = 0.5,
            SelfImpactExtraZMomentum = 45000,
            ReloadTime = 1.4,
        },
    },
    {
        class="Light", 
        name="Bolt Launcher", 
        changes={
            Damage = 650,
            DirectHitMultiplier = 1.35,
            SpareAmmo = 28,
        },
    },
    {
        class="Light", 
        name="Light Assault Rifle", 
        changes={
            Damage = 80,
            ClipAmmo = 24,
            SpareAmmo = 204,
            ReloadTime = 1.53,
            FireInterval = 0.1,
        },
    },
    {
        class="Light", 
        name="Sparrow", 
        changes={
            Damage = 85,
            ClipAmmo = 20,
            SpareAmmo = 132,
            -- Currently haven't reverted accuracy, idk if we should
            -- Damage here is slightly lower because in GOTY this wasn't on light
            -- Need to validate this and decide!!!
        },
    },
    {
        class="Light", 
        name="Shotgun", 
        changes={
            Damage = 80,
            ShotgunShotCount = 8,
            ClipAmmo = 6,
            SpareAmmo = 50,
            HitscanRange = 3000,
        },
    },
    {
        class="Light", 
        name="Holdout Shotgun", 
        changes={
            Damage = 90,
            ShotgunShotCount = 8,
            ClipAmmo = 5,
            SpareAmmo = 46,
            HitscanRange = 3000,
        },
    },
    {
        class="Light", 
        name="Impact Nitron", 
        changes={
            Damage=300,
            ExplosiveRadius=506,
            DirectHitMultiplier=1,
            SpareAmmo=2,
        },
    },
    {
        class="Light", 
        name="Explosive Nitron", 
        changes={
            Damage=650,
            ExplosiveRadius=396,
            DirectHitMultiplier=1,
            SpareAmmo=2,
        },
    },
    {
        class="Light", 
        name="Compact Nitron", 
        changes={
            Damage=300,
            ExplosiveRadius=440,
            DirectHitMultiplier=1,
            SpareAmmo=3,
        },
    },
    {
        class="Light", 
        name="Light Energy Pack", 
        valueMods={
            EnergyRegenRateBuff=0.18
        },
    },
    {
        -- Converted into a 'lightweight pack'
        class="Light", 
        name="Light Utility Pack", 
        valueMods={
            EnergyBuff=25,
            MassBuff=-0.3
        },
    },
}



return {items=itemDefs, class=classDef}