-- Variables that are used on both client and server
SWEP.Gun = ("tfa_scoped_taurus") -- must be the name of your swep but NO CAPITALS!

SWEP.Category				= "TFA Pistols"
SWEP.Author				= ""
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions				= ""
SWEP.PrintName				= "Raging Bull - Scoped"		-- Weapon name (Shown on HUD)	
SWEP.Slot				= 1				-- Slot in the weapon selection menu
SWEP.SlotPos				= 32			-- Position in the slot
SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter
SWEP.DrawWeaponInfoBox			= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   		= 	false	-- Should the weapon icon bounce?
SWEP.DrawCrosshair			= true		-- Set false if you want no crosshair from hip
SWEP.Weight				= 30			-- Rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.XHair					= true		-- Used for returning crosshair after scope. Must be the same as DrawCrosshair
SWEP.BoltAction				= false		-- Is this a bolt action rifle?
SWEP.HoldType 				= "revolver"		-- how others view you carrying the weapon
SWEP.MoveSpeed = 260/260 --Multiply the player's movespeed by this.
-- normal melee melee2 fist knife smg ar2 pistol rpg physgun grenade shotgun crossbow slam passive 
-- you're mostly going to use ar2, smg, shotgun or pistol. rpg and crossbow make for good sniper rifles

SWEP.ViewModelFOV			= 65
SWEP.ViewModelFlip			= true
SWEP.ViewModel				= "models/weapons/tfa_v_raging_bull_scoped.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/tfa_w_raging_bull_scoped.mdl"	-- Weapon world model
SWEP.ShowWorldModel			= true
SWEP.Base 				= "tfa_scoped_base"
SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true
SWEP.DisableChambering = true
SWEP.Primary.Sound			= Sound("weapon_r_bull.single")		-- script that calls the primary fire sound
SWEP.Primary.RPM				= 200		-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 6		-- Size of a clip
SWEP.Primary.DefaultClip			= 18	-- Bullets you start with
SWEP.Primary.KickUp			= 7				-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= .5			-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal			= 1		-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= false		-- Automatic/Semi Auto
SWEP.Primary.Ammo			= "357"	-- pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, AirboatGun
SWEP.Primary.Range = 23500 -- The distance the bullet can travel in source units.  Set to -1 to autodetect based on damage/rpm.
SWEP.Primary.RangeFalloff = -1 -- The percentage of the range the bullet damage starts to fall off at.  Set to 0.8, for example, to start falling off after 80% of the range.

SWEP.Secondary.ScopeZoom			= 3
SWEP.Secondary.UseACOG			= false -- Choose one scope type
SWEP.Secondary.UseMilDot		= true	-- I mean it, only one	
SWEP.Secondary.UseSVD			= false	-- If you choose more than one, your scope will not show up at all
SWEP.Secondary.UseParabolic		= false	
SWEP.Secondary.UseElcan			= false
SWEP.Secondary.UseGreenDuplex	= false	
SWEP.Secondary.UseAimpoint		= false

SWEP.data 				= {}
SWEP.data.ironsights			= 1
SWEP.ScopeScale 			= 0.7
SWEP.ReticleScale 				= 0.6

SWEP.Primary.Damage		= 60	--base damage per bullet
SWEP.Primary.Spread		= .02	--define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .0001 -- ironsight accuracy, should be the same for shotguns

DEFINE_BASECLASS( SWEP.Base )
function SWEP:PrimaryAttack()
    if self:Clip1() == 0 then return end

    BaseClass.PrimaryAttack( self )
end

-- enter iron sight info and bone mod info below
SWEP.IronSightsPos = Vector(2.775, -4.02, 0.059)
SWEP.IronSightsAng = Vector(0, 0, 0)
SWEP.SightsPos = Vector(2.775, -4.02, 0.059)
SWEP.SightsAng = Vector(0, 0, 0)
SWEP.RunSightsPos = Vector(0, 2.95, 0)
SWEP.RunSightsAng = Vector(-13.197, 5.737, 0)