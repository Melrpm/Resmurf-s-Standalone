AddEventHandler('onResourceStart', function(hunting)

Citizen.CreateThread(function()
  local playerPed = GetPlayerPed(-1)
  local pos = GetEntityCoords(playerPed)
  local minDist = math.huge
  local nearPed = nil


      for obj in EnumeratePeds() do
        local isDead = IsPedDeadOrDying(obj, 1)
        local isAnimal = GetPedType(obj);

          if isDead and isAnimal == 28 then
          local conditions = true
          Citizen.Wait(0)
          local distance = (GetDistanceBetweenCoords(GetEntityCoords(obj), GetEntityCoords(GetPlayerPed(-1))))
          if (distance < minDist) then
            minDist = distance
            nearPed = obj
            Citizen.Wait(0)
          end

        if distance < 10 and conditions == true then

          drawText3D(GetEntityCoords(obj).x, GetEntityCoords(obj).y, GetEntityCoords(obj).z,"[E] Gut Animal", {255, 255, 255, 255}, 0.25)
          -- DEBUG drawText3D(GetEntityCoords(obj).x, GetEntityCoords(obj).y, GetEntityCoords(obj).z, 'Model: ~g~'..obj..'\n~w~X: ~b~'..GetEntityCoords(obj).x..'\n ~w~Y: ~b~'..GetEntityCoords(obj).y..'\n ~w~Z: ~b~'..GetEntityCoords(obj).z, {255, 255, 255, 140}, 0.25)
      end
    end
      end
      local i = 0
      if IsControlJustReleased(1, 46) and i < 1 then -- Button E to gut down animal
        if not DecorExistOn(getClosestPed(), "skinned") then
          gutAnimal()
          local i = i + 1
        end
      end

  end)
end, false)