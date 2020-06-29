local display = false
local faction -- Move to client
local isFactionOwner = nil -- Move to client
local cooldown = false

local core = exports.core

function timer(timer)
    cooldown = true
    local time = Wait(timer)
    cooldown = false
end


function SetDisplay(bool)

    display = bool
    SetNuiFocus(bool, bool)
    local objectName = {}

    if faction ~= 0 then
        objectName = {
            type = "ui",
            status = bool,
            faction = faction,
            isOwner = isFactionOwner,
            window = "ui1"
        }
    else
        objectName = {
            type = "ui",
            status = bool,
            window = "ui2"
        }
    end

    SendNUIMessage(objectName)
end

Citizen.CreateThread(function(source)
    while true do
    Citizen.Wait(5)
        if IsControlJustReleased(1,  74) then
            TriggerServerEvent("getplayerfaction")
        end
    end
end)

-- Move to client
function SetFaction(faction1)
    faction = faction1
    
end

function SetFactionOwner(bool)
    isFactionOwner = bool
end


RegisterNetEvent("factiondetails")
AddEventHandler("factiondetails", function(factiondetails)

    SetFaction(factiondetails)
    print(factiondetails)
    local character = exports.core:GetChar()
    
    if factiondetails ~= 0 then
        if tonumber(factiondetails.factionLeader) == tonumber(character.id) then
            SetFactionOwner(true)
        else
            SetFactionOwner(false)
        end
    end

    SetDisplay(not display)

end)
-- until here


RegisterNUICallback("exit", function(data)
    SetDisplay(false)
end)

RegisterNUICallback("error", function(data)
    SetDisplay(false)
end)

RegisterNUICallback("invitedchar", function(data)
    print(data.charid)
    TriggerServerEvent("SendFactionInvitation", data.charid, data.factionid)
end)

RegisterNUICallback("kickplayer", function(data)

    --exports.core:log(data.charId)
    --exports.core:log(data.factionid)
   
    TriggerServerEvent("kickPlayerFromFaction", data)
    
end)

RegisterNUICallback("createrank", function(data)
    if data.factionid and data.rankname and data.wage  then
    TriggerEvent("passRankInfoToClient", data)
    else
    core:log("Please fill all the fields.")
    end
end)

RegisterNUICallback("setrank", function(data)
    if data.factionid and data.charid and data.rank then
    TriggerServerEvent("SetPlayerRank", data)
    else
        core:log("Please fill all the fields.")
    end
end)

RegisterNetEvent("refreshui")
AddEventHandler("refreshui", function(factiondetails)
    TriggerServerEvent("getplayerfaction")
    SetDisplay(not display)

end)

RegisterNetEvent("stopui")
AddEventHandler("stopui", function()
    
    SetDisplay(false)

end)

RegisterNUICallback("createfaction", function(data)
    if data.factionname and data.factiontype then
        TriggerServerEvent("RegisterNewFaction", data)
    else
        core:log("Please fill all the fields.")
    end
    SetDisplay(not display)
end)

RegisterNUICallback("deleterank", function(data)
print(timer)
    if cooldown == false then
        if data.factionid and data.rankname then
            TriggerServerEvent("deleterank", data)
            timer(800)
        else 
            core:log("Please fill all the fields.")
        end
    else
        core:log("There's a cooldown, please wiat")
    end
end)

RegisterNUICallback("deletefaction", function(data)
    local factionid = data.factionid

   if factionid then 
    TriggerServerEvent("deletefaction", factionid)
   else
    core:log("An error has occurred, please reconnect #1.")
   end

end)