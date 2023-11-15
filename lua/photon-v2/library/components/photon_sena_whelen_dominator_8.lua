if (Photon2.ReloadComponentFile()) then return end
local COMPONENT = Photon2.LibraryComponent()

COMPONENT.Author = "Photon"

COMPONENT.Credits = {
	Model = "SGM",
	Code = "Schmal"
}

COMPONENT.PrintName = [[Sena Dominator 8]]

COMPONENT.Model = "models/sentry/props/dominator8.mdl"


COMPONENT.Templates = {
	["2D"] = {
		Dominator = {
			Width 	= 6.8,
			Height	= 7,
			Shape = PhotonDynamicMaterial.GenerateLightQuad("photon/lights/sgm_ion_left_shape.png").MaterialName,
			Detail = PhotonDynamicMaterial.GenerateLightQuad("photon/lights/sgm_ion_left_detail.png").MaterialName,
			Bloom = PhotonDynamicMaterial.GenerateBloomQuad("photon/lights/sgm_ion_left_bloom.png").MaterialName,
			Scale = 2
		},
	},
}

COMPONENT.StateMap = "[A] 1 2 3 4 5 6 7 8"

COMPONENT.Elements = { 
	[1] = { "Dominator", Vector( -0.2, -14.75, 0.01 ), Angle( 0, 0, 0 ) },
    [2] = { "Dominator", Vector( -0.2, 14.75, 0.01 ), Angle( 0, 0, 0 ) },
    [3] = { "Dominator", Vector( -0.2, -10.52, 0.01 ), Angle( 0, 0, 0 ) },
    [4] = { "Dominator", Vector( -0.2, 10.52, 0.01 ), Angle( 0, 0, 0 ) },
    [5] = { "Dominator", Vector( -0.2, -6.33, 0.01 ), Angle( 0, 0, 0 ) },
    [6] = { "Dominator",  Vector( -0.2, 6.33, 0.01 ), Angle( 0, 0, 0 ) },
    [7] = { "Dominator", Vector( -0.2, -2.14, 0.01 ), Angle( 0, 0, 0 ) },
    [8] = { "Dominator", Vector( -0.2, 2.14, 0.01 ), Angle( 0, 0, 0 ) }
}

COMPONENT.ElementGroups = {
	["OUT"] = { 1, 2, 3, 4 },
    ["IN"] = { 5, 6, 7, 8 },
}

local sequence = Photon2.SequenceBuilder.New

COMPONENT.Segments = {
	ALL = {
		Frames = {
			[1] = "OUT",
            [2] = "IN",
		},
		Sequences = {
			["ON"] = { 1, 1, 1, 1, 2, 2, 2, 2 },
		}
	},
}

COMPONENT.Inputs = {
	["Emergency.Warning"] = {
		["MODE1"] = {
			ALL = "ON",
		},
		["MODE2"] = {
			ALL = "ON",
		},
		["MODE3"] = {
			ALL = "ON",
		}
	},
    ["Emergency.Directional"] = {

    }
}