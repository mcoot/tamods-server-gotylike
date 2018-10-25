-- Game Rules
ServerSettings.TimeLimit = 25
ServerSettings.WarmupTime = 120
ServerSettings.WarmupTime = 10
ServerSettings.RespawnTime = 5
ServerSettings.SniperRespawnDelay = 5
ServerSettings.TeamAssignType = TeamAssignTypes.Unbalanced
ServerSettings.AutoBalanceTeams = false
ServerSettings.CTFCapLimit = 7
ServerSettings.FriendlyFire = true
ServerSettings.FriendlyFireMultiplier = 1
ServerSettings.BaseAssets = false

-- Vehicles
ServerSettings.GravCycleLimit = 16
ServerSettings.BeowulfLimit = 1
ServerSettings.ShrikeLimit = 1
ServerSettings.GravCycleSpawnTime = 30
ServerSettings.BeowulfSpawnTime = 600
ServerSettings.ShrikeSpawnTime = 420

-- Vehicles testing
-- ServerSettings.GravCycleLimit = 16
-- ServerSettings.BeowulfLimit = 16
-- ServerSettings.ShrikeLimit = 16
-- ServerSettings.GravCycleSpawnTime = 2
-- ServerSettings.BeowulfSpawnTime = 2
-- ServerSettings.ShrikeSpawnTime = 2

-- Weapon bans

-- Limit all classes to two weapons
ServerSettings.DisabledEquipPoints.add("Light", Loadouts.EquipPoints.Tertiary)
ServerSettings.DisabledEquipPoints.add("Medium", Loadouts.EquipPoints.Tertiary)
ServerSettings.DisabledEquipPoints.add("Heavy", Loadouts.EquipPoints.Tertiary)