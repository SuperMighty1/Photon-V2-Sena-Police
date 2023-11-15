
--[[------------------------------
	Vehicle file for Photon 2
--------------------------------]]



if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "Sena Police Hellcat"
VEHICLE.Vehicle		= "15charger_hellcat_fm2_sgm"
VEHICLE.Category 	= "Photon 2: Sena Police"
VEHICLE.Author		= "SuperMighty"

VEHICLE.SubMaterials = {
	 [4] = "photon/liveries/sena_police/hellcat",
}

-- Category -> Option (-> Variant)
VEHICLE.Equipment = {
	{
		Category = "Lightbar",
		Options ={
			{
				Option = "Premier Hazard",
				Components = {
					{
						Component = "photon_liberty_ii_sena",
						Position = Vector( 0, -21, 75.8 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.95
					}
				}
			}
		}
	},
	{
		Category = "Grille",
		Options ={
			{
				Option = "Whelen Ion",
				Components = {
					{
						Component = "photon_sena_whelen_ion",
						Position = Vector( 10, 116.5, 35.3 ),
						Angles = Angle( 0, -8.2, 0 ),
						Scale = 1,
						Phase = "A",
					},
					{
						Component = "photon_sena_whelen_ion",
						Position = Vector( -10, 116.5, 35.3 ),
						Angles = Angle( 0, 8.2, 0 ),
						Scale = 1,
						Phase = "B",
					},
				}
			}
		}
	},
}

-- PHOTON2_DEBUG_VEHICLE_HARDRELOAD = false