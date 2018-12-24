local classDef = {
    ootbClass="Light",
    armorClass="Sentinel",
    weapons={
        "BXT1",
        "BXT1A",
        "Phase Rifle",
        "SAP20",
        {class="Medium", name="Nova Blaster"},
        {class="Heavy", name="Nova Blaster MX"},
        "Falcon",
        "Accurized Shotgun",
        {class="Light", name="Shocklance"},
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
        HealthPool = 800,
        Mass = 100,
        RegenRate = 0.1,
        EnergyPool = 90,
        VehicleSpeedInheritance = 1,
    },
    armorValueMods={
        -- Sentinel Armor Upgrades
        RegenTimeBuff = 0.25,
        WalkSpeedBuff = 0.1,
        HealthRegenRateBuff = 0.25,
        HealthBuff = 100,
        EnergyBuff = 10,
    }
}

local itemDefs = {
    {
        name="BXT1", 
        changes={
            Damage = 125, -- Uncharged damage
            BXTChargeMaxDamage = 500,
            BXTChargeTime = 2.5,
            BXTChargeMultCoefficient = 16,
            BXTChargeDivCoefficient = 100,
            ReloadTime = 1.4,
            FireInterval = 1.0,
            ClipAmmo = 5,
            SpareAmmo = 32,
            HitscanRange = 100000,
            MinDamageProportion = 0.45,
            MaxDamageRangeProportion = 0.12,
            MinDamageRangeProportion = 0.24,
            DamageAgainstShrikeMultiplier = 0.1,
        },
    },
    {
        name="BXT1A", 
        changes={
            Damage = 125, -- Uncharged damage
            BXTChargeMaxDamage = 500,
            BXTChargeTime = 2.8,
            BXTChargeMultCoefficient = 16,
            BXTChargeDivCoefficient = 100,
            ReloadTime = 1.4,
            FireInterval = 1.0,
            ClipAmmo = 6,
            SpareAmmo = 34,
            HitscanRange = 100000,
            MinDamageProportion = 0.45,
            MaxDamageRangeProportion = 0.12,
            MinDamageRangeProportion = 0.24,
            DamageAgainstShrikeMultiplier = 0.1,
        },
    },
    {
        name="Phase Rifle", 
        changes={
            Damage = 60, -- Damage with no energy
            PhaseDamagePerEnergy = 5.0,
            PhaseMaxConsumedEnergy = 90.0,
            ReloadTime = 1.4,
            FireInterval = 1.0,
            ClipAmmo = 5,
            SpareAmmo = 32,
            HitscanRange = 100000,
            MinDamageProportion = 0.45,
            MaxDamageRangeProportion = 0.12,
            MinDamageRangeProportion = 0.24,
            DamageAgainstShrikeMultiplier = 0.1,
        },
        valueMods={}
    },
    {
        name="SAP20", 
        changes={
            Damage = 100, -- Damage with no energy
            PhaseDamagePerEnergy = 5.0,
            PhaseMaxConsumedEnergy = 95.0,
            ReloadTime = 1.4,
            FireInterval = 1.0,
            ClipAmmo = 3,
            SpareAmmo = 32,
            HitscanRange = 100000,
            MinDamageProportion = 0.45,
            MaxDamageRangeProportion = 0.12,
            MinDamageRangeProportion = 0.24,
            DamageAgainstShrikeMultiplier = 0.1,
        },
        valueMods={}
    },
    {
        name="Falcon", 
        changes={
            Damage = 65,
            ProjectileInheritance = 0,
            ClipAmmo = 24,
            ReloadTime = 1.53,
            -- FireInterval = 0.1,
        },
    },
    {
        class="Medium",
        name="Nova Blaster", 
        changes={
            Damage = 350,
            ProjectileSpeed = 8000,
            ProjectileLifespan = 1,
            ClipAmmo = 16,
            SpareAmmo = 96,
            ReloadTime = 1.4,
            FireInterval = 0.35,
            MinDamageProportion = 1,
            MaxDamageRangeProportion = 0.2,
            MinDamageRangeProportion = 0.4,
            HoldToFire = false,
        },
    },
    {
        class="Heavy",
        name="Nova Blaster MX", 
        changes={
            Damage = 250,
            ProjectileSpeed = 8000,
            ProjectileLifespan = 1,
            ClipAmmo = 20,
            SpareAmmo = 128,
            ReloadTime = 1.4,
            FireInterval = 0.25,
            MinDamageProportion = 1,
            MaxDamageRangeProportion = 0.2,
            MinDamageRangeProportion = 0.4,
            HoldToFire = false,
        },
    },
    {
        name="Accurized Shotgun", 
        changes={
            Damage = 70,
            ShotgunShotCount = 8,
            ClipAmmo = 6,
            SpareAmmo = 50,
            HitscanRange = 3000,
            Accuracy = 0.86,
            AccuracyLossMax = 0.3,
            AccuracyLossOnShot = 0.0,
            AccuracyCorrectionRate = 0.18,
            ShotgunUseGOTYSpread = true,
        },
    },
    {
        name="T5 Grenades", 
        changes={
            Damage = 1100,
            ExplosiveRadius = 682,
            SpareAmmo = 2,
        },
    },
}



return {items=itemDefs, class=classDef}