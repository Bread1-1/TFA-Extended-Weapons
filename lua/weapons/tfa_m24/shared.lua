-- Variables that are used on both client and server
SWEP.Gun = ("tfa_m24") -- must be the name of your swep but NO CAPITALS!

SWEP.Category				= "TFA Sniper Rifles"
SWEP.Author				= "iron angles and models hexed and converted to gmod my Mr Fokkusu"
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions				= ""
SWEP.MuzzleAttachment			= "1" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment			= "2" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.PrintName				= "M24"		-- Weapon name (Shown on HUD)	
SWEP.Slot				= 3				-- Slot in the weapon selection menu
SWEP.SlotPos				= 43			-- Position in the slot
SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter
SWEP.DrawWeaponInfoBox		= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   	= false	-- Should the weapon icon bounce?
SWEP.DrawCrosshair			= false		-- Set false if you want no crosshair from hip
SWEP.XHair					= false		-- Used for returning crosshair after scope. Must be the same as DrawCrosshair
SWEP.Weight				= 50			-- Rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.BoltAction				= true		-- Is this a bolt action rifle?
SWEP.HoldType 				= "rpg"		-- how others view you carrying the weapon
SWEP.MoveSpeed = .880 --Multiply the player's movespeed by this.
-- normal melee melee2 fist knife smg ar2 pistol rpg physgun grenade shotgun crossbow slam passive 
-- you're mostly going to use ar2, smg, shotgun or pistol. rpg and crossbow make for good sniper rifles

SWEP.ViewModelFOV			= 70
SWEP.ViewModelFlip			= true
SWEP.ViewModel				= "models/weapons/tfa_v_dmg_m24s.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/tfa_w_snip_m24_6.mdl"	-- Weapon world model
SWEP.Base 				= "tfa_3dscoped_base"
SWEP.Scoped = false
SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true

SWEP.Primary.Sound			= Sound("Dmgfok_M24SN.Single")		-- script that calls the primary fire sound
SWEP.Primary.RPM				= 40		-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 5		-- Size of a clip
SWEP.Primary.DefaultClip			= 15	-- Bullets you start with
SWEP.Primary.KickUp				= .6				-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= .6			-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= .6		-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= false		-- Automatic/Semi Auto
SWEP.Primary.Ammo			= "SniperPenetratedRound"	-- pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, AirboatGun
SWEP.Primary.Range = 79000 -- The distance the bullet can travel in source units.  Set to -1 to autodetect based on damage/rpm.
SWEP.Primary.RangeFalloff = 1 -- The percentage of the range the bullet damage starts to fall off at.  Set to 0.8, for example, to start falling off after 80% of the range.

SWEP.Secondary.ScopeZoom = 9
SWEP.Secondary.UseACOG			= false -- Choose one scope type
SWEP.Secondary.UseMilDot		= true	-- I mean it, only one	
SWEP.Secondary.UseSVD			= false	-- If you choose more than one, your scope will not show up at all
SWEP.Secondary.UseParabolic		= false	
SWEP.Secondary.UseElcan			= false
SWEP.Secondary.UseGreenDuplex	= false	
SWEP.Secondary.UseAimpoint		= false
SWEP.Secondary.UseMatador		= false

SWEP.data 				= {}
SWEP.data.ironsights		= 1
SWEP.ScopeScale 			= 0.7
SWEP.ReticleScale 			= 0.6

SWEP.Primary.NumShots	= 1		--how many bullets to shoot per trigger pull
SWEP.Primary.Damage		= 130	--base damage per bullet
SWEP.Primary.Spread		= .01	--define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .000115 -- ironsight accuracy, should be the same for shotguns

-- enter iron sight info and bone mod info below

SWEP.IronSightsPos = Vector (2.894, -1, 1.7624)
SWEP.IronSightsAng = Vector (0, 0, 0)
SWEP.SightsPos = Vector (2.894, -1, 1.7624)
SWEP.SightsAng = Vector (0, 0, 0)
SWEP.RunSightsPos = Vector (-2.3095, -3.0514, 2.3965)
SWEP.RunSightsAng = Vector (-19.8471, -33.9181, 10)

SWEP.RTMaterialOverride = 8

SWEP.ScopeAngleTransforms = {
	{"Y",0.07},
	{"P",0.07}
}

SWEP.ScopeOverlayTransformMultiplier = 1

SWEP.AutoDetectMuzzleAttachment = true --For multi-barrel weapons, detect the proper attachment?