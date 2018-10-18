local classDef = {
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
}

local itemDefs = {
    {
        name="Arx Buster", 
        changes={
            Damage = 600,
            StuckDamageMultiplier = 1,
            StuckMomentumMultiplier = 1,
            ExplosiveRadius = 360,
            SpareAmmo = 39,
        },
    },
    {
        name="Dust Devil", 
        changes={
            Damage = 500,
            StuckDamageMultiplier = 1,
            StuckMomentumMultiplier = 1,
            ExplosiveRadius = 410,
            SpareAmmo = 39,
        },
    },
    {
        name="Grenade Launcher", 
        changes={
            Damage = 550,
            ExplosiveRadius = 500,
            ClipAmmo = 5,
            SpareAmmo = 46,
        },
    },
    {
        name="Plasma Gun", 
        changes={
            Damage = 400,
            DirectHitMultiplier = 1.25,
            ExplosiveRadius = 270,
            ProjectileInheritance = 0.5,
            ProjectileSpeed = 3620,
            ProjectileMaxSpeed = 8000,
            ProjectileLifespan = 3,
            ClipAmmo = 10,
            SpareAmmo = 50,
            ReloadTime = 1.8,
            FireInterval = 0.47,
        },
    },
    {
        name="NJ4 SMG", 
        changes={
            Damage = 75,
            ProjectileInheritance = 0,
            ClipAmmo = 28,
            SpareAmmo = 240,
            ReloadTime = 1.53,
            FireInterval = 0.11,
        },
    },
    {
        name="Desert NJ4 SMG", 
        changes={
            Damage = 70,
            ProjectileInheritance = 0,
            ClipAmmo = 28,
            SpareAmmo = 240,
            ReloadTime = 1.53,
            FireInterval = 0.1,
        },
    },
    {
        name="NJ5 SMG", 
        changes={
            Damage = 140,
            ClipAmmo = 24,
            SpareAmmo = 216,
            ReloadTime = 1.53,
            FireInterval = 0.2,
        },
    },
    {
        name="EMP Grenade", 
        changes={
            Damage = 600,
            ExplosiveRadius = 682,
            EnergyDrain = 192,
            SpareAmmo = 2,
        }
    },
    {
        name="EMP XL Grenade", 
        changes={
            Damage = 500,
            ExplosiveRadius = 858,
            EnergyDrain = 192,
            SpareAmmo = 2,
        }
    },
    {
        name="Blackout Grenade", 
        changes={
            Damage = 250,
        }
    },
}



return {items=itemDefs, class=classDef}