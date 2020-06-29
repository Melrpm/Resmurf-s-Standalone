onDuty = {}
policeFactionID = 1

RegisterNetEvent("SetOnDuty")
AddEventHandler("SetOnDuty", function(source1)
    local toggle = true
    local _source = source

    if _source == nil or _source == "" then
        print("shit")
        print(_source)
        _source = source1
    end

    local charId = exports.core:GetCharIdFromServerId(_source)
    local rank = exports.core:GetFactionRankFromCharId(charId)
    local userFaction = exports.core:GetFactionIdFromCharId(charId)

    if userFaction == policeFactionID then
        table.insert(onDuty, charId)
        TriggerClientEvent("SetPlayerDuty", _source, charId, rank, toggle)
        exports.core:SetCharDuty(charId, 1)
        MySQL.Async.execute("UPDATE characters SET duty=@duty, charId=@charId WHERE charId = @charId",
        {["@duty"] = 1, ["@charId"] = charId})

    else
        exports.core:slog("You don't belong to the Police Department Faction")
    end

end)

RegisterNetEvent("SetOffDuty")
AddEventHandler("SetOffDuty", function()
    local toggle = false
    local _source = source
    local charId = exports.core:GetCharIdFromServerId(_source)
    local rank = exports.core:GetFactionRankFromCharId(charId)
    local userFaction = exports.core:GetFactionIdFromCharId(charId)
    
    local doesExist, position = check(onDuty, charId)

    if userFaction == policeFactionID then
        if doesExist == true then
            table.remove(onDuty, position)
            TriggerClientEvent("SetPlayerDuty", _source, charId, rank, toggle)
            exports.core:SetCharDuty(charId, 0)
            MySQL.Async.execute("UPDATE characters SET duty=@duty, charId=@charId WHERE charId = @charId",
            {["@duty"] = 0, ["@charId"] = charId})
        end
    else 
        exports.core:slog("You don't belong to the Police Department Faction") 
    end
end)

RegisterCommand("copsonduty", function()

    print(json.encode(onDuty))  


end, false)


function onDutyList()

    local keyset={}
    local n=0

        for k,v in pairs(onDuty) do
            n=n+1
            keyset[n]=k
        end
        return keyset

end

function check(table, charId)

    for i,v in ipairs(table) do
      if v == charId then
        return true, i
      end
    end
    return false, false
  
  end

AddEventHandler('playerDropped', function (reason)
    local _source = source
    local charId = exports.core:GetCharIdFromServerId(_source)
    local bool, position = check(onDuty, charId)
    print(_source.." has dropped"..charId.." is the CharId")

    if bool == true then
        table.remove(onDuty, position)
    end
end)
