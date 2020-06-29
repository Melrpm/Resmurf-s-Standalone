RegisterNetEvent("died")

AddEventHandler('onClientMapStart', function()
	Citizen.Wait(200)
	exports.spawnmanager:setAutoSpawn(false)
end)

character = {
  id,
  name,
  ped = GetPlayerPed(-1),
  age,
  location,
  clothing
}

--Citizen.CreateThread(function()
--  while true do
--    Citizen.Wait(30000)
--    character.location = GetEntityCoords(GetPlayerPed(-1))
--  end
--end)

function GetChar()
  return character
end


function SetChar(id, name, age)
  character.id = id
  character.name = name
  character.age = age
end

function RespawnPed(ped)

  --NetworkResurrectLocalPlayer(359.88, -589.01, 28.8, true, true, false)
  SetEntityCoords(GetEntityHeading(ped))
  ResurrectPed(ped)
  ClearPedTasksImmediately(ped)

end

RegisterCommand("revive", function()

  RespawnPed(GetPlayerPed(-1))


end, false)


AddEventHandler("died", function(killer) -- Set hospital respawn.
  log('You have been knocked out.')
  Citizen.Wait(10000)
    if IsEntityDead(GetPlayerPed(-1)) then
      log("You have received medical attention.")
      SetEntityCoords(GetPlayerPed(-1), 359.88, -589.01, 28.8, false, false, false, true)
      ResurrectPed(GetPlayerPed(-1))
      ClearPedTasksImmediately(GetPlayerPed(-1))
    end
end)


RegisterNetEvent("setposition")
AddEventHandler("setposition", function()
    local coords = {
    
    x = character.location.x,
    y = character.location.y,
    z = character.location.z
  }
  if character.location ~= nil then
    TriggerServerEvent("saveposition", coords, character.id)
  end

end)

function log(message)
  TriggerEvent("chatMessage",  "[vRP]", {0, 187, 0}, "^*^3"..message)
end

function Addchar(playerserverid, charId)

  TriggerServerEvent("savecharacterlist", playerserverid, charId, character.name)

end

function GetPedFromCharId(charId)
  local id

  for _k, v in pairs(characterlist) do
    if v.charid == charId then
      id = v.pserverid
      break
    end
  end

  local ped = GetPlayerPed(id)
  return ped
end

function GetCharIdFromPed()

  --local pserverid = GetPlayerServerId(GetPlayerPed(-1))
  print(GetPlayerServerId(GetPlayerPed(-1)))
  --TriggerServerEvent("GetCharIdFromPed", pserverid)

end

RegisterNetEvent("SetCharIdFromServerId")
AddEventHandler("SetCharIdFromServerId", function(charid)
  character.id = charid

end)


RegisterCommand("printshit", function(source)

  print(GetPlayerServerId(GetPlayerPed(-1)))

end, false)

Citizen.CreateThread(function()
  local alredyDead = false
  local killer

  while true do
    Citizen.Wait(50)
    local ped = GetPlayerPed(-1)
    if IsEntityDead(GetPlayerPed(-1)) == 1 and alreadyDead == false then

      killer = GetPedSourceOfDeath(ped)
      TriggerServerEvent("playerdied", killer)
      alreadyDead = true

    elseif IsEntityDead(GetPlayerPed(-1)) == false then
      alreadyDead = false
    end
  end
end)

function SetCharClothingLoadout()
  TriggerServerEvent("SetPlayerPedStructure")
end


RegisterNetEvent("CharacterSavedPreLoad")
AddEventHandler("CharacterSavedPreLoad", function()

  TriggerServerEvent("loadcharacters")

end)

AddEventHandler("playerSpawned", function()
  NetworkSetFriendlyFireOption(true)
  SetCanAttackFriendly(PlayerPedId(), true, true)
end)