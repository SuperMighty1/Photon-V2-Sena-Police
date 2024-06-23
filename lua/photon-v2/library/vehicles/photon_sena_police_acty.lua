if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title = "Honda Acty Sena"
VEHICLE.Vehicle = "acty_sgm"
VEHICLE.Category = "Photon 2: Sena Police"

VEHICLE.Author = "mighters"

VEHICLE.Properties = {
	Skin = 0,
	Color = Color( 255, 255, 255 ),
}

VEHICLE.BodyGroups = {
	["headlights"] = 0,
	["fbumper"] = 0,
	["turnsignal"] = 1,
}

VEHICLE.SubMaterials = {
	[17] = "photon/liveries/sena_police/acty",
}

VEHICLE.Livery = "photon/liveries/sena_police/acty" 

VEHICLE.Siren = "standby_rsg_mcs_rumbler" 

VEHICLE.Equipment = {
    {
		Category = "Lightbar",
		Options ={
			{
				Option = "Whelen Liberty II",
				Components = {
                    {
                        Component = "photon_sena_liberty_ii_small",
                        Position = Vector( 0, 30, 75 ),
                        Angles = Angle( 1, 90, 0 ),
                        Scale = 1,
                        Bones = {
                            ["foot1"] = { Vector(0, 5, 0), Angle(0, 0, 0), 1 },
                            ["foot2"] = { Vector(0, -5, 0), Angle(0, 0, 0), 1 },
                        },
                        Features = {
                            BrakeMode = { "Emergency.Warning", "MODE3" },
                        },
                    },
				},
			}
		}
	},
    {
		Category = "Siren",
		Options = {
			{
				Option = "Siren 2",
				Components = {
					{
						Component = "photon_sena_police_siren",
						Position = Vector(8, 75.5, 23.7),
						Angles = Angle(0, 180, 180),
						Scale = 0.8,
                        Siren = "standby_rsg_mcs_rumbler"
					},
                    {
						Component = "photon_sena_police_siren",
						Position = Vector(-8, 75.5, 23.7),
						Angles = Angle(0, 180, 180),
						Scale = 0.8,
                        --Siren = "standby_rsg_mcs_rumbler"
					},
				},
                Props = {
                    {
                        Name = "@pushbar",
                        Model = "models/supermighty/fm2charger_setina.mdl",
                        Position = Vector( 0, 68.2, 22.5 ),
                        Angles = Angle( 0, 90, 0 ),
                        Scale = Vector( 0.9, 0.7, 0.9),
                    },
                },
			}
		},
	},
}

VEHICLE.Schema = {
    ["Emergency.Warning"] = {
        { Label = "PRIMARY" },
        { Mode = "MODE3", Label = "RESPONSE" },
    },
}
