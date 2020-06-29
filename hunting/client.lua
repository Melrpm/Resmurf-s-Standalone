DecorRegister('skinned', 1)

local nearPed = nil

local entityEnumerator = { --Frosty Ice Function
    __gc = function(enum)
      if enum.destructor and enum.handle then
        enum.destructor(enum.handle)
      end
      enum.destructor = nil
      enum.handle = nil
    end
  }
  
  local function EnumerateEntities(initFunc, moveFunc, disposeFunc)
    return coroutine.wrap(function()
      local iter, id = initFunc()
      if not id or id == 0 then
        disposeFunc(iter)
        return
      end
      
      local enum = {handle = iter, destructor = disposeFunc}
      setmetatable(enum, entityEnumerator)
      
      local next = true
      repeat
        coroutine.yield(id)
        next, id = moveFunc(iter)
      until not next
      
      enum.destructor, enum.handle = nil, nil
      disposeFunc(iter)
    end)
  end
  
  function EnumeratePeds()
    Citizen.Wait(0)
    return EnumerateEntities(FindFirstPed, FindNextPed, EndFindPed)
  end

function drawText3D(x, y, z, text, col, scale)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    if onScreen then
        SetTextScale(scale,scale)--(0.3, 0.3)
        SetTextFont(0)
        SetTextProportional(1)
        SetTextColour(col[1],col[2],col[3],col[4])--(255, 255, 255, 140)
        SetTextDropshadow(0, 0, 0, 0, 55)
        SetTextEdge(2, 0, 0, 0, 150)
        SetTextDropShadow()
        SetTextOutline()
        SetTextEntry("STRING")
        SetTextCentre(1)
        AddTextComponentString(text)
        DrawText(_x,_y)
    end
end

function getGroundZ(x, y)
  local height = 0
  local foundGround = false

    while foundGround == false do
      Citizen.Wait(0)
      height = height + 1
      RequestCollisionAtCoord(x, y, height + 0.0)
      foundGround, zPos = GetGroundZFor_3dCoord(x, y, height + 0.0)
    end
  return zPos
end

RegisterNetEvent("pedSpawner")
AddEventHandler("pedSpawner", function(newCoords, animal)
--Random Generated Coords
local x = newCoords[1]
local y = newCoords[2]
local z = getGroundZ(x, y)
local pedLoc = 0
local pos =  GetEntityCoords(GetPlayerPed(-1))

-- Create the PED

  Citizen.CreateThread(function()
            RequestModel( animal )
        local ped1 =  CreatePed(28, animal, x, y, z, 0.0, true, true)
        SetEntityAsMissionEntity(ped1, true, true)
        TaskWanderInArea(ped1, x, y, z, 20.01, 0.0, 1.0)
        SetPedKeepTask(ped1, true)
        --SetModelAsNoLongerNeeded()
        SetNetworkIdCanMigrate(NetworkGetNetworkIdFromEntity(ped1), true)

  end, false)
        
end, false)


function msg(text)
    
    TriggerEvent("chatMessage",  "[Server]", {255,0,0}, text)
end


function getClosestPed()
          local minDist = math.huge
          local nearPed = nil
              Citizen.Wait(0)
              local playerPed = GetPlayerPed(-1)
              local pos = GetEntityCoords(playerPed )
              for ped in EnumeratePeds() do
                if (ped ~= playerPed and not IsPedHuman(ped)) then
                local dist = #(pos - GetEntityCoords(ped))
                  if (dist < minDist) then
                      minDist = dist
                      nearPed = ped
                   end
            end
          end
      return nearPed
end

function distanceFromClosestPed()

  local distance = (GetDistanceBetweenCoords(GetEntityCoords(getClosestPed()), GetEntityCoords(GetPlayerPed(-1))))

  return distance
end

function playAnim(scenarioName)

  TaskStartScenarioInPlace(GetPlayerPed(-1), scenarioName, 1, false)
  
end

