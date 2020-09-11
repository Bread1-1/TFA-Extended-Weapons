-- Variables that are used on both client and server
SWEP.Gun = ("tfa_kolibri") -- must be the name of your swep but NO CAPITALS!

SWEP.Category				= "TFA Pistols"
SWEP.Author				= ""
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions				= ""
--- SWEP.MuzzleAttachment			= "1" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.PrintName				= "Kolibri"		-- Weapon name (Shown on HUD)	
SWEP.Slot				= 1				-- Slot in the weapon selection menu
SWEP.SlotPos				= 43			-- Position in the slot
SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter
SWEP.DrawWeaponInfoBox			= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   		= 	false	-- Should the weapon icon bounce?
SWEP.DrawCrosshair			= true		-- set false if you want no crosshair
SWEP.Weight				= 1			-- rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.HoldType 				= "pistol"		-- how others view you carrying the weapon
SWEP.MoveSpeed = 260/260 --Multiply the player's movespeed by this.
-- normal melee melee2 fist knife smg ar2 pistol rpg physgun grenade shotgun crossbow slam passive 
-- you're mostly going to use ar2, smg, shotgun or pistol. rpg and crossbow make for good sniper rifles

SWEP.ViewModelFOV			= 70
SWEP.ViewModelFlip			= false
SWEP.ViewModel				= "models/weapons/c_kolibri.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/c_kolibri.mdl"	-- Weapon world model
SWEP.Base				= "tfa_gun_base"
SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true
SWEP.FiresUnderwater = false
SWEP.UseHands				= true

SWEP.Primary.Sound			= Sound("kolibri.single")		-- Script that calls the primary fire sound
SWEP.Primary.RPM			= 625			-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 7		-- Size of a clip
SWEP.Primary.DefaultClip		= 21		-- Bullets you start with
SWEP.Primary.KickUp				= 0.4		-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 0.3		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 0.3		-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= false		-- Automatic = true; Semi Auto = false
SWEP.Primary.Ammo			= "pistol"			-- pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, AirboatGun
SWEP.Primary.Range = 1000 -- The distance the bullet can travel in source units.  Set to -1 to autodetect based on damage/rpm.
SWEP.Primary.RangeFalloff = 1 -- The percentage of the range the bullet damage starts to fall off at.  Set to 0.8, for example, to start falling off after 80% of the range.

SWEP.Secondary.IronFOV			= 100		-- How much you 'zoom' in. Less is more! 	

SWEP.data 				= {}				--The starting firemode
SWEP.data.ironsights			= 1

SWEP.Primary.NumShots	= 1		-- How many bullets to shoot per trigger pull
SWEP.Primary.Damage		= 15	-- Base damage per bullet
SWEP.Primary.Spread		= .025	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .015 -- Ironsight accuracy, should be the same for shotguns

DEFINE_BASECLASS( SWEP.Base )
function SWEP:PrimaryAttack()
    if self:Clip1() == 0 then return end

    BaseClass.PrimaryAttack( self )
end

-- Enter iron sight info and bone mod info below
SWEP.data = {}
SWEP.data.ironsights = 1 --Enable Ironsights
SWEP.IronSightsPos = Vector(-1.321, 4.0, 1.36)
SWEP.IronSightsAng = Vector(0, 0, 0)

-- Idk if this will work
SWEP.DrawTraditionalWorldModel = false
SWEP.WMPos = Vector(-3.4, -9.95, 3.75)
SWEP.WMAng = Vector(-5, 0, 180)

--Muzzle Flash

SWEP.MuzzleAttachment			= "1" 		-- Should be "1" for CSS models or "muzzle" for hl2 models

--SWEP.MuzzleAttachmentRaw = 1 --This will override whatever string you gave.  This is the raw attachment number.  This is overridden or created when a gun makes a muzzle event.
SWEP.ShellAttachment			= "2" 		-- Should be "2" for CSS models or "shell" for hl2 models

SWEP.DoMuzzleFlash = true --Do a muzzle flash?
SWEP.CustomMuzzleFlash = true --Disable muzzle anim events and use our custom flashes?
SWEP.AutoDetectMuzzleAttachment = false --For multi-barrel weapons, detect the proper attachment?
SWEP.MuzzleFlashEffect = "tfa_csgo_muzzle_pistol"

SWEP.LuaShellEject = true
SWEP.Blowback_Shell_Enabled = false

SWEP.EventTable = {
 [ACT_VM_RELOAD] = {
      { ["time"] = 0.51, ["type"] = "sound", ["value"] = Sound("weapon_kolibritfa.clipout") },
      { ["time"] = 1.18, ["type"] = "sound", ["value"] = Sound("weapon_kolibritfa.clipin") }
  }
}

SWEP.Offset = {
    Pos = {
        Up = -3.4,
        Right = -9.95,
        Forward = 3.75
    },
    Ang = {
        Up = -5,
        Right = -0,
        Forward = 180
    },
    Scale = 1
}

TFA.Enum.LOCOMOTION_ANI = TFA.Enum.LOCOMOTION_LUA -- LOCOMOTION_ANI = mdl, LOCOMOTION_HYBRID = ani + lua, LOCOMOTION_LUA = lua only
SWEP.SprintAnimation = {
	["in"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
		["value"] = "Idle_to_Sprint", --Number for act, String/Number for sequence
		["value_empty"] = "Idle_to_Sprint",
		["transition"] = true
	}, --Inward transition
	["loop"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
		["value"] = "Sprint_", --Number for act, String/Number for sequence
		["value_empty"] = "Sprint_",
		["is_idle"] = true
	},--looping animation
	["out"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
		["value"] = "Sprint_to_Idle", --Number for act, String/Number for sequence
		["value_empty"] = "Sprint_to_Idle",
		["transition"] = true
	} --Outward transition
}

TFA.Enum.LOCOMOTION_ANI = TFA.Enum.LOCOMOTION_LUA -- LOCOMOTION_ANI = mdl, LOCOMOTION_HYBRID = ani + lua, LOCOMOTION_LUA = lua only
SWEP.WalkAnimation = {
	["in"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
		["value"] = "Idle_to_Walk", --Number for act, String/Number for sequence
		["value_empty"] = "Idle_to_Walk_Empty",
		["transition"] = true
	}, --Inward transition
	["loop"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
		["value"] = "Walk", --Number for act, String/Number for sequence
		["value_empty"] = "Walk_Empty",
		["is_idle"] = true
	},--looping animation
	["out"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
		["value"] = "Walk_to_Idle", --Number for act, String/Number for sequence
		["value_empty"] = "Walk_to_Idle_Empty",
		["transition"] = true
	} --Outward transition
}