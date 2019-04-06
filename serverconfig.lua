Logger.debug("----- Loading GOTYLike Preset -----")

-- Import the GOTYLike preset
require("gotylike/main")

Logger.debug("----- GOTYLike Preset Applied -----")

-- Server Information
ServerSettings.Description = "My Custom GOTY Server"
ServerSettings.Motd = "This is my GOTY server"
-- ServerSettings.Password = "some-password"
ServerSettings.GameSettingMode = ServerSettings.GameSettingModes.GOTY

-- Map Rotation
-- ServerSettings.MapRotation.add(Maps.Arena.WalledIn)
-- ServerSettings.MapRotation.add(Maps.TDM.DrydockNight)
ServerSettings.MapRotation.add(Maps.CTF.ArxNovena)
ServerSettings.MapRotation.add(Maps.CTF.Katabatic)
ServerSettings.MapRotation.add(Maps.CTF.DX)
ServerSettings.MapRotation.add(Maps.CTF.Crossfire)
ServerSettings.MapRotation.add(Maps.CTF.Terminus)
ServerSettings.MapRotation.add(Maps.CTF.Sunstar)
ServerSettings.MapRotation.add(Maps.CTF.Drydock)
ServerSettings.MapRotation.add(Maps.CTF.BellaOmegaNS)

-- Uncomment below to enable event logging
-- Core.EventLogging = true