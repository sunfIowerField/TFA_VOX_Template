-- thatrtxdude's super duper and cool tfa vox template watermark

-- [[INFORMATION SECTION]]
-- 1. If your making a VOX pack with this please credit me in the Description. You don't have to add me as a contributor.
-- 2. If your files are a different filetype change vo/scales/Death_1.ogg to vo/scales/Death_1.wav for example.
-- 3. If you make multiple VOXes with this template make sure to make folders and change the code i.e add a folder, put your sounds in, and change the Lua here. For example, vo/scales/Death_1.ogg becomes vo/scales/(packname)/Death_1.ogg.
-- 4. If you need a good resource for Voicelines, here are some: https://www.youtube.com/c/ForceVO/videos, https://mega.nz/folder/HrRVjCyI#dEg16A9xPRFM9jsQAVMIhg
-- 5. If you want to add more Voicelines than just one, just add more to the soundtable. Example { "vo/scales/NoAmmo_1.ogg"} ) becomes { "vo/scales/NoAmmo_1.ogg", "vo/scales/NoAmmo_2.ogg", "vo/scales/NoAmmo_3.ogg" } ) and so on. Copy and Paste is your best friend here.

-- If you don't know how to automatically assign a VOX to a playermodel, here's a great guide made by LOL DUDE: https://steamcommunity.com/sharedfiles/filedetails/?id=1103821922

-- [[CREDITS]]
-- TFA - Coding TFA-VOX
-- Me - Making this Template (self credit)


TFAVOX_Models = TFAVOX_Models or {}


local model = "models/(YourPath)/(YourSecondPath)/(TheNameOfTheVoxInEnhancedPlayermodelSelector).mdl" -- Write anything here, remove the ()s.


--[[DO NOT EDIT THE LINES BELOW, YOU WILL BREAK THE VOX CODE IF YOU DO]]--

