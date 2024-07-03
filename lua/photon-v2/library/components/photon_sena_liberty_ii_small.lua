if (Photon2.ReloadComponentFile()) then return end
local COMPONENT = Photon2.LibraryComponent()

COMPONENT.Author = "Photon"

COMPONENT.Credits = {
	Model = "SGM",
	Code = "Schmal"
}

COMPONENT.PrintName = [[Whelen Liberty II Sena Small]]

COMPONENT.Model = "models/supermighty/whelen_liberty_ii_british.mdl"

COMPONENT.Templates = {
	["2D"] = {
		Primary = {
			Width 	= 8.7,
			Height	= 8.5,
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/sm_whe_lib_ii_primary_shape.png").MaterialName,
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/sm_whe_lib_ii_primary_detail.png").MaterialName,
			-- Bloom = PhotonMaterial.GenerateBloomQuad("photon/lights/sm_whe_lib_ii_primary_bloom.png").MaterialName,
			Scale = 2
		},
		Corner = {
			Width 	= 12.8,
			Height	= 16,
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/sm_whe_lib_ii_corner_shape.png").MaterialName,
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/sm_whe_lib_ii_corner_detail.png").MaterialName,
			-- Bloom = PhotonMaterial.GenerateBloomQuad("photon/lights/sm_whe_lib_ii_corner_bloom.png").MaterialName,
		},
		Half = {
			Width 	= 6,
			Height	= 4.4,
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/sm_whe_lib_ii_half_shape.png").MaterialName,
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/sm_whe_lib_ii_half_detail.png").MaterialName,
			-- Bloom = PhotonMaterial.GenerateBloomQuad("photon/lights/sm_whe_lib_ii_half_bloom.png").MaterialName,
		},
		Alley = {
			Width 	= 3,
			Height	= 3,
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/sm_whe_lib_ii_alley_shape.png").MaterialName,
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/sm_whe_lib_ii_alley_shape.png").MaterialName,
			-- Bloom = PhotonMaterial.GenerateBloomQuad("photon/lights/sm_whe_lib_ii_alley_bloom.png").MaterialName,
		},
		CornerEdge = {
			Width 	= 4.9,
			Height	= 4,
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/sm_whe_lib_ii_corner_edge_shape.png").MaterialName,
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/sm_whe_lib_ii_corner_edge_detail.png").MaterialName,
			-- Bloom = PhotonMaterial.GenerateBloomQuad("photon/lights/sm_whe_lib_ii_corner_edge_bloom.png").MaterialName,
		},
	},
}

COMPONENT.ElementStates = {
    ["2D"] = {
        ["~OFF2"] = { 
			Inherit = "~B",
			Intensity = 0.5, 
			IntensityTransitions = true 
		},
		["~B"] = {
            Inherit = "B",
            Intensity = 1,
			IntensityGainFactor = 2,
			IntensityLossFactor = 3,
            IntensityLoss = 1,
            IntensityTransitions = true,
		},
	}
}

COMPONENT.StateMap = "[B] 1 2 3 4 5 6 7 8 9 10 13 14 15 16 17 18 19 20 21 22 23 24 25 26 12 11"

