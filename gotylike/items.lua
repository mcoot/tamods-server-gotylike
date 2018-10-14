local utils = require("gotylike/utils")

local proj_propsToPrint = {
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
}

utils:printItemProps("Medium", "Thumper DX", proj_propsToPrint)



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
        },
        chain = {
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
    },
    mods = {
        ---------------------
        -- GROUPS
        ---------------------
        {
            group="direct_hit_explosives", 
            changes={
                -- Same as GOTY, smaller than OOTB
                {Items.Properties.CollisionSize, 10},
            }
        },
        {
            group="chain", 
            changes={
                -- Smaller than real GOTY, _slightly_ larger than OOTB
                {Items.Properties.CollisionSize, 30},
            }
        },
        ---------------------
        -- LIGHT
        ---------------------
        
        ---------------------
        -- MEDIUM
        ---------------------
        {
            class="Medium", 
            name="Assault Rifle", 
            changes={
                {Items.Properties.Damage, 80},
                {Items.Properties.ClipAmmo, 28},
                {Items.Properties.ReloadTime, 1.53},
                {Items.Properties.FireInterval, 0.11},
                {Items.Properties.MinDamageProportion, 0.75},
                {Items.Properties.MaxDamageRangeProportion, 0.75},
            },
        },
        {
            class="Medium", 
            name="Gast Rifle", 
            changes={
                {Items.Properties.ClipAmmo, 24},
                {Items.Properties.SpareAmmo, 216},
                {Items.Properties.ReloadTime, 1.53},
            },
        },
        {
            class="Medium", 
            name="Thumper DX", 
            changes={
                {Items.Properties.Damage, 600},
                {Items.Properties.DirectHitMultiplier, 1.4},
                {Items.Properties.SpareAmmo, 20},
                {Items.Properties.MinDamageProportion, 0.5},
                {Items.Properties.MaxDamageRangeProportion, 0.5},
                {Items.Properties.MinDamageRangeProportion, 0.9},
            },
        },
        {
            class="Medium", 
            name="Frag Grenade XL", 
            valueMods={
                {ValueMods.ExtraBeltAmmo, 1},
                {ValueMods.BeltDamageRadiusBuff, 0.1},
                {ValueMods.BeltArmorPenetrationBuff, 0.2},
            },
        },
        ---------------------
        -- HEAVY
        ---------------------
        {
            class="Heavy", 
            name="Nova Colt", 
            changes={
                {Items.Properties.ClipAmmo, 6},
                {Items.Properties.SpareAmmo, 72},
                {Items.Properties.LowAmmoCutoff, 1},
                {Items.Properties.ReloadTime, 1.35},
                -- Fire rate slightly slower than GOTY
                {Items.Properties.FireInterval, 0.35},
                {Items.Properties.Damage, 190},
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
        for changeIdx, change in pairs(modDef.changes) do
            for itemIdx, item in pairs(itemsToApplyTo) do
                Items.setProperty(item.class, item.name, change[1], change[2])
            end
        end
    end

    -- Apply each valuemod
    if modDef.valueMods ~= nil then
        for itemIdx, item in pairs(itemsToApplyTo) do
            Items.setValueMods(item.class, item.name, modDef.valueMods)
        end
    end

end