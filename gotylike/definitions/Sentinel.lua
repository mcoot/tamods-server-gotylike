local classDef = {
    ootbClass="Light",
    armorClass="Sentinel",
    weapons={
        "BXT1",
        "BXT1A",
        "Phase Rifle",
        "SAP20",
        "Falcon",
        "Accurized Shotgun",
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
        EnergyPool = 90,
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
        class="Light", 
        name="BXT1", 
        changes={
            Damage = 10, -- Uncharged damage
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
        },
    },
    {
        class="Light", 
        name="BXT1A", 
        changes={
            Damage = 10, -- Uncharged damage
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
        },
    },
    {
        class="Light", 
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
            MinDamageProportion = 0.65,
            MaxDamageRangeProportion = 0.24,
            MinDamageRangeProportion = 0.36,
        },
    },
    {
        class="Light", 
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
            MinDamageProportion = 0.65,
            MaxDamageRangeProportion = 0.24,
            MinDamageRangeProportion = 0.36,
        },
    },
    {
        class="Light", 
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
        class="Light", 
        name="Accurized Shotgun", 
        changes={
            Damage = 70,
            ShotgunShotCount = 8,
            ClipAmmo = 6,
            SpareAmmo = 50,
            HitscanRange = 3000,
        },
    },
}



return {items=itemDefs, class=classDef}