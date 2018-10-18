local utils = require("gotylike/utils")

local proj_propsToPrint = {
    "Damage",
    "ExplosiveRadius",
    "DirectHitMultiplier",
    "ImpactMomentum",
    "SelfImpactMomentumMultiplier",
    "SelfImpactExtraZMomentum",
    "ProjectileSpeed",
    "ProjectileMaxSpeed",
    "ProjectileInheritance",
    "CollisionSize",
    "ProjectileLifespan",
    "ProjectileGravity",
    "ProjectileTerminalVelocity",
    "Accuracy",
    "ClipAmmo",
    "SpareAmmo",
    "LowAmmoCutoff",
    "ReloadTime",
    "FireInterval",
    "BulletDamageRange",
    "MinDamageProportion",
    "MaxDamageRangeProportion",
    "MinDamageRangeProportion",
}

local grenade_propsToPrint = {
    "Damage",
    "ExplosiveRadius",
    "DirectHitMultiplier",
    "ImpactMomentum",
    "ProjectileSpeed",
    "ProjectileMaxSpeed",
    "ProjectileInheritance",
    "CollisionSize",
    "ProjectileLifespan",
    "ProjectileGravity",
    "ProjectileTerminalVelocity",
    "Accuracy",
    "ClipAmmo",
    "SpareAmmo",
    "LowAmmoCutoff",
    "ReloadTime",
    "FireInterval",
    "ThrowDelay",
    "ThrowPullPinTime",
    "EnergyDrain",
    "MinDamageProportion",
    "MaxDamageRangeProportion",
    "MinDamageRangeProportion",
}

local hitscan_propsToPrint = {
    "Damage",
    "Accuracy",
    "AccuracyLossOnShot",
    "AccuracyLossOnJump",
    "AccuracyLossMax",
    "AccuracyCorrectionRate",
    "ClipAmmo",
    "SpareAmmo",
    "LowAmmoCutoff",
    "ReloadTime",
    "FireInterval",
    "HitscanRange",
    "MinDamageProportion",
    "MaxDamageRangeProportion",
    "MinDamageRangeProportion",
    "ShotgunShotCount",
}

local pack_propsToPrint = {
    -- "ClipAmmo",
    -- "SpareAmmo",
    "PackSustainedEnergyCost",
    "PackBuffAmount",
}

-- utils:printItemProps("Medium", "Grenade Launcher", proj_propsToPrint)
-- utils:printItemProps("Light", "Explosive Nitron", grenade_propsToPrint)
-- utils:printItemProps("Medium", "Sawed Off Shotgun", hitscan_propsToPrint)



