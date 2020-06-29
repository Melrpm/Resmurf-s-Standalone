charlist = {}

RegisterNetEvent("savecharacter1")
AddEventHandler("savecharacter1", function(character, charId)

    local identifier = GetPlayerIdentifiers(source)[1]


    MySQL.Async.fetchAll("UPDATE characters SET clothing=@clothing WHERE charId = @charId",
          {["@charId"] = charId, ["@clothing"] = json.encode(character)},

        function (result)
    end)

end)


RegisterNetEvent("importcharacterstructure")
AddEventHandler("importcharacterstructure", function(charId)

    local identifier = GetPlayerIdentifiers(source)[1]
    local _source = source

    MySQL.Async.fetchAll("SELECT * FROM characters WHERE charId=@charId",

    {["@charId"] = charId},
  function(result)

    TriggerClientEvent("setstructureonped", _source, result)
    TriggerClientEvent("setpedcoord", _source, result)


    end)

end)


RegisterNetEvent("loadcharacters")
AddEventHandler("loadcharacters", function()
    local identifier = GetPlayerIdentifiers(source)[1]
    local _source = source


    MySQL.Async.fetchAll("SELECT * FROM characters WHERE steamId=@steamId",
    {["@steamId"] = identifier},

  function(result)

TriggerClientEvent("loadcharacterscreen", _source, result)
    end)

end)




RegisterNetEvent("savecoords")
AddEventHandler("savecoords", function(coords)

    local identifier = GetPlayerIdentifiers(source)[1]

    local coords = {
      x = coords.x,
      y = coords.y,
      z = coords.z
    } 


    MySQL.Async.fetchAll("UPDATE characters SET location=@location WHERE charId = @charId",
          {["@charId"] = 31, ["@location"] = json.encode(coords)},

        function (result)
    end)

end)