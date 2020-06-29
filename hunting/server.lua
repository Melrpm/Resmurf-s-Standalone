-- 1 Deer, 2 Boar, 3 Lion, 4 pig, 5 Cow
-- Spawn spawnAnimals(max X, Max y, Quantity, Type of animal to spawn)
-- Q means the amount you want to spawn in a block
-- Corner 1 and 2 are the limits of where they can spawn.
local hunterSecurity = {}

local animal = {GetHashKey("a_c_deer"), GetHashKey("a_c_boar"), GetHashKey("a_c_mtlion"), GetHashKey("a_c_pig"), GetHashKey("a_c_cow")}
local deer = animal[1]
local boar = animal[2]
local lion = animal[3]
local pig = animal[4]
local cow = animal[5]
local nearPed = nil

local woods1 = {vector3(-669, 5648, 31), 25, deer} -- Create Spawnpoints here {Vector, Quantity, Animal to spawn}


AddEventHandler('onResourceStart', function()  --DONT CHANGE THE RESOURCE NAME, IF CHANGED, PLEASE CHANGE IT HERE ALSO. TURNED OFF AT THE MOMENT, UNCOMMENT LINE 22 TO TURN IT ON.
    --print("Resource Started")

    while true do 
        Citizen.Wait(0)
    --TriggerClientEvent("findPeds", -1, woods1[1], woods1[2], deer)
    Citizen.Wait(1 * 60000)
    end

end)


function spawnAnimals(vector, q, animal)

        -- Generate random coords
        local i = 0
    while i < q do
        math.randomseed(GetGameTimer())

        local randomx = vector.x + math.random(-25, 25)
        local randomy = vector.y + math.random(-50, 50)
        local randomz = 10.0
        
        local newCoords = {randomx, randomy, randomz}
        Wait(20)
  
    TriggerClientEvent("pedSpawner", -1, newCoords, animal)
    i = i + 1
    end
end

RegisterCommand('spawnpeds', function()

    TriggerClientEvent("findPeds", -1, woods1[1], woods1[2], woods1[3]) -- Manual Spawning
end, false)


RegisterNetEvent("spawnRemainingPeds")
AddEventHandler("spawnRemainingPeds", function(vector, alivePeds, Q, animal)
    if alivePeds < Q then
        if alivePeds >= 0 then 
        local AmountToSpawn = Q - alivePeds
        spawnAnimals(vector, AmountToSpawn, animal)
        if AmountToSpawn > 0 then
        
        print("Spawning: "..AmountToSpawn.." animal(s)") -- Comment to prevent console spam
        end
        end
    end
end, false)


RegisterCommand("gut1", function(source, args)

    local code = math.random(1, 1000000000)
    local charid = exports.core:GetCharIdFromServerId(source)
    hunterSecurity[charid] = code

    TriggerClientEvent("gutpets", source, hunterSecurity[charid])
end)

RegisterNetEvent("deleteped")
AddEventHandler("deleteped", function(playerid, networkidofentity)
    
    TriggerClientEvent("networkdeleteped", playerid, networkidofentity)
    
end)

RegisterNetEvent("reward")
AddEventHandler("reward", function(s, reward)
    local _source = source
    local charid = exports.core:GetCharIdFromServerId(_source)

    print(s)
    print(hunterSecurity[charid])

    if s == hunterSecurity[charid] then
        print("secured")
        hunterSecurity[charid] = nil
    else
        print("hacker detected")
        hunterSecurity[charid] = nil
    end
    
end)