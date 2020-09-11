-- Variables that are used on both client and server
SWEP.Gun = ("tfa_m60") -- must be the name of your swep but NO CAPITALS!

SWEP.Category				= "TFA Machine Guns"
SWEP.Author				= ""
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions				= ""
SWEP.MuzzleAttachment			= "1" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment			= "2" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.PrintName				= "M60 Machine Gun"		-- Weapon name (Shown on HUD)	
SWEP.Slot				= 3				-- Slot in the weapon selection menu
SWEP.SlotPos				= 34			-- Position in the slot
SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter
SWEP.DrawWeaponInfoBox			= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   		= 	false	-- Should the weapon icon bounce?
SWEP.DrawCrosshair			= true		-- set false if you want no crosshair
SWEP.Weight				= 30			-- rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.HoldType 				= "ar2"		-- how others view you carrying the weapon
SWEP.MoveSpeed = .85 --Multiply the player's movespeed by this.
-- normal melee melee2 fist knife smg ar2 pistol rpg physgun grenade shotgun crossbow slam passive 
-- you're mostly going to use ar2, smg, shotgun or pistol. rpg and crossbow make for good sniper rifles

SWEP.ViewModelFOV			= 65
SWEP.ViewModelFlip			= false
SWEP.ViewModel				= "models/weapons/tfa_v_m60machinegun.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/tfa_w_m60_machine_gun.mdl"	-- Weapon world model
SWEP.Base				= "tfa_gun_base"
SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true
SWEP.FiresUnderwater = false

SWEP.Primary.Sound			= Sound("Weapon_M_60.Single")		-- Script that calls the primary fire sound
SWEP.Primary.RPM			= 500			-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 200		-- Size of a clip
SWEP.Primary.DefaultClip		= 600		-- Bullets you start with
SWEP.Primary.KickUp				= 0.3		-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 0.4		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 0.3		-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= true		-- Automatic = true; Semi Auto = false
SWEP.Primary.Ammo			= "ar2"			-- pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, AirboatGun
SWEP.Primary.Range = 47000 -- The distance the bullet can travel in source units.  Set to -1 to autodetect based on damage/rpm.
SWEP.Primary.RangeFalloff = -1 -- The percentage of the range the bullet damage starts to fall off at.  Set to 0.8, for example, to start falling off after 80% of the range.

SWEP.Secondary.IronFOV			= 65		-- How much you 'zoom' in. Less is more! 	

SWEP.data 				= {}				--The starting firemode
SWEP.data.ironsights			= 1

SWEP.Primary.NumShots	= 1		-- How many bullets to shoot per trigger pull
SWEP.Primary.Damage		= 33	-- Base damage per bullet
SWEP.Primary.Spread		= .035	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .025 -- Ironsight accuracy, should be the same for shotguns

-- Enter iron sight info and bone mod info below
SWEP.IronSightsPos = Vector(-5.851, -2.763, 3.141)
SWEP.IronSightsAng = Vector(0, 0, 0)
SWEP.SightsPos = Vector(-5.851, -2.763, 3.141)
SWEP.SightsAng = Vector(0, 0, 0)
SWEP.RunSightsPos = Vector(8.689, -3.444, -0.82)
SWEP.RunSightsAng = Vector(0, 44.18, 0)

SWEP.ShootWhileDraw=false --Can you shoot while draw anim plays?
SWEP.AllowReloadWhileDraw=false --Can you reload while draw anim plays?
SWEP.SightWhileDraw=false --Can we sight in while the weapon is drawing / the draw anim plays?
SWEP.AllowReloadWhileHolster=false --Can we interrupt holstering for reloading?
SWEP.ShootWhileHolster=false --Cam we interrupt holstering for shooting?
SWEP.SightWhileHolster=false --Cancel out "iron"sights when we holster?
SWEP.UnSightOnReload=true --Cancel out ironsights for reloading.
SWEP.AllowReloadWhileSprinting=false --Can you reload when close to a wall and facing it?
SWEP.AllowReloadWhileNearWall=false --Can you reload when close to a wall and facing it?

SWEP.LuaShellEject = true --Entity to shoot's model
SWEP.LuaShellEffect = "RifleShellEject" --Defaults to blowback

SWEP.Blowback_Shell_Effect = "RifleShellEject"
SWEP.BlowbackEnabled = true
SWEP.BlowbackVector = Vector(0.02, -3, 0)

SWEP.BlowbackBoneMods = {
	["Emm60_Pairof"] = {
		scale = Vector(1, 1, 1),
		pos = Vector(-0.181, -0.181, 0.18),
		angle = Angle(0, -3.254, 0)
	}
}