COMPONENT.Elements = {
	[1] = { "Primary", Vector( 6.29, 4.8, 0.36 ), Angle( 0, -90, 0 ) },
	[2] = { "Primary", Vector( 6.29, -4.8, 0.36 ), Angle( 0, -90, 0 ) },
	[3] = { "Primary", Vector( 6.29, 12, 0.36 ), Angle( 0, -90, 0 ) },
	[4] = { "Primary", Vector( 6.29, -12, 0.36 ), Angle( 0, -90, 0 ) },
	[5] = { "Half", Vector( 6.29, 17.3, 0.36 ), Angle( 0, -90, 0 ) },
	[6] = { "Half", Vector( 6.29, -17.3, 0.36 ), Angle( 0, -90, 0 ) },
	[7] = { "Corner", Vector( 4.08, 23.7, 0.39 ), Angle( 0, -90 + 45.9, 0 ) },
	[8] = { "Corner", Vector( 4.08, -23.7, 0.39 ), Angle( 0, -90 - 45.9, 0 ) },
	[9] = { "Corner", Vector( -4.08, 23.7, 0.39 ), Angle( 0, 90 - 45.9, 0 ) },
	[10] = { "Corner", Vector( -4.08, -23.7, 0.39 ), Angle( 0, 90 + 45.9, 0 ) },
	[11] = { "Primary", Vector( -6.29, 12, 0.36 ), Angle( 0, 90, 0 ) },
	[12] = { "Primary", Vector( -6.29, -12, 0.36 ), Angle( 0, 90, 0 ) },
	[13] = { "Primary", Vector( -6.29, 4.8, 0.36 ), Angle( 0, 90, 0 ) },
	[14] = { "Primary", Vector( -6.29, -4.8, 0.36 ), Angle( 0, 90, 0 ) },
	[15] = { "Half", Vector( -6.29, 17.3, 0.36 ), Angle( 0, 90, 0 ) },
	[16] = { "Half", Vector( -6.29, -17.3, 0.36 ), Angle( 0, 90, 0 ) },
	[17] = { "CornerEdge", Vector( 6.34, 20.89, 0.39 ), Angle( 0, -90, 0 ) },
	[18] = { "CornerEdge", Vector( 6.34, -20.89, 0.39 ), Angle( 0, -90, 0 ), Width = -4.9 },
	[19] = { "CornerEdge", Vector( 1.2, 25.89, 0.39 ), Angle( 0, 0, 0 ), Width = -4.9 },
	[20] = { "CornerEdge", Vector( 1.2, -25.89, 0.39 ), Angle( 0, 180, 0 ) },
	[21] = { "CornerEdge", Vector( -1.2, 25.89, 0.39 ), Angle( 0, 0, 0 ) },
	[22] = { "CornerEdge", Vector( -1.2, -25.89, 0.39 ), Angle( 0, 180, 0 ), Width = -4.9  },
	[23] = { "CornerEdge", Vector( -6.34, 20.89, 0.39 ), Angle( 0, 90, 0 ), Width = -4.9  },
	[24] = { "CornerEdge", Vector( -6.34, -20.89, 0.39 ), Angle( 0, 90, 0 ) },

}

COMPONENT.ElementGroups = {
    ["RIGHT"] = { 5, 9, 7, 15, 17, 19, 21, 23 },
    ["LEFT"] = { 6, 8, 10, 16, 18, 20, 22, 24},
    ["RIGHT_IN"] = { 1, 3, 13, 11 },
    ["LEFT_IN"] = { 2, 4, 14, 12 },
    ["TA_LEFT"] = { 12 },
}

local sequence = Photon2.SequenceBuilder.New

