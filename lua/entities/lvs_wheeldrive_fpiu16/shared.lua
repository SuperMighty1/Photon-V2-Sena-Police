
ENT.Base = "lvs_base_wheeldrive"

ENT.PrintName = "crown vic"
ENT.Author = "sgm"
ENT.Information = ""
ENT.Category = "[LVS] SGM"

ENT.Spawnable			= true -- set to "true" to make it spawnable
ENT.AdminSpawnable		= false

ENT.SpawnNormalOffset = 40 -- spawn normal offset, raise to prevent spawning into the ground
--ENT.SpawnNormalOffsetSpawner = 0 -- offset for ai vehicle spawner

ENT.MDL = "models/sentry/cvpi_hd.mdl"
--ENT.MDL_DESTROYED = "models/props_interiors/Furniture_Couch02a.mdl"
--[[
ENT.GibModels = {
	"models/gibs/manhack_gib01.mdl",
	"models/gibs/manhack_gib02.mdl",
	"models/gibs/manhack_gib03.mdl",
	"models/gibs/manhack_gib04.mdl",
	"models/props_c17/canisterchunk01a.mdl",
	"models/props_c17/canisterchunk01d.mdl",
	"models/props_c17/oildrumchunk01a.mdl",
	"models/props_c17/oildrumchunk01b.mdl",
	"models/props_c17/oildrumchunk01c.mdl",
	"models/props_c17/oildrumchunk01d.mdl",
	"models/props_c17/oildrumchunk01e.mdl",
}
]]

ENT.AITEAM = 1
--[[
TEAMS:
	0 = FRIENDLY TO EVERYONE
	1 = FRIENDLY TO TEAM 1 and 0
	2 = FRIENDLY TO TEAM 2 and 0
	3 = HOSTILE TO EVERYONE
]]

ENT.MaxHealth = 400 -- max health

--ENT.DSArmorDamageReduction = 0.1 -- damage reduction multiplier. Damage is clamped to a minimum of 1 tho
--ENT.DSArmorDamageReductionType = DMG_BULLET + DMG_CLUB -- which damage type to damage reduce

--ENT.DSArmorIgnoreDamageType = DMG_SONIC -- ignore this damage type completely
--ENT.DSArmorIgnoreForce = 1000 -- add general immunity against small firearms, 1000 = 10mm armor thickness
--ENT.DSArmorBulletPenetrationAdd = 250 -- changes how far bullets can cheat through the body to hit critical hitpoints and armor


--[[
PLEASE READ:
	Ideally you only need change:

	ENT.MaxVelocity -- to change top speed
	ENT.EngineTorque -- to change acceleration speed
	ENT.EngineIdleRPM -- optional: only used for rpm gauge. This will NOT change engine sound.
	ENT.EngineMaxRPM -- optional: only used for rpm gauge. This will NOT change engine sound.

	ENT.TransGears -- in a sane range based on maxvelocity. Dont set 10 gears for a car that only does 10kmh this will sound like garbage. Ideally use a total of 3 - 6 gears

	I recommend keeping everything else at default settings.
	(leave them commented-out or remove them from this script)
]]

ENT.MaxVelocity = 2100 -- max velocity in forward direction in gmod-units/second
--ENT.MaxVelocityReverse = 700 -- max velocity in reverse

--ENT.EngineCurve = 0.65 -- value goes from 0 to 1. Get into a car and type "developer 1" into the console to see the current engine curve
ENT.EngineTorque = 140
ENT.EngineIdleRPM = 900
ENT.EngineMaxRPM = 5500

--ENT.ForceLinearMultiplier = 1 -- multiply all linear forces (such as downforce, wheel side force, ect)
--ENT.ForceAngleMultiplier = 0.5 -- multiply all angular forces such turn stability / inertia. Exception: Wheel/Engine torque. Those remain unchanged.

