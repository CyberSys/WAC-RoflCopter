if not wac then return end

ENT.Base 		= "wac_hc_base"
ENT.Type 		= "anim"
ENT.PrintName		= "RoflCopter"
ENT.Author		= "Dr. Matt"
ENT.Category		= wac.aircraft.spawnCategoryC
ENT.Spawnable		= true
ENT.AdminSpawnable	= true

ENT.Model		= "models/drmatt/roflcopter/body.mdl"
ENT.EngineForce	= 30
ENT.Weight	= 9200
ENT.SmokePos	= Vector(-40,0,30)
ENT.FirePos	= Vector(-40,0,30)

ENT.TopRotor = {
	dir = -1,
	pos = Vector(12.4,0,66),
	model = "models/drmatt/roflcopter/mainrotor.mdl"
}

ENT.BackRotor = {
	dir = -1,
	pos = Vector(-166,8,24),
	model = "models/drmatt/roflcopter/tailrotor.mdl"
}

ENT.Seats = {
	{
		pos=Vector(57.5,13,-7),
		exit=Vector(57.5,80,-60),
	},
	{
		pos=Vector(57.5,-13,-7),
		exit=Vector(57.5,-80,-60),
	},
	{
		pos=Vector(9,13,-7),
		exit=Vector(57.5,80,-60),
	},
	{
		pos=Vector(9,-13,-7),
		exit=Vector(57.5,-80,-60),
	},
}

ENT.Sounds={
	Start="WAC/roflcopter/start.wav",
	Blades="WAC/roflcopter/external.wav",
	Engine="WAC/roflcopter/internal.wav",
	MissileAlert="HelicopterVehicle/MissileNearby.mp3",
	MissileShoot="HelicopterVehicle/MissileShoot.mp3",
	MinorAlarm="WAC/Heli/fire_alarm_tank.wav",
	LowHealth="WAC/Heli/fire_alarm.wav",
	CrashAlarm="WAC/Heli/FireSmoke.wav"
}

function ENT:DrawWeaponSelection() end