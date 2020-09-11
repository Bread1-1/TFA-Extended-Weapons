-- Variables that are used on both client and server
SWEP.Gun = ("tfa_m3") -- must be the name of your swep but NO CAPITALS!

SWEP.Category				= "TFA Shotguns"
SWEP.Author				= "iron angles and models hexed and converted to gmod my Mr Fokkusu"
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions				= ""
SWEP.MuzzleAttachment			= "1" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment			= "2" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.PrintName				= "Benelli M3"		-- Weapon name (Shown on HUD)	
SWEP.Slot				= 3				-- Slot in the weapon selection menu
SWEP.SlotPos				= 24			-- Position in the slot
SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter
SWEP.DrawWeaponInfoBox			= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   		= 	false	-- Should the weapon icon bounce?
SWEP.DrawCrosshair			= true		-- set false if you want no crosshair
SWEP.Weight				= 30			-- rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.HoldType 				= "shotgun"	-- how others view you carrying the weapon
SWEP.MoveSpeed = .89 --Multiply the player's movespeed by this.
-- normal melee melee2 fist knife smg ar2 pistol rpg physgun grenade shotgun crossbow slam passive 
-- you're mostly going to use ar2, smg, shotgun or pistol. rpg and crossbow make for good sniper rifles

SWEP.ViewModelFOV			= 70
SWEP.ViewModelFlip			= true
SWEP.ViewModel				= "models/weapons/tfa_v_benelli_m3_s90.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/tfa_w_benelli_m3.mdl"	-- Weapon world model
SWEP.Base 				= "tfa_shotty_base"
SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true
SWEP.FiresUnderwater = false

SWEP.Primary.Sound			= Sound("BenelliM3.Single")		-- script that calls the primary fire sound
SWEP.Primary.RPM				= 70		-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 7			-- Size of a clip
SWEP.Primary.DefaultClip		= 21	-- Default number of bullets in a clip
SWEP.Primary.KickUp				= 0.8			-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 0.5		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 0.3	-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= false		-- Automatic/Semi Auto
SWEP.Primary.Ammo			= "buckshot"	-- pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, AirboatGun
SWEP.Primary.Range = 8000 -- The distance the bullet can travel in source units.  Set to -1 to autodetect based on damage/rpm.
SWEP.Primary.RangeFalloff = 1 -- The percentage of the range the bullet damage starts to fall off at.  Set to 0.8, for example, to start falling off after 80% of the range.

SWEP.Secondary.IronFOV			= 60		-- How much you 'zoom' in. Less is more! 

SWEP.data 				= {}				--The starting firemode
SWEP.data.ironsights			= 1

SWEP.ShellTime			= .45

SWEP.Primary.NumShots	= 12		-- How many bullets to shoot per trigger pull, AKA pellets
SWEP.Primary.Damage		= 11	-- Base damage per bullet
SWEP.Primary.Spread		= .043	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .043	-- Ironsight accuracy, should be the same for shotguns
-- Because irons don't magically give you less pellet spread!

-- Enter iron sight info and bone mod info below
SWEP.IronSightsPos = Vector(2.279, -1.007, 1.302)
SWEP.IronSightsAng = Vector(0.47, -0.024, 0)
SWEP.SightsPos = Vector(2.279, -1.007, 1.302)
SWEP.SightsAng = Vector(0.47, -0.024, 0)
SWEP.RunSightsPos = Vector(-7.639, -7.796, 0.865)
SWEP.RunSightsAng = Vector(-17.362, -69.724, 0)

if GetConVar("sv_tfa_unique_slots") != nil then
	if not (GetConVar("sv_tfa_unique_slots"):GetBool()) then 
		SWEP.SlotPos = 2
	end
end

SWEP.Primary.SpreadIncrement = 1
SWEP.Primary.SpreadRecovery = 2
SWEP.Primary.SpreadMultiplierMax = 3

SWEP.LuaShellEject = true
SWEP.LuaShellEjectDelay = 0

SWEP.Offset = { --Procedural world model animation, defaulted for CS:S purposes.
        Pos = {
        Up = -3,
        Right = 1,
        Forward = 9,
        },
        Ang = {
        Up = 0,
        Right = 80,
        Forward = 178
        },
		Scale = 0.9
}

SWEP.Blowback_Shell_Effect = "ShotgunShellEject"

SWEP.BlowbackEnabled = true

SWEP.BlowbackVector = Vector(0,-5,0.05)

SWEP.Skins = { }

SWEP.ShootWhileDraw=false --Can you shoot while draw anim plays?
SWEP.AllowReloadWhileDraw=false --Can you reload while draw anim plays?
SWEP.SightWhileDraw=false --Can we sight in while the weapon is drawing / the draw anim plays?
SWEP.AllowReloadWhileHolster=false --Can we interrupt holstering for reloading?
SWEP.ShootWhileHolster=false --Cam we interrupt holstering for shooting?
SWEP.SightWhileHolster=false --Cancel out "iron"sights when we holster?
SWEP.UnSightOnReload=true --Cancel out ironsights for reloading.
SWEP.AllowReloadWhileSprinting=false --Can you reload when close to a wall and facing it?
SWEP.AllowReloadWhileNearWall=false --Can you reload when close to a wall and facing it?