local tmptbl = string.Split(model,"/")
local mdlprefix = tmptbl[#tmptbl] or model
mdlprefix = string.Replace(mdlprefix,".mdl","")
if model == "models/player/player.mdl" then return end

--[[DO NOT EDIT THE LINES ABOVE, YOU WILL BREAK THE VOX CODE IF YOU DO]]



TFAVOX_Models[model] = {
	['main'] = {--Subtable, used for main actions
		['heal'] = {--Your Events, reloading, spawn, death e.t.c e.t.c
			['delay']= nil,--Delay, Leave nil to autocalculate
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "heal", { "snd1" } ) --Don't use this, its broken and keeps looping your sound.
		},
		['healmax'] = {
			['delay']= nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "healmax", { "snd1"} ) -- Don't use this, its broken and keeps looping your sound.
		},
		['crithit'] = {
			['delay']= nil,
			['sound'] = TFAVOX_GenerateSound(mdlprefix, "crithealth", { "snd1" } ) -- Don't use this, its broken and keeps looping your sound.
		},
		['crithealth'] = {
			['delay']= 0.1,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "crithealth", {"snd1" } ) -- Don't use this, its broken and keeps looping your sound. Use the damage subtable instead.
		},
		['death'] = {
			['delay']= nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "death", { "vo/scales/Death_1.ogg", "vo/scales/Death_2.ogg", "vo/scales/Death_3.ogg", "vo/scales/Death_4.ogg", "vo/scales/Death_5.ogg", "vo/scales/Death_6.ogg", "vo/scales/Death_7.ogg", "vo/scales/Death_8.ogg", "vo/scales/Death_9.ogg", "vo/scales/Death_10.ogg", "vo/scales/Death_11.ogg",   } )
		},
		['spawn'] = {
			['delay']= nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "spawn", { "vo/scales/Spawn_1.ogg", "Spawn_2.ogg", "Spawn_3.ogg" } )
		},
		['pickup'] = {
			['delay']= nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "pickup", { "vo/scales/Pickup_1.ogg"} )
		},
		['reload'] = {
			['delay']= nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "reload", { "vo/scales/Reload_1.ogg", "vo/scales/Reload_2.ogg", "vo/scales/Reload_3.ogg", "vo/scales/Reload_4.ogg", "vo/scales/Reload_5.ogg", "vo/scales/Reload_6.ogg", "vo/scales/Reload_7.ogg", "vo/scales/Reload_8.ogg", "vo/scales/Reload_9.ogg", "vo/scales/Reload_10.ogg", "vo/scales/Reload_11.ogg", "vo/scales/Reload_12.ogg", "vo/scales/Reload_13.ogg", "vo/scales/Reload_14.ogg", "vo/scales/Reload_15.ogg", "vo/scales/Reload_16.ogg", "vo/scales/Reload_17.ogg", "vo/scales/Reload_18.ogg", "vo/scales/Reload_19.ogg", "vo/scales/Reload_20.ogg", "vo/scales/Reload_21.ogg", "vo/scales/Reload_22.ogg", "vo/scales/Reload_23.ogg", "vo/scales/Reload_24.ogg", "vo/scales/Reload_25.ogg", "vo/scales/Reload_26.ogg", "vo/scales/Reload_27.ogg", "vo/scales/Reload_31.ogg", "vo/scales/Reload_32.ogg", "vo/scales/Reload_33.ogg", "vo/scales/Reload_34.ogg", "vo/scales/Reload_35.ogg", "vo/scales/Reload_36.ogg", "vo/scales/Reload_37.ogg", "vo/scales/Reload_38.ogg", "vo/scales/Reload_39.ogg", "vo/scales/Reload_40.ogg", "vo/scales/Reload_41.ogg", "vo/scales/Reload_42.ogg", "vo/scales/Reload_43.ogg", "vo/scales/Reload_44.ogg", "vo/scales/Reload_45.ogg", "vo/scales/Reload_46.ogg",  "vo/scales/Reload_47.ogg",          } )
		},
		['noammo'] = {
			['delay']= nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "noammo", { "vo/scales/NoAmmo_1.ogg"} )
		},
		['fall'] = {		
			['delay']= nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "fall", { "vo/scales/Fall_1.ogg"} )
		},
		['jump'] = {
			['delay']= nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "jump", { "vo/scales/Jump_1.ogg"} )
		},
		['step'] = {
			['delay']= nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "step", { "vo/scales/Step_1.ogg"} )
		}
	},
	['murder'] = {--Subtable used when you kill an NPC/Entity
		['combine'] = { -- Your entity
			['delay']= nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "murdcomb", { "vo/scales/Murder_1.ogg" } )
		},
		['cp'] = {
			['delay']= nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "murdcp", { "vo/scales/Murder_1.ogg" } )
		},
		['zombie'] = {
			['delay']= nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "murdzomb", { "vo/scales/Murder_1.ogg" } )
		},
		['headcrab'] = {
			['delay']= nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "murdhc", { "vo/scales/Murder_1.ogg" } )
		},
		['manhack'] = {
			['delay']= nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "murdmh", { "vo/scales/Murder_1.ogg" } )
		},
		['scanner'] = {
			['delay']= nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "murdsca", { "vo/scales/Murder_1.ogg" } )
		},
		['sniper'] = {
			['delay']= nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "murdsni", { "vo/scales/Murder_1.ogg" } )
		},
		['turret'] = {
			['delay']= nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "murdtur", { "vo/scales/Murder_1.ogg" } )
		},
		['ally'] = {
			['delay']= nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "murdally", { "vo/scales/Murder_1.ogg" } )
		},
		['generic'] = {
			['delay']= nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "murdgener", { "vo/scales/Murder_1.ogg" } )
		}
	},
	['spot'] = { -- Used for VOX Spotting
		['combine'] = { -- Your entity
			['delay']= nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "spotcomb", { "vo/scales/Spot_1.ogg" } )
		},
		['cp'] = {
			['delay']= nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "spotcp", { "vo/scales/Spot_1.ogg" } )
		},
		['zombie'] = {
			['delay']= nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "spotzom", { "vo/scales/Spot_1.ogg" } )
		},
		['headcrab'] = {
			['delay']= nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "spothc", { "vo/scales/Spot_1.ogg" } )
		},
		['manhack'] = {
			['delay']= nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "spotmh", { "vo/scales/Spot_1.ogg" } )
		},
		['scanner'] = {
			['delay']= nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "murdsca", { "vo/scales/Spot_1.ogg" } )
		},
		['sniper'] = {
			['delay']= nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "murdsni", { "vo/scales/Spot_1.ogg" } )
		},
		['turret'] = {
			['delay']= nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "murdtur", { "vo/scales/Spot_1.ogg" } )
		},
		['ally'] = {
			['delay']= nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "murdally", { "vo/scales/Spot_1.ogg" } )
		},
		['generic'] = {
			['delay']= nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "murdgener", { "vo/scales/Spot_1.ogg" } )
		}
	},
	['taunt'] = { -- For taunts
		[ACT_GMOD_GESTURE_AGREE] = {
			['delay']= nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "ACT_GMOD_GESTURE_AGREE", { "vo/scales/GestureAgree_1.ogg" } )
		},
		[ACT_GMOD_GESTURE_BECON] = {
			['delay']= nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "ACT_GMOD_GESTURE_BECON", { "vo/scales/GestureBeacon_1.ogg" } )
		},
		[ACT_GMOD_GESTURE_BOW] = {
			['delay']= nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "ACT_GMOD_GESTURE_BOW", { "vo/scales/GestureBow_1.ogg" } )
		},
		[ACT_GMOD_GESTURE_DISAGREE] = {
			['delay']= nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "ACT_GMOD_GESTURE_DISAGREE", { "vo/scales/GestureDisagree_1.ogg" } )
		},
		[ACT_GMOD_TAUNT_SALUTE] = {
			['delay']= nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "ACT_GMOD_TAUNT_SALUTE", { "vo/scales/GestureSalute_1.ogg" } )
		},
		[ACT_GMOD_GESTURE_WAVE] = {
			['delay']= nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "ACT_GMOD_GESTURE_WAVE", { "vo/scales/GestureWave_1.ogg" } )
		},
		[ACT_GMOD_TAUNT_PERSISTENCE] = {
			['delay']= nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "ACT_GMOD_TAUNT_PERSISTENCE", { "vo/scales/GesturePersistence_1.ogg" } )
		},
		[ACT_GMOD_TAUNT_MUSCLE] = {
			['delay']= nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "ACT_GMOD_TAUNT_MUSCLE", { "vo/scales/GestureMuscle_1.ogg" } )
		},
		[ACT_GMOD_TAUNT_LAUGH] = {
			['delay']= nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "ACT_GMOD_TAUNT_LAUGH", { "vo/scales/GestureLaugh_1.ogg" } )
		},
		[ACT_GMOD_GESTURE_POINT] = {
			['delay']= nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "ACT_GMOD_GESTURE_POINT", { "vo/scales/GesturePoint_1.ogg" } )
		},
		[ACT_GMOD_TAUNT_CHEER] = {
			['delay']= nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "ACT_GMOD_TAUNT_CHEER", { "vo/scales/GestureCheer_1.ogg" } )
		},
		[ACT_SIGNAL_FORWARD] = {
			['delay']= nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "ACT_SIGNAL_FORWARD", { "vo/scales/GestureForward_1.ogg" } )
		},
		[ACT_SIGNAL_GROUP] = {
			['delay']= nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "ACT_SIGNAL_GROUP", { "vo/scales/GestureGroup_1.ogg" } )
		},
		[ACT_SIGNAL_HALT] = {
			['delay']= nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "ACT_SIGNAL_HALT", { "vo/scales/GestureHalt_1.ogg" } )
		}
	},
	['damage'] = { -- Used for Damage
		[HITGROUP_GENERIC] = { -- Hitgroups
			['delay']= nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "HITGROUP_GENERIC", { "vo/scales/damage_1.ogg", "vo/scales/damage_2.ogg", "vo/scales/damage_3.ogg", "vo/scales/damage_4.ogg", "vo/scales/damage_5.ogg", "vo/scales/damage_6.ogg", "vo/scales/damage_7.ogg", "vo/scales/damage_8.ogg", "vo/scales/damage_9.ogg", "vo/scales/damage_10.ogg", "vo/scales/damage_11.ogg", "vo/scales/damage_12.ogg", "vo/scales/damage_13.ogg", "vo/scales/damage_14.ogg", "vo/scales/damage_15.ogg", "vo/scales/damage_16.ogg", "vo/scales/damage_17.ogg", "vo/scales/damage_18.ogg", "vo/scales/damage_19.ogg", "vo/scales/damage_20.ogg", "vo/scales/damage_21.ogg" } )
		},
		[HITGROUP_HEAD] = {
			['delay']= nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "HITGROUP_HEAD", { "vo/scales/damage_1.ogg", "vo/scales/damage_2.ogg", "vo/scales/damage_3.ogg", "vo/scales/damage_4.ogg", "vo/scales/damage_5.ogg", "vo/scales/damage_6.ogg", "vo/scales/damage_7.ogg", "vo/scales/damage_8.ogg", "vo/scales/damage_9.ogg", "vo/scales/damage_10.ogg", "vo/scales/damage_11.ogg", "vo/scales/damage_12.ogg", "vo/scales/damage_13.ogg", "vo/scales/damage_14.ogg", "vo/scales/damage_15.ogg", "vo/scales/damage_16.ogg", "vo/scales/damage_17.ogg", "vo/scales/damage_18.ogg", "vo/scales/damage_19.ogg", "vo/scales/damage_20.ogg", "vo/scales/damage_21.ogg" } )
		},
		[HITGROUP_CHEST] = {
			['delay']= nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "HITGROUP_CHEST", { "vo/scales/damage_1.ogg", "vo/scales/damage_2.ogg", "vo/scales/damage_3.ogg", "vo/scales/damage_4.ogg", "vo/scales/damage_5.ogg", "vo/scales/damage_6.ogg", "vo/scales/damage_7.ogg", "vo/scales/damage_8.ogg", "vo/scales/damage_9.ogg", "vo/scales/damage_10.ogg", "vo/scales/damage_11.ogg", "vo/scales/damage_12.ogg", "vo/scales/damage_13.ogg", "vo/scales/damage_14.ogg", "vo/scales/damage_15.ogg", "vo/scales/damage_16.ogg", "vo/scales/damage_17.ogg", "vo/scales/damage_18.ogg", "vo/scales/damage_19.ogg", "vo/scales/damage_20.ogg", "vo/scales/damage_21.ogg" } )
		},
		[HITGROUP_STOMACH] = {
			['delay']= nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "HITGROUP_STOMACH", { "vo/scales/damage_1.ogg", "vo/scales/damage_2.ogg", "vo/scales/damage_3.ogg", "vo/scales/damage_4.ogg", "vo/scales/damage_5.ogg", "vo/scales/damage_6.ogg", "vo/scales/damage_7.ogg", "vo/scales/damage_8.ogg", "vo/scales/damage_9.ogg", "vo/scales/damage_10.ogg", "vo/scales/damage_11.ogg", "vo/scales/damage_12.ogg", "vo/scales/damage_13.ogg", "vo/scales/damage_14.ogg", "vo/scales/damage_15.ogg", "vo/scales/damage_16.ogg", "vo/scales/damage_17.ogg", "vo/scales/damage_18.ogg", "vo/scales/damage_19.ogg", "vo/scales/damage_20.ogg", "vo/scales/damage_21.ogg" } )
		},
		[HITGROUP_LEFTARM] = {
			['delay']= nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "HITGROUP_LEFTARM", { "vo/scales/damage_1.ogg", "vo/scales/damage_2.ogg", "vo/scales/damage_3.ogg", "vo/scales/damage_4.ogg", "vo/scales/damage_5.ogg", "vo/scales/damage_6.ogg", "vo/scales/damage_7.ogg", "vo/scales/damage_8.ogg", "vo/scales/damage_9.ogg", "vo/scales/damage_10.ogg", "vo/scales/damage_11.ogg", "vo/scales/damage_12.ogg", "vo/scales/damage_13.ogg", "vo/scales/damage_14.ogg", "vo/scales/damage_15.ogg", "vo/scales/damage_16.ogg", "vo/scales/damage_17.ogg", "vo/scales/damage_18.ogg", "vo/scales/damage_19.ogg", "vo/scales/damage_20.ogg", "vo/scales/damage_21.ogg" } )
		},
		[HITGROUP_RIGHTARM] = {
			['delay']= nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "HITGROUP_RIGHTARM", { "vo/scales/damage_1.ogg", "vo/scales/damage_2.ogg", "vo/scales/damage_3.ogg", "vo/scales/damage_4.ogg", "vo/scales/damage_5.ogg", "vo/scales/damage_6.ogg", "vo/scales/damage_7.ogg", "vo/scales/damage_8.ogg", "vo/scales/damage_9.ogg", "vo/scales/damage_10.ogg", "vo/scales/damage_11.ogg", "vo/scales/damage_12.ogg", "vo/scales/damage_13.ogg", "vo/scales/damage_14.ogg", "vo/scales/damage_15.ogg", "vo/scales/damage_16.ogg", "vo/scales/damage_17.ogg", "vo/scales/damage_18.ogg", "vo/scales/damage_19.ogg", "vo/scales/damage_20.ogg", "vo/scales/damage_21.ogg" } )
		},
		[HITGROUP_LEFTLEG] = {
			['delay']= nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "HITGROUP_LEFTLEG", { "vo/scales/damage_1.ogg", "vo/scales/damage_2.ogg", "vo/scales/damage_3.ogg", "vo/scales/damage_4.ogg", "vo/scales/damage_5.ogg", "vo/scales/damage_6.ogg", "vo/scales/damage_7.ogg", "vo/scales/damage_8.ogg", "vo/scales/damage_9.ogg", "vo/scales/damage_10.ogg", "vo/scales/damage_11.ogg", "vo/scales/damage_12.ogg", "vo/scales/damage_13.ogg", "vo/scales/damage_14.ogg", "vo/scales/damage_15.ogg", "vo/scales/damage_16.ogg", "vo/scales/damage_17.ogg", "vo/scales/damage_18.ogg", "vo/scales/damage_19.ogg", "vo/scales/damage_20.ogg", "vo/scales/damage_21.ogg" } )
		},
		[HITGROUP_RIGHTLEG] = {
			['delay']= nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "HITGROUP_RIGHTLEG", { "vo/scales/damage_1.ogg", "vo/scales/damage_2.ogg", "vo/scales/damage_3.ogg", "vo/scales/damage_4.ogg", "vo/scales/damage_5.ogg", "vo/scales/damage_6.ogg", "vo/scales/damage_7.ogg", "vo/scales/damage_8.ogg", "vo/scales/damage_9.ogg", "vo/scales/damage_10.ogg", "vo/scales/damage_11.ogg", "vo/scales/damage_12.ogg", "vo/scales/damage_13.ogg", "vo/scales/damage_14.ogg", "vo/scales/damage_15.ogg", "vo/scales/damage_16.ogg", "vo/scales/damage_17.ogg", "vo/scales/damage_18.ogg", "vo/scales/damage_19.ogg", "vo/scales/damage_20.ogg", "vo/scales/damage_21.ogg" } )
		},
		[HITGROUP_GEAR] = {
			['delay']= nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "HITGROUP_GEAR", { "vo/scales/damage_1.ogg", "vo/scales/damage_2.ogg", "vo/scales/damage_3.ogg", "vo/scales/damage_4.ogg", "vo/scales/damage_5.ogg", "vo/scales/damage_6.ogg", "vo/scales/damage_7.ogg", "vo/scales/damage_8.ogg", "vo/scales/damage_9.ogg", "vo/scales/damage_10.ogg", "vo/scales/damage_11.ogg", "vo/scales/damage_12.ogg", "vo/scales/damage_13.ogg", "vo/scales/damage_14.ogg", "vo/scales/damage_15.ogg", "vo/scales/damage_16.ogg", "vo/scales/damage_17.ogg", "vo/scales/damage_18.ogg", "vo/scales/damage_19.ogg", "vo/scales/damage_20.ogg", "vo/scales/damage_21.ogg" } )
		}
	},
	['callouts'] = { -- Callouts used in the Callout wheel
		['agree'] = { -- Your Callout classname
			['name'] = "Agree",--Callout Text (This is what you will see in the wheel)
			['delay']= nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "Wheel_Agree", { "vo/scales/WheelAgree.ogg" } )
		},
		['disagree'] = { -- Your Callout classname
			['name'] = "Disagree",--Callout Text (This is what you will see in the wheel)
			['delay']= nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "Wheel_Disagree", { "vo/scales/WheelDisagree.ogg" } )
		}
	},
	['external'] = { --Completely optional, allows you to integrate with external mods
		['bash'] = { -- Used by TFA Base
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "Bash", { "vo/scales/Bash_1.ogg" } )
		}
	}
}

-- If you have any questions join my Discord, I can help you there: https://discord.gg/AKcvFmTdCb