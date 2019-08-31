--- vvv Change to true to set up admin and moderator roles! Make sure you set the passwords! vvv
local setupRoles = false

local commands = {
    {
        name      = "NextMap",
        arguments = {
            {"MapId", Admin.Command.ArgumentType.Int},
        },
        func      = function (player, role, MapId)
            if Admin.Game.NextMap(MapId) then
                Admin.SendConsoleMessageToPlayer(player, "Set next map to " .. MapId)
            else
                Admin.SendConsoleMessageToPlayer(player, "Failed to set next map to " .. MapId)
            end
            
        end,
    },
    {
        name      = "StartMap",
        arguments = {},
        func      = function (player, role)
            Admin.Game.StartMap()
            Admin.SendConsoleMessageToPlayer(player, "Map started")
        end,
    },
    {
        name      = "EndMap",
        arguments = {},
        func      = function (player, role)
            Admin.Game.EndMap()
            Admin.SendConsoleMessageToPlayer(player, "Map ended")
        end,
    },
}

local roles = {
    {
        name     = "admin",
        password = "gotytest", -- <<< Set the password!
        commands = {"NextMap", "StartMap", "EndMap"},
        canLua   = true, -- Admin can execute arbitrary Lua!
    },
    {
        name     = "mod",
        password = "moderator", -- <<< Set the password!
        commands = {"NextMap", "StartMap", "EndMap"},
        canLua   = false,
    },
}

if setupRoles then
    for cmdIdx, command in pairs(commands) do
        Admin.Command.define(command.name, command.arguments, command.func)
    end
    
    for roleIdx, role in pairs(roles) do
        Admin.Roles.add(role.name, role.password, role.canLua)
        for cmdIdx, cmdName in pairs(role.commands) do
            Logger.debug("Adding allowed command " .. cmdName .. " to role " .. role.name)
            Admin.Roles.addAllowedCommand(role.name, cmdName)
        end
    end
end