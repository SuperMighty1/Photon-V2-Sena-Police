if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title = "Go-4 Sena Police"
VEHICLE.Vehicle = "go4_sgm"
VEHICLE.Category = "Photon 2: Sena Police"
VEHICLE.Author = "mighters"
VEHICLE.Properties = {
	Skin = 0,
	Color = Color( 255, 255, 255 ),
}

VEHICLE.SubMaterials = {
	[14] = "photon/liveries/sena_police/go4",
}

VEHICLE.Livery = "photon/liveries/sena_police/go4" 

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
                        Position = Vector( 0, -9, 83.36 ),
                        Angles = Angle( 1.5, 90, 0 ),
                        Scale = 1,
                        Bones = {
                            ["foot1"] = { Vector(0, 5, 0), Angle(0, 0, 0), 1 },
                            ["foot2"] = { Vector(0, -5, 0), Angle(0, 0, 0), 1 },
                        },
                    },
				},
			}
		}
	},
}

VEHICLE.Schema = {
    ["Emergency.Warning"] = {
        { Label = "PRIMARY" },
        { Mode = "MODE3", Label = "RESPONSE" },
    },
}
