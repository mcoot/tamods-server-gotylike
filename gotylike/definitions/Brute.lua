local classDef = {
    ootbClass="Heavy",
    armorClass="Brute",
    weapons={
        "Heavy Spinfusor",
        "Devastator Spinfusor",
        "Gladiator",
        "Automatic Shotgun",
        "The Hammer",
        "Nova Colt",
        "Plasma Cannon",
        "EFG",
        {class="Medium", name="Long Range Repair Tool"}, -- Dummy tertiary weapon
    },
    beltItems={
        "Fractal Grenade",
        "Extended Fractal",
        "Light Sticky Grenade",
    },
    packs={
        "Heavy Shield Pack",
        "Heavy Energy Pack",
        "Survival Pack",
    },
    skins={
        "Brute",
        "Crusher",
    },
    properties={
        HealthPool = 2400,
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
        -- Brute Armor Upgrades
        HealthBuff = 200,
        RegenTimeBuff = 0.25,
        EnergyBuff = 5,
        HealthRegenRateBuff = 0.25,
        -- Potential Energy
        PotentialEnergy = true,
        -- Super Heavy
        SuperHeavy = true,
    }
}

local itemDefs = {
    {
        name="Heavy Spinfusor", 
        changes={
            Damage = 750,
            DirectHitMultiplier = 1.4,
            SpareAmmo = 30,
            ImpactMomentum = 90000,
            ReloadTime = 1.8,
        },
    },
    {
        name="Devastator Spinfusor", 
        changes={
            Damage = 700,
            DirectHitMultiplier = 1.72,
            ProjectileInheritance = 0.5,
            SpareAmmo = 30,
            ImpactMomentum = 90000,
            ReloadTime = 1.8,
        },
    },
    {
        name="Nova Colt", 
        changes={
            HoldToFire = false,
            ClipAmmo = 6,
            SpareAmmo = 72,
            LowAmmoCutoff = 1,
            ReloadTime = 1.4,
            -- Fire rate slightly slower than GOTY
            FireInterval = 0.35,
            Damage = 190,
            HitscanRange = 10000,
            MinDamageProportion = 0.65,
            MaxDamageRangeProportion = 0.2,
            MinDamageRangeProportion = 0.4,
        },
    },
    {
        name="Auto Shotgun", 
        changes={
            Damage = 50,
            ShotgunShotCount = 8,
            ClipAmmo = 8,
            SpareAmmo = 60,
            HitscanRange = 3000,
            ReloadTime = 1.35,
        },
    },
    {
        name="The Hammer", 
        changes={
            Damage = 60,
            ShotgunShotCount = 8,
            ClipAmmo = 6,
            SpareAmmo = 50,
            HitscanRange = 3000,
            ReloadTime = 1.35,
        },
    },
    {
        name="Light Sticky Grenade",
        valueMods={
            ExtraBeltAmmo = 2,
            BeltDamageRadiusBuff = 0.1,
            BeltArmorPenetrationBuff = 0.2,
        },
    },
    {
        name="Fractal Grenade",
        changes={
            Damage = 370, -- Reduced final explosion damage
            ExplosiveRadius = 520,
            SpareAmmo = 2,
            ProjectileSpeed = 1200,
            ImpactMomentum = 40000,
            FractalDuration = 5.5,
            FractalShardInterval = 0.2,
            FractalAscentTime = 1,
            FractalAscentHeight = 90,
            FractalShardDistance = 900,
            FractalShardHeight = 100,
            FractalShardDamage = 370,
            FractalShardDamageRadius = 300,
            MinDamageProportion = 1,
            MaxDamageRangeProportion = 0.5,
            MinDamageRangeProportion = 0.9,
        },
    },
    {
        name="Extended Fractal Grenade",
        changes={
            Damage = 350, -- Reduced final explosion damage
            ExplosiveRadius = 520,
            SpareAmmo = 2,
            ProjectileSpeed = 1200,
            ImpactMomentum = 40000,
            FractalDuration = 6.5,
            FractalShardInterval = 0.2,
            FractalAscentTime = 1,
            FractalAscentHeight = 90,
            FractalShardDistance = 900,
            FractalShardHeight = 100,
            FractalShardDamage = 350,
            FractalShardDamageRadius = 300,
            MinDamageProportion = 1,
            MaxDamageRangeProportion = 0.5,
            MinDamageRangeProportion = 0.9,
        },
    },
    {
        name="Survival Pack",
        valueMods={
            HealthBuff = 200,
            WalkSpeedBuff = 0.25,
            EnergyRegenRateBuff = 0.15,
        },
    },
}



return {items=itemDefs, class=classDef}