function gutAnimal(ped, s)
  local player = GetPlayerPed(-1)
  local isPedDead = IsPedDeadOrDying(ped, 1)
  local networkid = NetworkGetNetworkIdFromEntity(ped)
  local entityowner = NetworkGetEntityOwner(ped)
  local playerid = GetPlayerServerId(entityowner)

  if IsPedModel(ped, GetHashKey("a_c_mtlion")) == 1 or IsPedModel(ped, GetHashKey("a_c_cow")) == 1 or IsPedModel(ped, GetHashKey("a_c_deer")) == 1 or IsPedModel(ped, GetHashKey("a_c_boar")) == 1 or IsPedModel(ped, GetHashKey("a_c_pig")) == 1 then

  Citizen.Wait(math.random(0,1000))

    playAnim("WORLD_HUMAN_GARDENER_PLANT")
    Citizen.Wait(1000)
    local reward = 10

        if IsPedModel(ped, GetHashKey("a_c_mtlion")) == 1 then
          TriggerServerEvent("deleteped", playerid, networkid)
          TriggerServerEvent("reward", s, reward)
          DecorRemove(ped, "skinned")
          local loot = AnimalLootMultiplier()
          local loot2 = 2 * AnimalLootMultiplier()
          msg("You've gutted a lion and have gotten: "..loot.. " bone(s) and "..loot2.." fat")
       

        elseif IsPedModel(ped, GetHashKey("a_c_cow")) == 1 then
          TriggerServerEvent("deleteped", playerid, networkid)
          TriggerServerEvent("reward", s, reward)
          DecorRemove(ped, "skinned")
          local loot = AnimalLootMultiplier()
          local loot2 = math.random(1, 3) * AnimalLootMultiplier()
          msg("You've gutted a cow and have gotten: "..loot.. " bone(s) and "..loot2.." fat")
        

        elseif IsPedModel(ped, GetHashKey("a_c_deer")) == 1 then
          TriggerServerEvent("deleteped", playerid, networkid)
          TriggerServerEvent("reward", s, reward)
          DecorRemove(ped, "skinned")
          local loot = AnimalLootMultiplier()
          local loot2 = math.random(1, 3) * AnimalLootMultiplier()
          msg("You've gutted a deer and have gotten: "..loot.. " bone(s) and "..loot2.." fat")

        elseif IsPedModel(ped, GetHashKey("a_c_boar")) == 1 then
          TriggerServerEvent("deleteped", playerid, networkid)
          TriggerServerEvent("reward", s, reward)
          DecorRemove(ped, "skinned")
          local loot = AnimalLootMultiplier()
          local loot2 = math.random(1, 3) * AnimalLootMultiplier()
          msg("You've gutted a boar and have gotten: "..loot.. " bone(s) and "..loot2.." fat")

        elseif IsPedModel(ped, GetHashKey("a_c_pig")) == 1 then
          TriggerServerEvent("deleteped", playerid, networkid)
          TriggerServerEvent("reward", s, reward)
          DecorRemove(ped, "skinned")
          local loot = AnimalLootMultiplier()
          local loot2 = math.random(2, 4) * AnimalLootMultiplier()
          msg("You've gutted a pig and have gotten: "..loot.. " bone(s) and "..loot2.." fat")
        end
          ClearPedTasksImmediately(player)
end
end


RegisterNetEvent("gutpets")
AddEventHandler("gutpets", function(s)

local i = 0
local isPedDead = IsPedDeadOrDying(ped, 1)
local ped = getClosestPed()
--local entityOwner = NetworkGetEntityOwner(ped)
local player = PlayerPedId()

  if not DecorExistOn(getClosestPed(), "skinned") and distanceFromClosestPed() < 1.5 and isPedDead then
    DecorSetInt(ped, "skinned", 1)
    gutAnimal(ped, s)
  end

end)

RegisterNetEvent("networkdeleteped")
AddEventHandler("networkdeleteped", function(networkidofentity)

  local ped = NetworkGetEntityFromNetworkId(networkidofentity)

  DeletePed(ped)

end)


function AnimalLootMultiplier()

  local result
  local randomNum = math.random(0, 20)

  if randomNum < 16 then
  result = 1
  elseif randomNum >= 16 and randomNum <= 19 then
  result = math.random(1, 2)
  elseif randomNum == 20 then
    result = math.random(1, 3)
  end
  return result
end

RegisterNetEvent("findPeds")
AddEventHandler("findPeds", function(vector, Q, animal)

  local playerPed = PlayerPedId()
  local pos = vector
  local minDist = math.huge
  local nearPeds = {}
  local iter = 0
    
  for ped in EnumeratePeds() do
    Citizen.Wait(0)
    if (ped ~= playerPed and not IsPedHuman(ped)) then
      local dist = #(pos - GetEntityCoords(ped))
      if (dist < 100) then
        iter = iter + 1
        nearPeds[iter] = {ped = ped, dist = dist}
      end
    end
  end
TriggerServerEvent("spawnRemainingPeds", pos, iter, Q, animal)
end, false)