ENT.TransGears = 4 -- amount of gears in forward direction. NOTE: the engine sound system calculates the  gear ratios based on topspeed and amount of gears. This can not be changed.
ENT.TransGearsReverse = 1 -- amount of gears in reverse direction
ENT.TransMinGearHoldTime = 2 -- minimum time the vehicle should stay in a gear before allowing it to shift again.
ENT.TransShiftSpeed = 0.5 -- in seconds. How fast the transmission handles a shift. The transmission mimics a manual shift by applying clutch, letting off throttle, releasing clutch and applying throttle again even tho it is automatic.
ENT.TransWobble = 1 -- basically how much "play" is in the drivedrain. 
ENT.TransWobbleTime = 0.5 -- in seconds. How long after a shift or after applying throttle the engine will wobble up and down in rpm
ENT.TransWobbleFrequencyMultiplier = 1 -- changes the frequency of the wobble
ENT.TransShiftSound = "common/null.wav"  --change gear shift sound

ENT.SteerSpeed = 2 -- steer speed
ENT.SteerReturnSpeed = 3 -- steer return speed to neutral steer

ENT.FastSteerActiveVelocity = 700 -- at which velocity the steering will clamp the steer angle
ENT.FastSteerAngleClamp = 15 -- to which the steering angle is clamped to when speed is above ENT.FastSteerActiveVelocity
--ENT.FastSteerDeactivationDriftAngle = 7 -- allowed drift angle until ENT.FastSteerActiveVelocity is ignored and the steering becomes unclamped

--ENT.SteerAssistDeadZoneAngle = 1 -- changes how much drift the counter steer system allows before interfering. 1 = 1� of drift without interfering
--ENT.SteerAssistMaxAngle = 15 -- max steering angle the counter steer system is allowed to help the player
--ENT.SteerAssistExponent = 1.5 -- an exponent to the counter steering curve. Just leave it at 1.5
--ENT.SteerAssistMultiplier = 3 -- how "quick" the counter steer system is steering

ENT.MouseSteerAngle = 20 -- smaller value = more direct steer   bigger value = smoother steer, just leave it at 20
--ENT.MouseSteerExponent = 2 -- just leave it at 2. Fixes wobble.

ENT.PhysicsWeightScale = 1.8 -- this is the value you need to change in order to make a vehicle feel heavier. Just leave it at 1 unless you really need to change it
--ENT.PhysicsMass = 1000 -- do not mess with this unless you can balance everything yourself again.
ENT.PhysicsInertia = Vector(1500,1500,1500) -- do not mess with this unless you can balance everything yourself again.
--ENT.PhysicsDampingSpeed = 4000 -- do not mess with this unless you can balance everything yourself again.

--ENT.PhysicsDampingForward = true -- internal physics damping to reduce wobble. Just keep it enabled in forward direction.
--ENT.PhysicsDampingReverse = false -- disabling this in reverse allows for a reverse 180� turn. If you want to go fast in reverse you should set this to true in order to get good stability

ENT.WheelPhysicsMass = 100 -- do not mess with this unless you can balance everything yourself again.
--ENT.WheelPhysicsInertia = Vector(10,8,10) -- do not mess with this unless you can balance everything yourself again.

--ENT.WheelBrakeAutoLockup = false -- set this to true for offroad vehicles. This will engage the brake automatically so you dont have to keep holding the brake/handbrake button
--ENT.WheelBrakeLockupRPM = 50 -- wheel rpm in which the auto-brake is enabled

--ENT.WheelBrakeForce = 400 -- how strong the brakes are. Just leave at 400. Allows for good braking while still allowing some turning. It has some build in ABS but it isnt perfect because even tho velocities say it isnt sliding the wheel will still visually slide in source...

ENT.WheelSideForce = 800 -- basically a sideways cheatforce that gives you better stability in turns. You shouldn't have to edit this.
ENT.WheelDownForce = 500 -- wheels use jeeptire as physprop. To this a downward force is applied to increase traction. You shouldn't have to edit this.

ENT.AllowSuperCharger = true -- allow this vehicle to equip a supercharger?
ENT.SuperChargerVolume = 1 -- change superchager sound volume
ENT.SuperChargerSound = "lvs/vehicles/generic/supercharger_loop.wav" -- change supercharger sound file