itemChangeDefs = {
    groups = {
        direct_hit_explosives = {
            -- Normal direct hit explosives (to change proj hitbox size)
            -- Light
            {class="Light", name="Light Spinfusor"},
            {class="Light", name="Dueling Spinfusor"},
            {class="Light", name="Stealth Spinfusor"},
            {class="Light", name="Light Twinfusor"},
            {class="Light", name="Blinksfusor"},
            {class="Light", name="Bolt Launcher"},
            -- Medium
            {class="Medium", name="Spinfusor"},
            {class="Medium", name="Twinfusor"},
            {class="Medium", name="Spare Spinfusor"},
            {class="Medium", name="Honorfusor"},
            {class="Medium", name="Thumper"},
            {class="Medium", name="Thumper D"},
            {class="Medium", name="Thumper DX"},
            -- Heavy
            {class="Heavy", name="Spinfusor MKD"},
            {class="Heavy", name="Spinfusor MK-X"},
            {class="Heavy", name="Heavy Spinfusor"},
            {class="Heavy", name="Devastator Spinfusor"},
            {class="Heavy", name="Heavy Twinfusor"},
            {class="Heavy", name="Heavy Bolt Launcher"},
            {class="Heavy", name="Spinfusor Disk"},
        },
        spinfusors = {
            -- Light
            {class="Light", name="Light Spinfusor"},
            {class="Light", name="Dueling Spinfusor"},
            {class="Light", name="Stealth Spinfusor"},
            {class="Light", name="Light Twinfusor"},
            {class="Light", name="Blinksfusor"},
            -- Medium
            {class="Medium", name="Spinfusor"},
            {class="Medium", name="Twinfusor"},
            {class="Medium", name="Spare Spinfusor"},
            {class="Medium", name="Honorfusor"},
            -- Heavy
            {class="Heavy", name="Spinfusor MKD"},
            {class="Heavy", name="Spinfusor MK-X"},
            {class="Heavy", name="Heavy Spinfusor"},
            {class="Heavy", name="Devastator Spinfusor"},
            {class="Heavy", name="Heavy Twinfusor"},
            {class="Heavy", name="Spinfusor Disk"},
        },
        chain = {
            -- For setting hitbox + damage falloff
            -- Falloff is between 4200 and 6000 Unreal Units, and down to 75% dmg
            -- Light
            {class="Light", name="Rhino SMG"},
            {class="Light", name="Arctic Rhino SMG"},
            {class="Light", name="Light Assault Rifle"},
            {class="Light", name="SN7 Pistol"},
            {class="Light", name="Arctic SN7 Pistol"},
            {class="Light", name="Falcon"},
            -- Medium
            {class="Medium", name="Assault Rifle"},
            {class="Medium", name="Gast Rifle"},
            {class="Medium", name="TCN4"},
            {class="Medium", name="TCN4 Rockwind"},
            {class="Medium", name="NJ4 SMG"},
            {class="Medium", name="Desert NJ4 SMG"},
            {class="Medium", name="NJ5 SMG"},
            -- Heavy
            {class="Heavy", name="Chain Gun"},
            {class="Heavy", name="Chain Cannon"},
            {class="Heavy", name="X1 LMG"},
        },
        hitscan_pistols = {
            {class="Light", name="Sparrow"},
            {class="Medium", name="Eagle"},
            {class="Heavy", name="Nova Colt"},
        },
        shotguns = {
            {class="Light", name="Shotgun"},
            {class="Light", name="Holdout Shotgun"},
            {class="Light", name="Accurized Shotgun"},
            {class="Medium", name="Sawed Off Shotgun"},
            {class="Heavy", name="Auto Shotgun"},
            {class="Heavy", name="The Hammer"},
        },
        explosive_weapon_dmg_banding = {
            -- All explosive weapons that use the common damage banding values
            -- of min damage of 50%, banding range between 50%-90% of damage radius
            -- Light
            {class="Light", name="Light Spinfusor"},
            {class="Light", name="Dueling Spinfusor"},
            {class="Light", name="Stealth Spinfusor"},
            {class="Light", name="Light Twinfusor"},
            {class="Light", name="Blinksfusor"},
            {class="Light", name="Bolt Launcher"},
            {class="Light", name="Light Grenade Launcher"},
            {class="Light", name="Jackal"},
            -- Medium
            {class="Medium", name="Spinfusor"},
            {class="Medium", name="Twinfusor"},
            {class="Medium", name="Spare Spinfusor"},
            {class="Medium", name="Honorfusor"},
            {class="Medium", name="Thumper"},
            {class="Medium", name="Thumper D"},
            {class="Medium", name="Thumper DX"},
            {class="Medium", name="Arx Buster"},
            {class="Medium", name="Dust Devil"},
            {class="Medium", name="Grenade Launcher"},
            {class="Medium", name="Plasma Gun"},
            {class="Medium", name="Cluster Grenade"},
            -- Heavy
            {class="Heavy", name="Fusion Mortar"},
            {class="Heavy", name="Fusion Mortar Deluxe"},
            {class="Heavy", name="MIRV Launcher"},
            {class="Heavy", name="Spinfusor MKD"},
            {class="Heavy", name="Spinfusor MK-X"},
            {class="Heavy", name="Spinfusor Disk"},
            {class="Heavy", name="Heavy Spinfusor"},
            {class="Heavy", name="Devastator Spinfusor"},
            {class="Heavy", name="Heavy Twinfusor"},
            {class="Heavy", name="Heavy Bolt Launcher"},
            {class="Heavy", name="Saber Launcher"},
            {class="Heavy", name="Titan Launcher"},
            {class="Heavy", name="Plasma Cannon"},
            {class="Heavy", name="Fractal Grenade"},
            {class="Heavy", name="Extended Fractal"},
        },
        grenade_dmg_banding = {
            -- All explosive grenades that use the common damage banding values
            -- of min damage of 30%, banding range between 50%-90% of damage radius
            -- Light
            {class="Light", name="Impact Nitron"},
            {class="Light", name="Explosive Nitron"},
            {class="Light", name="Compact Nitron"},
            {class="Light", name="Sticky Grenades"},
            {class="Light", name="Sticky Grenade XL"},
            {class="Light", name="Sticky Grenade XL"},
            {class="Light", name="Chaff Grenade"},
            {class="Light", name="T5 Grenade"},
            {class="Medium", name="Frag Grenade XL"},
            {class="Medium", name="Short-Fuse Frag Grenade"},
            {class="Medium", name="AP Grenade"},
            {class="Medium", name="Proximity Grenade"},
            {class="Medium", name="EMP Grenade"},
            {class="Medium", name="EMP XL Grenade"},
            {class="Medium", name="Blackout Grenade"},
            {class="Medium", name="TCNG"},
            {class="Medium", name="TCNG Quickfuse"},
            {class="Heavy", name="Heavy AP Grenade"},
            {class="Heavy", name="Heavy AP-XL"},
            {class="Heavy", name="Heavy AP-XL"},
            {class="Heavy", name="Frag Grenade"},
            {class="Heavy", name="Light Sticky Grenade"},
        },
    },
    mods = {
        ---------------------
        -- GROUPS
        ---------------------
        {
            group="direct_hit_explosives", 
            changes={
                -- Same as GOTY, smaller than OOTB
                CollisionSize = 10,
            }
        },
        {
            group="explosive_weapon_dmg_banding", 
            changes={
                -- GOTY damage banding
                MinDamageProportion = 0.5,
                MaxDamageRangeProportion = 0.5,
                MinDamageRangeProportion = 0.9,
            }
        },
        {
            group="grenade_dmg_banding", 
            changes={
                -- GOTY damage banding
                MinDamageProportion = 0.3,
                MaxDamageRangeProportion = 0.5,
                MinDamageRangeProportion = 0.9,
                -- Collision size > OOTB but < GOTY
                CollisionSize = 30,
            }
        },
        {
            group="chain", 
            changes={
                -- Smaller than real GOTY, _slightly_ larger than OOTB
                CollisionSize = 30,
                -- GOTY damage falloff
                MinDamageProportion = 0.75,
                MaxDamageRangeProportion = 0.75,
                MinDamageRangeProportion = 1,
            }
        },
        {
            group="shotguns", 
            changes={
                -- GOTY falloff
                MinDamageProportion = 0.4,
                MaxDamageRangeProportion = 0.5,
                MinDamageRangeProportion = 0.9,
            }
        },
        {
            group="hitscan_pistols",
            changes={
                HitscanRange=10000,
            }
        },
        ---------------------
        -- CROSS-CLASS
        ---------------------
        {
            class="Light", -- Will apply across classes 
            name="Melee", 
            changes={
                Damage = 900,
            },
        },
        ---------------------
        -- PATHFINDER
        ---------------------
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
        ---------------------
        -- INFILTRATOR
        ---------------------
        
        ---------------------
        -- SENTINEL
        ---------------------
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
        ---------------------
        -- SOLDIER
        ---------------------
        {
            class="Medium", 
            name="Spinfusor", 
            changes={
                Damage = 650,
                DirectHitMultiplier = 1.4,
                SpareAmmo = 28,
            },
        },
        {
            class="Medium", 
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
            class="Medium", 
            name="Assault Rifle", 
            changes={
                Damage = 80,
                ClipAmmo = 28,
                ReloadTime = 1.53,
                FireInterval = 0.11,
            },
        },
        {
            class="Medium", 
            name="Gast Rifle", 
            changes={
                ClipAmmo = 24,
                SpareAmmo = 216,
                ReloadTime = 1.53,
            },
        },
        {
            class="Medium", 
            name="Thumper DX", 
            changes={
                Damage = 600,
                DirectHitMultiplier = 1.4,
                SpareAmmo = 20,
            },
        },
        {
            class="Medium", 
            name="Spare Spinfusor", 
            changes={
                Damage = 600,
                DirectHitMultiplier = 1.1,
                SpareAmmo = 28,
                ProjectileInheritance = 0.5,
            },
        },
        {
            class="Medium", 
            name="Eagle", 
            changes={
                Damage = 100,
                ClipAmmo = 20,
                SpareAmmo = 132,
                -- Currently haven't reverted accuracy, idk if we should
            },
        },
        {
            class="Medium", 
            name="Frag Grenade XL", 
            valueMods={
                ExtraBeltAmmo = 1,
                BeltDamageRadiusBuff = 0.1,
                BeltArmorPenetrationBuff = 0.2,
            },
        },
        {
            class="Medium", 
            name="Utility Pack", 
            valueMods={
                EnergyBuff = 20,
                ExtraBeltAmmo = 1,
                HealthBuff = 100,
                WalkSpeedBuff = 0.1,
            },
        },
        ---------------------
        -- RAIDER
        ---------------------
        {
            class="Medium", 
            name="Arx Buster", 
            changes={
                Damage = 400,
                ExplosiveRadius = 360,
                SpareAmmo = 39,
            },
        },
        {
            class="Medium", 
            name="Grenade Launcher", 
            changes={
                Damage = 550,
                ExplosiveRadius = 500,
                ClipAmmo = 5,
                SpareAmmo = 46,
            },
        },
        {
            class="Medium", 
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
            class="Medium", 
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
            class="Medium", 
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
            class="Medium", 
            name="EMP Grenade", 
            changes={
                Damage = 600,
                ExplosiveRadius = 682,
                EnergyDrain = 192,
                SpareAmmo = 2,
            }
        },
        {
            class="Medium", 
            name="EMP XL Grenade", 
            changes={
                Damage = 500,
                ExplosiveRadius = 858,
                EnergyDrain = 192,
                SpareAmmo = 2,
            }
        },
        ---------------------
        -- TECHNICIAN
        ---------------------
        {
            class="Medium", 
            name="Sawed Off Shotgun", 
            changes={
                Damage = 80,
                ShotgunShotCount = 8,
                ClipAmmo = 2,
                SpareAmmo = 50,
                HitscanRange = 3000,
                ReloadTime = 1.28,
            },
        },
        ---------------------
        -- JUGGERNAUGHT
        ---------------------
        {
            class="Heavy", 
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
            class="Heavy", 
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
            class="Heavy", 
            name="Spinfusor MKD", 
            changes={
                SpareAmmo = 28,
            },
        },
        {
            class="Heavy", 
            name="Spinfusor MK-X", 
            changes={
                SpareAmmo = 28,
            },
        },
        {
            class="Heavy", 
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
            class="Heavy", 
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
            class="Heavy", 
            name="Spinfusor Disk", 
            changes={
                Damage = 650,
                ExplosiveRadius = 360,
                DirectHitMultiplier = 1.4,
                SpareAmmo=3,
            },
        },
        ---------------------
        -- DOOMBRINGER
        ---------------------

        ---------------------
        -- BRUTE
        ---------------------
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
    },
}

for modIdx, modDef in pairs(itemChangeDefs.mods) do
    -- Find item/s to apply on
    local itemsToApplyTo = {}
    if modDef.group ~= nil then
        for gpIdx, item in pairs(itemChangeDefs.groups[modDef.group]) do
            table.insert(itemsToApplyTo, item)
        end
    else
        table.insert(itemsToApplyTo, {class=modDef.class, name=modDef.name})
    end

    -- Apply each property
    if modDef.changes ~= nil then
        for changeProp, changeVal in pairs(modDef.changes) do
            for itemIdx, item in pairs(itemsToApplyTo) do
                Items.setProperty(item.class, item.name, Items.Properties[changeProp], changeVal)
            end
        end
    end

    -- Apply each valuemod
    if modDef.valueMods ~= nil then
        for itemIdx, item in pairs(itemsToApplyTo) do
            Items.setValueMods(item.class, item.name, utils:valueModsListDefConverter(modDef.valueMods))
        end
    end

end