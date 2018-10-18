local classDef = {
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
}

local itemDefs = {
    {
        name="Fusion Mortar", 
        changes={
            Damage = 1300,
            DirectHitMultiplier = 1,
            ExplosiveRadius = 700,
            ProjectileSpeed = 3500,
            ProjectileMaxSpeed = 7000,
            ProjectileTerminalVelocity = 7000,
            SpareAmmo = 25,
        },
    },
    {
        name="Fusion Mortar Deluxe", 
        changes={
            Damage = 1400,
            DirectHitMultiplier = 1,
            ExplosiveRadius = 650,
            ProjectileSpeed = 4000,
            ProjectileMaxSpeed = 8000,
            ProjectileTerminalVelocity = 8000,
            SpareAmmo = 25,
        },
    },
    {
        name="Spinfusor MKD", 
        changes={
            SpareAmmo = 28,
        },
    },
    {
        name="Spinfusor MK-X", 
        changes={
            SpareAmmo = 28,
        },
    },
    {
        name="Heavy Twinfusor", 
        changes={
            Damage = 440,
            ExplosiveRadius = 360,
            DirectHitMultiplier = 1.4,
            SpareAmmo = 36,
            ImpactMomentum = 85000,
            SelfImpactMomentumMultiplier = 0.5,
            SelfImpactExtraZMomentum = 45000,
            ReloadTime = 1.9,
        },
    },
    {
        name="X1 LMG", 
        changes={
            Damage = 75,
            ProjectileInheritance = 0,
            ClipAmmo = 80,
            SpareAmmo = 460,
            ReloadTime = 1.925,
            FireInterval = 0.1,
            SpinupTime = 0.5,
        },
    },
    {
        name="Spinfusor Disk", 
        changes={
            Damage = 650,
            ExplosiveRadius = 360,
            DirectHitMultiplier = 1.4,
            SpareAmmo=3,
        },
    },
}



return {items=itemDefs, class=classDef}