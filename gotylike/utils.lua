local utils = {}

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

return utils