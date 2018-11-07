local classDef = {
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
        {class="Light", name="Shocklance"},
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
        RegenRate = 0.1,
        Mass = 100,
        VehicleSpeedInheritance = 1,
        CollisionCylinderRadius = 24,
        CollisionCylinderHeight = 46,
    },
    armorValueMods={
        -- Soldier Armor Upgrades
        RegenTimeBuff = 0.25,
        HealthBuff = 100,
        HealthRegenRateBuff = 0.25,
        EnergyBuff = 5,
    }
}

local itemDefs = {
    {
        name="Spinfusor", 
        changes={
            Damage = 650,
            DirectHitMultiplier = 1.4,
            SpareAmmo = 28,
            ReloadTime = 1.5,
        },
    },
    {
        name="Honorfusor", 
        changes={
            Damage = 650,
            DirectHitMultiplier = 1.4,
            SpareAmmo = 28,
            ReloadTime = 1.5,
        },
    },
    {
        name="Twinfusor", 
        changes={
            Damage = 410,
            ExplosiveRadius = 360,
            DirectHitMultiplier = 1.4,
            SpareAmmo = 36,
            ImpactMomentum = 85000,
            SelfImpactMomentumMultiplier = 0.5,
            SelfImpactExtraZMomentum = 45000,
            ReloadTime = 1.6,
        },
    },
    {
        name="Assault Rifle", 
        changes={
            Damage = 80,
            ClipAmmo = 28,
            ReloadTime = 1.53,
            FireInterval = 0.11,
        },
    },
    {
        name="Gast Rifle", 
        changes={
            ClipAmmo = 24,
            SpareAmmo = 216,
            ReloadTime = 1.53,
        },
    },
    {
        name="Thumper D", 
        changes={
            Damage = 550,
            ExplosiveRadius = 370,
            DirectHitMultiplier = 1.4,
            SpareAmmo = 20,
            SelfImpactExtraZMomentum = 70000,
        },
    },
    {
        name="Thumper DX", 
        changes={
            Damage = 600,
            ExplosiveRadius = 350,
            DirectHitMultiplier = 1.4,
            SpareAmmo = 20,
            SelfImpactExtraZMomentum = 70000,
        },
    },
    {
        name="Spare Spinfusor", 
        changes={
            Damage = 600,
            DirectHitMultiplier = 1.1,
            SpareAmmo = 28,
            ProjectileInheritance = 0.5,
            ReloadTime = 1.5,
        },
    },
    {
        name="Eagle", 
        changes={
            HoldToFire = false,
            Damage = 100,
            ClipAmmo = 20,
            SpareAmmo = 132,
            ReloadTime = 1.26,
            FireInterval = 0.16,
            Accuracy = 0.98,
            AccuracyLossOnShot = 0.45,
            AccuracyLossMax = 0.1,
            AccuracyCorrectionRate = 0.38,
        },
    },
    {
        name="Frag Grenade XL", 
        changes={
            Damage = 1000,
            ExplosiveRadius = 682,
            SpareAmmo = 2,
        },
    },
    {
        name="Short-Fuse Frag Grenades", 
        changes={
            Damage = 720,
            ExplosiveRadius = 550,
            SpareAmmo = 2,
        },
    },
    {
        name="AP Grenades", 
        changes={
            Damage = 1200,
            ExplosiveRadius = 600,
            SpareAmmo = 2,
        },
    },
    {
        name="Proximity Grenades", 
        changes={
            Damage = 620,
            ExplosiveRadius = 528,
            SpareAmmo = 2,
        },
    },
    {
        name="Energy Pack", 
        valueMods={
            EnergyBuff = 35,
        },
    },
    {
        name="Utility Pack", 
        valueMods={
            EnergyBuff = 20,
            ExtraBeltAmmo = 1,
            HealthBuff = 100,
            WalkSpeedBuff = 0.1,
        },
    },
}



return {items=itemDefs, class=classDef}