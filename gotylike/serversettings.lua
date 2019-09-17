-- Game Rules
ServerSettings.TimeLimit = 25
ServerSettings.WarmupTime = 120
ServerSettings.RespawnTime = 5
ServerSettings.EndMatchWaitTime = 46
ServerSettings.SniperRespawnDelay = 5
ServerSettings.TeamAssignType = TeamAssignTypes.Unbalanced
ServerSettings.AutoBalanceTeams = false
ServerSettings.CTFCapLimit = 7
ServerSettings.FriendlyFire = true
ServerSettings.FriendlyFireMultiplier = 1
ServerSettings.BaseAssets = false
ServerSettings.AmmoPickupLifespan = 60
ServerSettings.CTFFlagTimeout = 40
ServerSettings.TeamCredits = true

-- Make inventory stations give energy
ServerSettings.InventoryStationsRestoreEnergy = true
-- Disable heavy shield pack impulse reduction
ServerSettings.UseGOTYShieldPack = true
-- Re-enable GOTY BXT charging
ServerSettings.UseGOTYBXTCharging = true
-- Re-enable Airburst on the Jackal
-- ServerSettings.UseGOTYJackalAirburst = true
-- Disable the OOTB Rage effect causing Thrust speed to depend on the capper's grab speed
ServerSettings.RageThrustPackDependsOnCapperSpeed = false
-- Enable using the laser targeter to call in Inv Stations
ServerSettings.EnableInventoryCallIn = true
ServerSettings.InventoryCallInBlocksPlayers = true
ServerSettings.InventoryCallInCost = 4000
ServerSettings.InventoryCallInBuildUpTime = 2.0
ServerSettings.InventoryCallInCooldownTime = 10.0

-- Game Rules testing
-- ServerSettings.TimeLimit = 1
-- ServerSettings.CTFCapLimit = 1
-- ServerSettings.WarmupTime = 10
-- ServerSettings.OvertimeLimit = 0

-- Vehicles
ServerSettings.VehiclesEarnedWithCredits = true
ServerSettings.GravCycleLimit = 16
ServerSettings.BeowulfLimit = 1
ServerSettings.ShrikeLimit = 1

ServerSettings.GravCycleCost = 5000
ServerSettings.BeowulfCost = 25000
ServerSettings.ShrikeCost = 40000

ServerSettings.GravCycleEjectionSeat = false
ServerSettings.BeowulfEjectionSeat = false
ServerSettings.ShrikeEjectionSeat = false

-- Vehicles testing
-- ServerSettings.InventoryCallInCost = 0
-- ServerSettings.GravCycleCost = 0
-- ServerSettings.BeowulfCost = 0
-- ServerSettings.ShrikeCost = 0

-- Weapon bans

-- Limit all classes to two weapons
ServerSettings.DisabledEquipPoints.add("Light", Loadouts.EquipPoints.Tertiary)
ServerSettings.DisabledEquipPoints.add("Medium", Loadouts.EquipPoints.Tertiary)
ServerSettings.DisabledEquipPoints.add("Heavy", Loadouts.EquipPoints.Tertiary)

Core.AllowUnmoddedClients = false