Photon2.RegisterSiren(
	{
		Name = "standby_rsg_mcs_rumbler",
		Make = "Standby RSG",
		Model = "MCS Rumbler",
		Author = "SuperMighty, SGM",
		Sounds = {
			["WAIL"] = { Sound = "emv/sirens/standby_rsg_mcs/wail_rumble.wav", 	Default = "T1" },
			["YELP"] = { Sound = "emv/sirens/standby_rsg_mcs/yelp_rumble.wav", 	Default = "T2" },
			["PRIORITY"] = { Sound = "emv/sirens/standby_rsg_mcs/prio_rumble.wav", Icon = "bolt",	Default = "T3", Label = "PRTY" },
			["HILO"] = { Sound = "emv/sirens/standby_rsg_mcs/hilo_rumble.wav", Icon = "hilo",	Default = "T4" },
			["AIRHORN"]  = { Sound = "emv/sirens/standby_rsg_mcs/horn_rumble.wav", Default = "AIR", Label = "AIR" },
			["MANUAL"]  = { Sound = "emv/sirens/standby_rsg_mcs/wail_rumble.wav", 	Default = "MAN", Label = "MAN" },
		}
	}
)