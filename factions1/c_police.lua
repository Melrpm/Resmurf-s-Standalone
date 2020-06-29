duty = false
local dutyCoords = {x = 457.79, y = -991.24, z = 30.68}
local range = 10000

RegisterCommand("duty", function()

local ped = GetPlayerPed(-1)
local pedCoords = GetEntityCoords(ped)
local distance = GetDistanceBetweenCoords(pedCoords.x, pedCoords.y, pedCoords.z, dutyCoords.x, dutyCoords.y, dutyCoords.z, true)

    if distance < range and duty == false then -- Going on duty
        print("you have gone onduty")
        TriggerServerEvent("SetOnDuty")
    elseif distance < range and duty == true then -- Going off duty
        print("you have gone off duty")
        TriggerServerEvent("SetOffDuty")
    end

end, false)

RegisterNetEvent("SetPlayerDuty")
AddEventHandler("SetPlayerDuty", function(charId, rank, bool)

    local ped = GetPlayerPed(-1)
    local _source = source
    duty = bool
    print(rank)
    print(duty)

    if duty == true then 
        print("duty")
        if rank == "Apprentice" then -- Apprentice Loadout
            SetPedComponentVariation(GetPlayerPed(-1), 11, 55, 0, 2)  --Shirt
            SetPedComponentVariation(GetPlayerPed(-1), 3, 0, 0, 2)  -- fix arms
            SetPedComponentVariation(GetPlayerPed(-1), 7, 8, 0, 2)   --remove scarfs or chains
            SetPedComponentVariation(GetPlayerPed(-1), 8, 58, 0, 2)   --Nightstick decoration
            SetPedComponentVariation(GetPlayerPed(-1), 4, 35, 0, 2)   --Pants
            SetPedComponentVariation(GetPlayerPed(-1), 6, 24, 0, 2)   --Shooes
            SetPedComponentVariation(GetPlayerPed(-1), 10, 8, 0, 2)   --rank

        elseif rank == "Police Chief" then -- Police Chief Loadout
            print("rank")
            SetPedComponentVariation(GetPlayerPed(-1), 11, 55, 0, 2)  --Shirt
            SetPedComponentVariation(GetPlayerPed(-1), 3, 0, 0, 2)  -- fix arms
            SetPedComponentVariation(GetPlayerPed(-1), 7, 8, 0, 2)   --remove scarfs or chains
            SetPedComponentVariation(GetPlayerPed(-1), 8, 58, 0, 2)   --Nightstick decoration
            SetPedComponentVariation(GetPlayerPed(-1), 4, 35, 0, 2)   --Pants
            SetPedComponentVariation(GetPlayerPed(-1), 6, 24, 0, 2)   --Shooes
            SetPedComponentVariation(GetPlayerPed(-1), 10, 8, 0, 2)   --rank
        else
            exports.core:SetCharClothingLoadout()
        end

    elseif duty == false then

        exports.core:SetCharClothingLoadout()

    end

end)