COMPONENT.Segments = {
	Mesh = {
		Frames = {
            [1] = "RIGHT",
            [2] = "RIGHT_IN",
            [3] = "LEFT",
            [4] = "LEFT_IN",
		},
		Sequences = {
			ON = { 1,2,1,2,1,2,1,2,3,4,3,4,3,4,3,4}, --1,2,1,2,1,2,3,4,3,4,3,4 }
		}
	},
    Traffic = {
		Frames = {
            [1] = "[A] 16",
            [2] = "[A] 16 12",
            [3] = "[A] 16 12 14",
            [4] = "[A] 16 12 14 13",
            [5] = "[A] 16 12 14 13 11",
            [6] = "[A] 16 12 14 13 11 15",
            [7] = "[A] 12 14 13 11 15",
            [8] = "[A] 14 13 11 15",
            [9] = "[A] 13 11 15",
            [10] = "[A] 11 15",
            [11] = "[A] 15",
            [12] = "[A] 13 14",
            [13] = "[A] 13 14 11 12",
            [14] = "[A] 13 14 11 12 15 16",
            [15] = "[A] 11 12 15 16",
            [16] = "[A] 15 16",
			[17] = "[R] 16 12 14 13 11 15",
		},
		Sequences = {
            LEFT = sequence():Sequential( 1, 6 ):Hold( 1 ):Sequential( 6, 11 ):Sequential( 1, 6 ):Hold( 1 ):Sequential( 6, 11 ):Sequential( 1, 6 ):Hold( 1 ):Sequential( 6, 11 ):StretchAll( 2 ):Steady( 0, 4 ):DoubleFlash(17, 17):Steady(17, 16),
            RIGHT = sequence():Sequential( 11, 6 ):Hold( 1 ):Sequential( 6, 1 ):StretchAll( 2 ):Steady( 0, 4 ),
            CENOUT = sequence():Sequential( 12, 14 ):Sequential( 14, 16 ):StretchAll( 3 ):Steady( 0, 4 )
		}
	},
    Brake = {
		Frames = {
            [1] = "[R] 11 12",
		},
		Sequences = {
			ON = { 1 }
		}
	},
	SignalLeft = {
		Frames = {
            [1] = "[A] 15",
			[2] = "[A] 16",
			[3] = "[A] 15 16"
		},
		Sequences = {
			ON = sequence():Alternate( 1, 0, 10 ),
			ON2 = sequence():Alternate( 2, 0, 10 ),
			ON3 = sequence():Alternate( 3, 0, 10 ),
		}
	},
	Park = {
		Frames = {
            [1] = "[~B] 1 2 3 4 11 13 14 12 [~OFF2] 5 6 7 8 9 10 15 16 17 18 19 20 21 22 23 24",
			[2] = "[~B] 5 6 7 8 9 10 15 16 17 18 19 20 21 22 23 24 [~OFF2] 1 2 3 4 11 13 14 12"
		},
		Sequences = {
			ON = sequence():Alternate( 1, 2, 9 )
		},
	},
}

COMPONENT.InputPriorities = {
    ["Virtual.Brake"] = 100,
	["Virtual.Signal"] = 110,
	["Virtual.ParkedWarning"] = 64,
}
COMPONENT.VirtualOutputs = {
	["Virtual.Signal"] = {
		{
			Mode = "LEFT",
			Conditions = {
				["Vehicle.Signal"] = { "LEFT" },
			--	["Emergency.Warning"] = { "MODE3" }
			}
		},
		{
			Mode = "RIGHT",
			Conditions = {
				["Vehicle.Signal"] = { "RIGHT" },
				--["Emergency.Warning"] = { "MODE3" }
			}
		},
		{
			Mode = "HAZARD",
			Conditions = {
				["Vehicle.Signal"] = { "HAZARD" },
				--["Emergency.Warning"] = { "MODE3" }
			}
		}
	},
    ["Virtual.Brake"] = {
        {
            Mode = "BRAKE",
            Conditions = {
                ["Vehicle.Brake"] = { "BRAKE" },
                --["Emergency.Warning"] = { "MODE1", "MODE2", "MODE3" }
            }
        }
    },
	["Virtual.ParkedWarning"] = {
		{
			Mode = "MODE3",
			Conditions = {
				["Vehicle.Transmission"] = { "PARK" },
				["Emergency.Warning"] = { "MODE3" }
			}
		}
	},
}

COMPONENT.Inputs = {
	["Emergency.Warning"] = {
		["MODE3"] = {
			Mesh = "ON",
		},
	},
    ["Emergency.Directional"] = {
		["LEFT"] = { Traffic = "LEFT" },
        ["RIGHT"] = { Traffic = "RIGHT" },
        ["CENOUT"] = { Traffic = "CENOUT" },
    },
	--["Vehicle.Brake"] = {
	--},
    ["Virtual.Brake"] = { 
		["BRAKE"] = { Brake = "ON" } 
	},
	["Virtual.Signal"] = {
		["LEFT"] = { SignalLeft = "ON" },
		["RIGHT"] = { SignalLeft = "ON2" },
		["HAZARD"] = { SignalLeft = "ON3"},
	},
	["Virtual.ParkedWarning"] = {
		["MODE3"] = { Park = "ON" } 
	},
}