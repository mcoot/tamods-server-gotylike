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
}

local itemDefs = {
    {
        name="Spinfusor", 
        changes={
            Damage = 650,
            DirectHitMultiplier = 1.4,
            SpareAmmo = 28,
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
        name="Thumper DX", 
        changes={
            Damage = 600,
            DirectHitMultiplier = 1.4,
            SpareAmmo = 20,
        },
    },
    {
        name="Spare Spinfusor", 
        changes={
            Damage = 600,
            DirectHitMultiplier = 1.1,
            SpareAmmo = 28,
            ProjectileInheritance = 0.5,
        },
    },
    {
        name="Eagle", 
        changes={
            Damage = 100,
            ClipAmmo = 20,
            SpareAmmo = 132,
            -- Currently haven't reverted accuracy, idk if we should
        },
    },
    {
        name="Frag Grenade XL", 
        valueMods={
            ExtraBeltAmmo = 1,
            BeltDamageRadiusBuff = 0.1,
            BeltArmorPenetrationBuff = 0.2,
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