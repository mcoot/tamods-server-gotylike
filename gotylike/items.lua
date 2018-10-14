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
                {Items.Properties.CollisionSize, 10},
            }
        },
        {
            group="chain", 
            changes={
                -- This is actually slightly smaller than real GOTY
                {Items.Properties.CollisionSize, 40},
            }
        },
        ---------------------
        -- LIGHT
        ---------------------
        
        ---------------------
        -- MEDIUM
        ---------------------

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
            }
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
    for changeIdx, change in pairs(modDef.changes) do
        for itemIdx, item in pairs(itemsToApplyTo) do
            Items.setProperty(item.class, item.name, change[1], change[2])
        end
    end
end