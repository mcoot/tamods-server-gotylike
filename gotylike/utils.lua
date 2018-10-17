local utils = {}

-- Converts a list of mods in the form of {ModNameA = ValueA, ModNameB = ValueB}
-- Into the TAMods accepted form of { {ValueMods.ModNameA, ValueA}, {ValueMods.ModNameB, ValueB} }
function utils:valueModsListDefConverter(valueModsList)
    local res = {}
    for modName, modVal in pairs(valueModsList) do
        table.insert(res, {ValueMods[modName], modVal})
    end
    return res
end

-- Helper for creating a custom class
function utils:addClass(name, ootbBase, armorClass, weapons, beltItems, packs, skins)
    ServerSettings.CustomClasses.new(name, ootbBase, armorClass)
    for k, v in pairs(weapons) do
        ServerSettings.CustomClasses.addItem(name, v["class"] or ootbBase, v["name"] or v)
    end
    for k, v in pairs(beltItems) do
        ServerSettings.CustomClasses.addItem(name, v["class"] or ootbBase, v["name"] or v)
    end
    for k, v in pairs(packs) do
        ServerSettings.CustomClasses.addItem(name, v["class"] or ootbBase, v["name"] or v)
    end
    for k, v in pairs(skins) do
        ServerSettings.CustomClasses.addItem(name, v["class"] or ootbBase, v["name"] or v)
    end
end

-- Log out the given set of properties for the given item
function utils:printItemProps(class, item, propNames)
    for idx, prop in pairs(propNames) do
        local propVal = Items.getProperty(class, item, Items.Properties[prop])
        if (propVal == nil) then
            Logger.debug("||| " .. item .. " | " .. prop .. " = nil")
        else
            Logger.debug("||| " .. item .. " | " .. prop .. " = " .. tostring(propVal))
        end
        
    end
end

function utils:printItemValueMods(class, item)
    local vms = Items.getValueMods(class, item)
    for idx, vm in pairs(vms) do
        Logger.debug("||| " .. item .. " | " .. vm[1] .. " = " .. tostring(vm[2]))
    end
end

return utils