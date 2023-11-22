if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "Sena Police Explorer"
VEHICLE.Vehicle		= "lvs_sm_fpiu"
VEHICLE.Category 	= "Photon 2: Sena Police"
VEHICLE.Author		= "SuperMighty"


--VEHICLE.Vehicle2 = {
--	    Class = "lvs_wheeldrive_fpiu16"
--}

VEHICLE.SubMaterials = {
	 [14] = "photon/liveries/sena_police/2016_explorer",
}

VEHICLE.Siren = {
	[1] = "standby_rsg_mcs_rumbler",
}

-- Category -> Option (-> Variant)
VEHICLE.Equipment = {
    {
		Category = "Lightbar",
		Options ={
			{
				Option = "Whelen Liberty II",
				Components = {
					{
						Component = "photon_liberty_ii_sena",
						Position = Vector( 0, -12, 86.4 ),
						Angles = Angle( 2, 90, 0 ),
						Scale = 0.985
					}
				}
			}
		}
	},
	{
		Category = "Rear Window",
		Options ={
			{
				Option = "Whelen Dominator",
				Components = {
					{
						Component = "photon_sena_whelen_dominator_8",
						Position = Vector( 0, -103, 73.1 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1
					}
				}
			}
		}
	},
	{
		Category = "Pushbar",
		Options ={
			{
				Option = "Whelen Ion",
                BodyGroups = {
					{ BodyGroup = "Pushbar", Value = 1 }
				},
				Components = {
					{
						Component = "photon_sena_whelen_ion",
						Position = Vector( 12, 119.3, 49.5 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						Phase = "A",
					},
					{
						Component = "photon_sena_whelen_ion",
						Position = Vector( -12, 119.3, 49.5 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						Phase = "B",
					},
				}
			}
		}
	},
    {
		Category = "Spotlights",
		Options = {
			{
				Option = "Decorative (Body Group)",
				BodyGroups = {
					{ BodyGroup = "Spotlights", Value = 1 }
				}
			}
		}
	},
    {
		Category = "Headlights",
		Options = {
			{
				Option = "Decorative (Body Group)",
				BodyGroups = {
					{ BodyGroup = "Headlights", Value = 1 }
				}
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
						Position = Vector(-13.8, 123, 30),
						Angles = Angle(0, 180, 180),
						Scale = 1.2,
                        Siren = "standby_rsg_mcs_rumbler"
					},
                    {
						Component = "photon_sena_police_siren",
						Position = Vector(13.8, 123, 30),
						Angles = Angle(0, 180, 180),
						Scale = 1.2,
                        Siren = "standby_rsg_mcs_rumbler"
					},
				}
			}
		}
	},
    {
		Category = "License Plates",
		Options = {
			{
				Option = "License Plates",
				Props = {
					{
						Name = "@rear_plate",
						Model = "models/japanplate/licenseplate.mdl",
						Position = Vector( 0, -119.8, 49 ),
						Angles = Angle( -17.7, -90, 0 ),
						Scale = 1,
						SubMaterials = {
							[0] = "photon/liveries/sena_police/plate/sena_plate_rear",
						},
					},
					{
						Inherit = "@rear_plate",
						Name = "@front_plate",
						Angles = Angle( 0, 90, 0 ),
						Position = Vector( 0, 117.9, 26.8 ),
                        SubMaterials = {
							[0] = "photon/liveries/sena_police/plate/sena_plate_front",
						},
					},
				}
			}
		}
	},
}

-- PHOTON2_DEBUG_VEHICLE_HARDRELOAD = false