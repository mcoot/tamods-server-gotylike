local classDef = {
    ootbClass="Heavy",
    armorClass="Doombringer",
    weapons={
        "Chain Gun",
        "Chain Cannon",
        "Heavy Bolt Launcher",
        "Saber Launcher",
        "Titan Launcher",
        {class="Light", name="Shocklance"},
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
        EnergyPool = 80,
        Mass = 100,
        RegenRate = 0.1,
        VehicleSpeedInheritance = 0.75,
    },
    armorValueMods={
		QuickDraw = 0.5,
		QuickDrawBelt = 0.2,
        -- Doombringer Armor Upgrades
        HealthBuff = 200,
        RegenTimeBuff = 0.25,
        EnergyBuff = 10,
        HealthRegenRateBuff = 0.25,
        MassBuff = 30,
    }
}

local itemDefs = {
    {
        name="Chain Gun", 
        changes={
            Damage = 95,
            ProjectileSpeed = 18000,
            ProjectileMaxSpeed = 18000,
            ClipAmmo = 250,
            SpareAmmo = 250,
            ReloadTime = 1.925,
            FireInterval = 0.11,
            SpinupTime = 1.05,
            Accuracy = 0.98,
            AccuracyLossMax = 0.11,
            AccuracyCorrectionRate = 0.19,
        },
    },
    {
        name="Chain Cannon", 
        changes={
            Damage = 115,
            ProjectileSpeed = 18000,
            ProjectileMaxSpeed = 18000,
            ClipAmmo = 250,
            SpareAmmo = 250,
            ReloadTime = 1.925,
            FireInterval = 0.14,
            SpinupTime = 1.05,
            Accuracy = 0.98,
            AccuracyLossMax = 0.11,
            AccuracyCorrectionRate = 0.19,
        },
    },
    {
        name="Heavy Bolt Launcher", 
        changes={
            Damage = 750,
            ExplosiveRadius = 360,
            DirectHitMultiplier = 1.4,
            SelfImpactExtraZMomentum = 25000,
            ImpactMomentum=90000,
            SpareAmmo = 30,
            ReloadTime = 1.7,
        },
    },
    {
        -- Because of the OOTB change to Saber logic, it can't really be reverted
        -- I'm giving it slightly reduced explosive radius to compensate for its anti-shrike advantage
        name="Saber Launcher", 
        changes={
            Damage = 650,
            ExplosiveRadius = 360,
            DirectHitMultiplier = 1.25,
            ProjectileSpeed = 3000,
            ProjectileMaxSpeed = 8000,
            ImpactMomentum = 85000,
            SpareAmmo = 20,
            ReloadTime = 1.7,
            FireInterval = 0.5,
        },
    },
    {
        name="Titan Launcher", 
        changes={
            Damage = 650,
            ExplosiveRadius = 450,
            DirectHitMultiplier = 1.25,
            ProjectileSpeed = 3000,
            ProjectileMaxSpeed = 8000,
            ImpactMomentum  = 85000,
            SpareAmmo = 20,
            ReloadTime = 1.7,
            FireInterval = 0.5,
        },
    },
    {
        name="Frag Grenade", 
        changes={
            Damage = 900,
            ExplosiveRadius = 572,
            SpareAmmo = 3,
            FuseTimer = 1.5,
        },
    },
    {
        name="Mine", 
        changes={
            Damage = 700,
            ExplosiveRadius = 400,
            SpareAmmo = 2,
            MineCollisionCylinderRadius = 180,
            MineCollisionCylinderHeight = 72,
        },
    },
}



return {items=itemDefs, class=classDef}