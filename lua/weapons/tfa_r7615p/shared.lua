-- This is a work in progress and is far from complete.
-- Variables that are used on both client and server
SWEP.Gun = ("tfa_r7615p") -- must be the name of your swep but NO CAPITALS!

SWEP.Category				= "TFA Sniper Rifles"
SWEP.Author				= ""
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions				= ""
SWEP.MuzzleAttachment			= "1" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellAttachment			= "2" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.PrintName				= "Remington 7615P"		-- Weapon name (Shown on HUD)	
SWEP.Slot				= 4				-- Slot in the weapon selection menu
SWEP.SlotPos				= 46		-- Position in the slot
SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter
SWEP.DrawWeaponInfoBox			= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   		= 	false	-- Should the weapon icon bounce?
SWEP.DrawCrosshair			= false		-- set false if you want no crosshair
SWEP.Weight				= 30			-- rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.HoldType 				= "ar2"		-- how others view you carrying the weapon
SWEP.UseHands = false

SWEP.ViewModelFOV		= 56
SWEP.ViewModelFlip			= false
SWEP.ViewModel				= "models/weapons/tfa_v_remington_7615p.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_remington_7615p.mdl"	-- Weapon world model
SWEP.Base				= "tfa_scoped_base"

SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true
SWEP.FiresUnderwater = false

SWEP.Primary.Sound			= Sound("7615p_remington.Single")		-- Script that calls the primary fire sound
SWEP.Primary.RPM			= 50 			-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 10		-- Size of a clip
SWEP.Primary.DefaultClip		= 20		-- Bullets you start with
SWEP.Primary.KickUp				= 1		-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 1		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 0.3		-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= false		-- Automatic = true; Semi Auto = false
SWEP.Primary.Ammo			= "SniperPenetratedRound"
SWEP.NearlyEmpty_ClipSize = 0

--SWEP.Secondary.ScopeZoom = 90 / 45
SWEP.Secondary.IronFOV	= 15		-- How much you 'zoom' in. Less is more! 	

SWEP.data 				= {}				--The starting firemode
SWEP.data.ironsights			= 1

SWEP.Primary.NumShots	= 1		-- How many bullets to shoot per trigger pull
SWEP.Primary.Damage		= 125	-- Base damage per bullet
SWEP.Primary.Spread		= .01	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .001 -- Ironsight accuracy, should be the same for shotguns

SWEP.BoltAction = false
--SWEP.BoltAction		= false

SWEP.Secondary.UseACOG			= false -- Choose one scope type
SWEP.Secondary.UseMilDot		= false	-- I mean it, only one	
SWEP.Secondary.UseSVD			= false	-- If you choose more than one, your scope will not show up at all
SWEP.Secondary.UseParabolic		= false	
SWEP.Secondary.UseElcan			= false
SWEP.Secondary.UseGreenDuplex	= false	
SWEP.Secondary.UseAimpoint		= false
SWEP.Secondary.UseMatador		= false
SWEP.Secondary.ScopeTable = {
	["ScopeMaterial"] =  Material("tfa_csgo/scope_lens.png", "smooth"),
	["ScopeBorder"] = color_black,
	["ScopeCrosshair"] = { ["r"] = 0, ["g"]  = 0, ["b"] = 0, ["a"] = 255, ["s"] = 1 }
}

-- Enter iron sight info and bone mod info below
SWEP.Scoped = true --Draw a scope overlay?
SWEP.ScopeOverlayThreshold = 0.75 --Percentage you have to be sighted in to see the scope.
SWEP.BoltTimerOffset = 0.25 --How long you stay sighted in after shooting, with a bolt action.
SWEP.ScopeScale = 0.6 --Scale of the scope overlay
SWEP.ReticleScale = 0.5 --Scale of the reticle overlay

SWEP.IronSightsPos = Vector(5.2, -1.3, 1.16)
SWEP.IronSightsAng = Vector(0, 0, 0)
SWEP.SightsPos = Vector(5.2, -1.3, 1.16)
SWEP.SightsAng = Vector(0, 0, 0)
SWEP.RunSightsPos = Vector (-2.3095, -3.0514, 2.3965)
SWEP.RunSightsAng = Vector (-19.8471, -33.9181, 10)

--SWEP.InspectPos = Vector(0,0,0)
--SWEP.InspectAng = Vector(0,0,0)
SWEP.DisableIdleAnimations = false
SWEP.FidgetLoop = false --Setting false will cancel inspection once the animation is done.  CS:GO style.
SWEP.Primary.Range = 0.8/0.305*16*1000
SWEP.Primary.SpreadIncrement = 0.3
SWEP.Primary.SpreadRecovery = 2
SWEP.Primary.SpreadMultiplierMax = 2.5

--Tracer Stuff
SWEP.TracerCount 		= 0 	--0 disables, otherwise, 1 in X chance

SWEP.MoveSpeed = .91 --Multiply the player's movespeed by this.
SWEP.IronSightsMoveSpeed = .6 --Multiply the player's movespeed by this.

DEFINE_BASECLASS(SWEP.Base)

SWEP.Secondary.ScopeScreenScale = 610/1080

SWEP.ShootWhileDraw=false --Can you shoot while draw anim plays?
SWEP.AllowReloadWhileDraw=false --Can you reload while draw anim plays?
SWEP.SightWhileDraw=false --Can we sight in while the weapon is drawing / the draw anim plays?
SWEP.AllowReloadWhileHolster=false --Can we interrupt holstering for reloading?
SWEP.ShootWhileHolster=false --Cam we interrupt holstering for shooting?
SWEP.SightWhileHolster=false --Cancel out "iron"sights when we holster?
SWEP.UnSightOnReload=true --Cancel out ironsights for reloading.
SWEP.AllowReloadWhileSprinting=false --Can you reload when close to a wall and facing it?
SWEP.AllowReloadWhileNearWall=false --Can you reload when close to a wall and facing it?