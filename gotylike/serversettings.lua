-- Game Rules
ServerSettings.TimeLimit = 25
ServerSettings.WarmupTime = 120
ServerSettings.RespawnTime = 5
ServerSettings.SniperRespawnDelay = 5
ServerSettings.TeamAssignType = TeamAssignTypes.Unbalanced
ServerSettings.AutoBalanceTeams = false
ServerSettings.CTFCapLimit = 7
ServerSettings.FriendlyFire = true
ServerSettings.FriendlyFireMultiplier = 1
ServerSettings.BaseAssets = false
ServerSettings.AmmoPickupLifespan = 3
ServerSettings.CTFFlagTimeout = 40

-- Game Rules testing
-- ServerSettings.TimeLimit = 1
ServerSettings.WarmupTime = 20
-- ServerSettings.OvertimeLimit = 1

-- Vehicles
ServerSettings.GravCycleLimit = 16
ServerSettings.BeowulfLimit = 1
ServerSettings.ShrikeLimit = 1
ServerSettings.GravCycleSpawnTime = 30
ServerSettings.BeowulfSpawnTime = 600
ServerSettings.ShrikeSpawnTime = 420

-- Vehicles testing
ServerSettings.GravCycleLimit = 16
ServerSettings.BeowulfLimit = 1
ServerSettings.ShrikeLimit = 2
ServerSettings.GravCycleSpawnTime = 10
ServerSettings.BeowulfSpawnTime = 120
ServerSettings.ShrikeSpawnTime = 60

-- Weapon bans

-- Limit all classes to two weapons
ServerSettings.DisabledEquipPoints.add("Light", Loadouts.EquipPoints.Tertiary)
ServerSettings.DisabledEquipPoints.add("Medium", Loadouts.EquipPoints.Tertiary)
ServerSettings.DisabledEquipPoints.add("Heavy", Loadouts.EquipPoints.Tertiary)

-- Access Control
Admin.Roles.add("admin", "gotytest", true)

Core.AllowUnmoddedClients = false