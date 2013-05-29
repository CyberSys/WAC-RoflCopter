if not wac then return end

ENT.Base 				= "wac_hc_base_u"
ENT.Type 				= "anim"

ENT.PrintName			= "RoflCopter"
ENT.Author				= "Dr. Matt"
ENT.Category			= wac.aircraft.spawnCategoryU
ENT.Contact    			= ""
ENT.Purpose 			= ""
ENT.Instructions 		= ""
ENT.Spawnable			= true
ENT.AdminSpawnable	= true

ENT.Model			= "models/drmatt/roflcopter/body.mdl"
ENT.RotorPhModel	= "models/props_junk/sawblade001a.mdl"
ENT.RotorModel		= "models/drmatt/roflcopter/mainrotor.mdl"
ENT.BackRotorModel	= "models/drmatt/roflcopter/tailrotor.mdl"

ENT.BackRotorDir	= -1
ENT.TopRotorPos	= Vector(12.4,0,66)
ENT.BackRotorPos	= Vector(-166,8,24)
ENT.EngineForce	= 30
ENT.Weight		= 9200

ENT.SmokePos	= Vector(-40,0,30)
ENT.FirePos		= Vector(-40,0,30)

function ENT:AddSeatTable()
	return{
		[1]={
			Pos=Vector(57.5,13,-7),
			ExitPos=Vector(57.5,80,-60),
			Ang=Angle(0,0,0),
			NoHud=true,
			wep={wac.aircraft.getWeapon("No Weapon")},
		},
		[2]={
			Pos=Vector(57.5,-13,-7),
			ExitPos=Vector(57.5,-80,-60),
			Ang=Angle(0,0,0),
			NoHud=true,
			wep={wac.aircraft.getWeapon("No Weapon")},
		},
		[3]={
			Pos=Vector(9,13,-7),
			ExitPos=Vector(57.5,80,-60),
			Ang=Angle(0,0,0),
			NoHud=true,
			wep={wac.aircraft.getWeapon("No Weapon")},
		},
		[4]={
			Pos=Vector(9,-13,-7),
			ExitPos=Vector(57.5,-80,-60),
			Ang=Angle(0,0,0),
			NoHud=true,
			wep={wac.aircraft.getWeapon("No Weapon")},
		},
	}
end

function ENT:AddSounds()
	self.Sound={
		Start=CreateSound(self.Entity, "WAC/roflcopter/start.wav"),
		Blades=CreateSound(self.Entity, "RoflCopter.External"),
		Engine=CreateSound(self.Entity, "RoflCopter.Internal"),
		MissileAlert=CreateSound(self.Entity, "HelicopterVehicle/MissileNearby.mp3"),
		MissileShoot=CreateSound(self.Entity, "HelicopterVehicle/MissileShoot.mp3"),
		MinorAlarm=CreateSound(self.Entity, "WAC/Heli/fire_alarm_tank.wav"),
		LowHealth=CreateSound(self.Entity, "WAC/Heli/fire_alarm.wav"),
		CrashAlarm=CreateSound(self.Entity, "WAC/Heli/FireSmoke.wav"),
	}
end
