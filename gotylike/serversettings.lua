Core.AllowUnmoddedClients = false

-- Limit all classes to two weapons
ServerSettings.DisabledEquipPoints.add("Light", Loadouts.EquipPoints.Tertiary)
ServerSettings.DisabledEquipPoints.add("Medium", Loadouts.EquipPoints.Tertiary)
ServerSettings.DisabledEquipPoints.add("Heavy", Loadouts.EquipPoints.Tertiary)

defaultGotySettings = {
    -- Time settings
    TimeLimit = 25,
    WarmupTime = 120,
    RespawnTime = 5,
    SniperRespawnDelay = 5,
    EndMatchWaitTime = 45,
    AmmoPickupLifespan = 60,
    CTFFlagTimeout = 40,
    -- Team settings
    TeamAssignType = TeamAssignTypes.Unbalanced,
    AutoBalanceTeams = false,
    FriendlyFire = true,
    FriendlyFireMultiplier = 1,
    TeamCredits = true,
    BaseAssets = false,
    -- Score
    CTFCapLimit = 7,

    -- Vehicles
    VehiclesEarnedWithCredits = true,
    GravCycleLimit = 16,
    BeowulfLimit = 1,
    ShrikeLimit = 1,
    GravCycleCost = 5000,
    BeowulfCost = 25000,
    ShrikeCost = 40000,
    GravCycleEjectionSeat = false,
    BeowulfEjectionSeat = false,
    ShrikeEjectionSeat = false,
    
    -- Inventory call-in
    EnableInventoryCallIn = true,
    InventoryStationsRestoreEnergy = true,
    InventoryCallInBlocksPlayers = true,
    InventoryCallInCost = 4000,
    InventoryCallInBuildUpTime = 2.0,
    InventoryCallInCooldownTime = 10.0,

    -- GOTY fixes
    UseGOTYShieldPack = true,
    UseGOTYBXTCharging = true,
    RageThrustPackDependsOnCapperSpeed = false,
}

-- Function to set or override any settings
function applyServerSettings(settings)
    for setting, value in pairs(settings) do
        ServerSettings[setting] = value
    end
end

-- Apply GOTY settings at preset load time
applyServerSettings(defaultGotySettings)