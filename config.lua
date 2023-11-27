-- Status functions
config = {}
config.maxHealth = 200 -- 300, 400
config.refreshUpdateDisplayHud = 100 -- The greater the millisecond, the more performance you will have in Resmon, it works by updating (milliseconds) MAX: 500 / MIN 100
config.refreshDamageNeeds = 5000 -- The greater the millisecond, the more performance you will have in Resmon, it works by updating (milliseconds) MAX: 10000 / MIN: 5000
config.damageHungerThirst = false -- False to remove hunger and thirst damage
config.handshakeStress = true -- Shake screen on the stress full
config.progressBar = true -- False to remove progressBar

config.talkingColor = { 
    "#B2FF75", -- Color in voice while talking
    "#FFF" -- Color in voice while silence
} 

-- Notify of attention on the needs status
NotifyHunger = function()
    return TriggerEvent("Notify", "Hunger", "Du hast Hunger", 3000)
end

NotifyThirst = function()
    return TriggerEvent("Notify", "Durst", "Du hast Durst", 3000)
end

-- Car functions
config.textBelt = 'Put on/remove the belt.' -- Text: Put on/Remove the belt.
config.bindBelt = 'B'    -- Car belt bind

config.velocity = 'kmh'  -- kmh or mph
config.forwardPed = true -- Throw ped in the car crashes without a belt
config.blockExitBelt = true -- True to block exiting the vehicle with the belt, false to exit the vehicle even with the belt activated

-- Info functions (Bank and Cash in screen)
getInfo = function(source)

    local Info = {
        bank = 2000,
        money = 50000
    }

    return Info -- Table containing { bank = number, money = number }
end

-- Fuel functions
FuelFunction = function(vehicle)
    return GetVehicleFuelLevel(vehicle)
end

-- Doors locked function
DoorsLocked = function(vehicle)
    return GetVehicleDoorsLockedForPlayer(vehicle)
end

--  (vehicle parameter is return of the GetVehiclePedIsUsing)

-- Visual functions
config.radioFreq = true -- False to remove radio frequency
config.clockTime = true -- False to remove clock
config.localization = true -- False to remove localization
config.showBank = false -- False to enable Bank
config.showCash = false -- False to enable Cash
config.onOFF = 'hud' -- Command for show/hide hud
-----------------------------------------------------------------------------------------------------------------------------------------
-- EVENTS
-----------------------------------------------------------------------------------------------------------------------------------------

--[[
Player is talking
TriggerClientEvent("zurg_hud:userTalking",source,true)

Player is silence
TriggerClientEvent("zurg_hud:userTalking",source,false)

Mic Proximity
TriggerClientEvent("zurg_hud:VoiceStatus",source,1)
TriggerClientEvent("zurg_hud:VoiceStatus",source,2)
TriggerClientEvent("zurg_hud:VoiceStatus",source,3)

Show Hud
TriggerClientEvent("hudActive",source,true)

Hide Hud
TriggerClientEvent("hudActive",source,false)

Progress Bar
TriggerClientEvent("Progress",source, msec)

Update Hunger Status
TriggerClientEvent("zurgHunger",source,hungerNumber)

Update Thirst Status
TriggerClientEvent("zurgThirst",source,thirstNumber)

Update Stress Status
TriggerClientEvent("zurgStress",source,stressNumber)

Radio Frequency
TriggerClientEvent("zurg_hud:radio",source,frequency)

Quit radio
TriggerClientEvent("zurg_hud:radio",source,false)

Radio talking
TriggerClientEvent("zurg_hud:radioTalking",source,false)]]--