-- Variables that are used on both client and server
SWEP.Gun = ("tfa_sl8") -- must be the name of your swep but NO CAPITALS!

SWEP.Category				= "TFA Sniper Rifles"
SWEP.Author				= ""
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions				= ""
SWEP.MuzzleAttachment			= "1" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment			= "2" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.PrintName				= "SL8"		-- Weapon name (Shown on HUD)	
SWEP.Slot				= 3				-- Slot in the weapon selection menu
SWEP.SlotPos				= 47			-- Position in the slot
SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter
SWEP.DrawWeaponInfoBox		= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   	= false	-- Should the weapon icon bounce?
SWEP.DrawCrosshair			= false		-- Set false if you want no crosshair from hip
SWEP.XHair					= false		-- Used for returning crosshair after scope. Must be the same as DrawCrosshair
SWEP.Weight				= 50			-- Rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.BoltAction				= false		-- Is this a bolt action rifle?
SWEP.HoldType 				= "ar2"		-- how others view you carrying the weapon
SWEP.MoveSpeed = .92 --Multiply the player's movespeed by this.
-- normal melee melee2 fist knife smg ar2 pistol rpg physgun grenade shotgun crossbow slam passive 
-- you're mostly going to use ar2, smg, shotgun or pistol. rpg and crossbow make for good sniper rifles

SWEP.ViewModelFOV			= 70
SWEP.ViewModelFlip			= true
SWEP.ViewModel				= "models/weapons/tfa_v_hk_sl8.mdl"
SWEP.WorldModel				= "models/weapons/tfa_w_hk_sl8.mdl"
SWEP.Base 				= "tfa_3dscoped_base"
SWEP.Scoped = false
SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true

SWEP.Primary.Sound			= Sound("Weapon_hksl8.Single")		-- script that calls the primary fire sound
SWEP.Primary.RPM				= 300		-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 10		-- Size of a clip
SWEP.Primary.DefaultClip			= 90	-- Bullets you start with
SWEP.Primary.KickUp				= .6				-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= .6			-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= .6		-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= false		-- Automatic/Semi Auto
SWEP.Primary.Ammo			= "ar2"	-- pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, AirboatGun
SWEP.Primary.Range = 47000 -- The distance the bullet can travel in source units.  Set to -1 to autodetect based on damage/rpm.
SWEP.Primary.RangeFalloff = 1 -- The percentage of the range the bullet damage starts to fall off at.  Set to 0.8, for example, to start falling off after 80% of the range.
SWEP.SelectiveFire		= false

SWEP.Secondary.ScopeZoom = 4
SWEP.Secondary.UseACOG			= true -- Choose one scope type
SWEP.Secondary.UseMilDot		= false	-- I mean it, only one	
SWEP.Secondary.UseSVD			= false	-- If you choose more than one, your scope will not show up at all
SWEP.Secondary.UseParabolic		= false	
SWEP.Secondary.UseElcan			= false
SWEP.Secondary.UseGreenDuplex	= false	
SWEP.Secondary.UseAimpoint		= false
SWEP.Secondary.UseMatador		= false

SWEP.data 				= {}
SWEP.data.ironsights		= 1
SWEP.ScopeScale 			= 0.9
SWEP.ReticleScale 			= 0.7

SWEP.Primary.NumShots	= 1		--how many bullets to shoot per trigger pull
SWEP.Primary.Damage		= 90	--base damage per bullet
SWEP.Primary.Spread		= .015	--define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .001 -- ironsight accuracy, should be the same for shotguns

-- enter iron sight info and bone mod info below

SWEP.IronSightsPos = Vector(3.079, -4.333, 0.437)
SWEP.IronSightsAng = Vector(0, 0, 0)
SWEP.SightsPos = Vector(3.079, -4.333, 0.437)
SWEP.SightsAng = Vector(0, 0, 0)
SWEP.RunSightsPos = Vector(-6.22, -5.277, 0)
SWEP.RunSightsAng = Vector(-10.671, -64.598, 0)

SWEP.RTMaterialOverride = 4

SWEP.ScopeAngleTransforms = {
	{"Y",0.1},
	{"P",0.2}
}

SWEP.ScopeOverlayTransforms = { 0, 0 }

SWEP.ScopeOverlayTransformMultiplier = 0.4

SWEP.BlowbackEnabled = true
SWEP.BlowbackVector = Vector(0,-0.3,0.1)
SWEP.Blowback_Shell_Effect = "RifleShellEject"
SWEP.BlowbackBoneMods = { }

SWEP.AutoDetectMuzzleAttachment = true --For multi-barrel weapons, detect the proper attachment?