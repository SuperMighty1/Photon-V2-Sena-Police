include("shared.lua")

function ENT:UpdatePoseParameters( steer, speed_kmh, engine_rpm, throttle, brake, handbrake, clutch, gear, temperature, fuel, oil, ammeter )
	self:SetPoseParameter( "vehicle_steer", steer ) -- keep default behavior
	self:SetPoseParameter( "vehicle_speedo", speed_kmh * 0.621371 * 0.75)
	self:SetPoseParameter( "vehicle_guage", (engine_rpm * 0.11) / 7000 )
	--self:SetPoseParameter( "vehicle_fuel", fuel )
	--self:SetPoseParameter( "vehicle_temp", temperature )
	--self:SetPoseParameter( "vehicle_gear", -gear )
	--self:SetPoseParameter( "vehicle_gas", throttle )
	--self:SetPoseParameter( "vehicle_brake", brake )
	--self:SetPoseParameter( "vehicle_handbrake", handbrake )
	--self:SetPoseParameter( "vehicle_on", math.clamp(engine_rpm / 7000, 0, 1) )
	--[[ add your gauges:

	
	self:SetPoseParameter( "temp_gauge", temperature )
	
	
	self:SetPoseParameter( "alt_gauge", ammeter )
	
	
	self:SetPoseParameter( "clutch_pedal", clutch )
	]]
	-- no need to call invalidatebonecache. Its called automatically after this function.
end

--[[

function ENT:OnSpawn()
end

-- use this instead of ENT:OnRemove
function ENT:OnRemoved()
end

-- use this instead of ENT:Think()
function ENT:OnFrame()
end

function ENT:LVSPreHudPaint( X, Y, ply )
	return true -- return false to prevent original hud paint from running
end

-- called when the engine is turned on or off
function ENT:OnEngineActiveChanged( Active )
	if Active then
		self:EmitSound( "lvs/vehicles/generic/engine_start1.wav", 75, 100,  LVS.EngineVolume )
	else
		self:EmitSound( "vehicles/jetski/jetski_off.wav", 75, 100,  LVS.EngineVolume )
	end
end

-- called when either an ai is activated/deactivated or when a player is sitting/exiting the driver seat
function ENT:OnActiveChanged( Active )
end

function ENT:CalcViewOverride( ply, pos, angles, fov, pod )
	return pos, angles, fov
end

function ENT:CalcViewDirectInput( ply, pos, angles, fov, pod )
	return LVS:CalcView( self, ply, pos, angles,  fov, pod )
end

function ENT:CalcViewMouseAim( ply, pos, angles, fov, pod )
	return LVS:CalcView( self, ply, pos, angles,  fov, pod )
end

function ENT:CalcViewPassenger( ply, pos, angles, fov, pod )
	return LVS:CalcView( self, ply, pos, angles, fov, pod )
end
]]