ENT.AllowTurbo = true -- allow this vehilce to equip a turbocharger?
ENT.TurboVolume = 1 -- change turbocharger sound volume
ENT.TurboSound = "lvs/vehicles/generic/turbo_loop.wav" -- change turbo sound file
ENT.TurboBlowOff = {"lvs/vehicles/generic/turbo_blowoff1.wav","lvs/vehicles/generic/turbo_blowoff1.wav"} -- change blowoff sound. If you only have one file you can just pass it as a string instead of a table.

--ENT.DeleteOnExplode = false -- remove the vehicle when it explodes?

 --[[
--ENT.RandomColor = {} -- table with colors to set on spawn
	-- accepts colors and skin+color combo:

	-- example variant1:
	ENT.RandomColor = {
		Color(255,255,255),
		Color(255,255,255),
		Color(255,255,255),
		Color(255,255,255),
		Color(255,255,255),
		Color(255,255,255),
	}


	-- example variant2:
	ENT.RandomColor = {
		{
			Skin = 1,
			Color = Color(255,255,255),
			BodyGroups = {
				[1] = 3, -- set bodygroup 1 to 3
				[5] = 7, -- set bodygroup 5 to 7
			},
		},
		{
			Skin = 2,
			Color = Color(255,255,255),
		},
		{
			Skin = 3,
			Color = Color(255,255,255),
		},
		{
			Skin = 4,
			Color = Color(255,255,255),
		},
		{
			Skin = 5,
			Color = Color(255,255,255),
		},
		{
			Skin = 6,
			Color = Color(255,255,255),
			Wheels = {  -- can also color wheels in this variant
				Skin = 0,
				Color = Color(255,255,0),
			},
		},
	}
 ]]
 
--ENT.HornSound = "lvs/horn2.wav" add a horn sound
--ENT.HornSoundInterior = "lvs/horn2.wav" -- leave it commented out, that way it uses the same as ENT.HornSound
--ENT.HornPos = Vector(40,0,35) -- horn sound position
 
--[[ engine sounds ]]
-- valid SoundType's are:
-- LVS.SOUNDTYPE_IDLE_ONLY -- only plays in idle
-- LVS.SOUNDTYPE_NONE -- plays all the time except in idle
-- LVS.SOUNDTYPE_REV_UP -- plays when revving up
-- LVS.SOUNDTYPE_REV_DOWN -- plays when revving down
-- LVS.SOUNDTYPE_ALL -- plays all the time
ENT.EngineSounds = {
	{
		sound = "vehicles/sgmcars/cvpi_simfphys/idle.wav",
		Volume = 1,
		Pitch = 100,
		PitchMul = 25,
		SoundLevel = 75,
		SoundType = LVS.SOUNDTYPE_IDLE_ONLY,
	},
	{
		sound = "vehicles/sgmcars/cvpi_simfphys/mid.wav",
		--sound_int = "path/to/interior/sound.wav",
		Volume = 1, -- adjust volume
		Pitch = 50, -- start pitch value
		PitchMul = 70, -- value that gets added to Pitch at max engine rpm
		SoundLevel = 75, -- if too quiet, adjust soundlevel.
		SoundType = LVS.SOUNDTYPE_NONE,
		UseDoppler = true, -- use doppler system?
	},
}


--[[ exhaust ]]
--[[
ENT.ExhaustPositions = {
	{
		pos = Vector(-100.04,14.72,4.84),
		ang = Angle(0,180,0),
	},
	{
		pos = Vector(-100.04,-14.72,4.84),
		ang = Angle(0,180,0),
	}
}
]]


--[[ lights ]]
ENT.Lights = {}
-- see: https://raw.githubusercontent.com/Blu-x92/lvs_cars/main/zzz_ENT_lights_info.lua?token=GHSAT0AAAAAACFA53CXF42NMFHSXN5VQ2I4ZHD6NBQ
-- or https://discord.com/channels/1036581288653627412/1140195565368508427/1140195750207291403