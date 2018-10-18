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
        "Nova Blaster MX",
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
        class="Heavy", 
        name="Heavy Spinfusor", 
        changes={
            Damage = 750,
            DirectHitMultiplier = 1.4,
            SpareAmmo = 30,
            ImpactMomentum = 90000,
        },
    },
    {
        class="Heavy", 
        name="Devastator Spinfusor", 
        changes={
            Damage = 700,
            DirectHitMultiplier = 1.72,
            ProjectileInheritance = 0.5,
            SpareAmmo = 30,
            ImpactMomentum = 90000,
        },
    },
    {
        class="Heavy", 
        name="Nova Colt", 
        changes={
            ClipAmmo = 6,
            SpareAmmo = 72,
            LowAmmoCutoff = 1,
            ReloadTime = 1.4,
            -- Fire rate slightly slower than GOTY
            FireInterval = 0.35,
            Damage = 190,
        },
    },
    {
        class="Heavy", 
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
        class="Heavy", 
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
        class="Heavy", 
        name="Light Sticky Grenade",
        valueMods={
            ExtraBeltAmmo = 2,
            BeltDamageRadiusBuff = 0.1,
            BeltArmorPenetrationBuff = 0.2,
        },
    },
}



return {items=itemDefs, class=classDef}