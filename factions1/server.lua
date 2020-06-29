local firstRank = "Apprentice"
factions = {}



AddEventHandler('onResourceStart', function(resourceName)
  if (GetCurrentResourceName() ~= resourceName) then
    return
  end
    local _source = source
    --local factions = MySQL.Sync.fetchAll("SELECT * FROM factions")

    MySQL.Async.fetchAll("SELECT * FROM factions",{}, function(factionsDetails)

      for k, v in pairs(factionsDetails) do
        local data = {}
        data.id = v.factionId
        data.name = v.factionName
        data.ranks = json.decode(v.ranks)
        data.members = v.members
        data.factionleader = v.factionLeader
        data.type = v.type
        --data.inventory = json.decode(factions[1].inventory)
        
        factions[v.factionId] = data
      end
    end)
end)

RegisterNetEvent("getplayerfaction")
AddEventHandler("getplayerfaction", function()

  local _source = source
  local charId = exports.core:GetCharIdFromServerId(_source)

  local factionId = exports.core:GetFactionIdFromCharId(tonumber(charId))
  local factiondetails = GetFactionDetails(factionId)

    if factiondetails ~= nil then
      local members = json.decode(factiondetails.members)
      local object = {}
      
      for k, v in pairs(members) do
        local result = GetCharNameAndFactionRankFromCharId(tonumber(v))
        local object2 = {v, result.name, result.rank}
        table.insert(object, object2)
      end

      factiondetails.membersnames = object
      factiondetails.ranklist = factiondetails.ranks
      TriggerClientEvent('factiondetails', _source, factiondetails)

  else
    factiondetails = 0
    TriggerClientEvent('factiondetails', _source, factiondetails)
  end


end)

function GetFactionDetails(factionId)
  if factions[factionId] then
    return factions[factionId]
  end
end



function GetCharNameAndFactionRankFromCharId(charId)
      local lookup = MySQL.Sync.fetchAll('SELECT * FROM characters WHERE charid = @charid', {['@charid'] = charId})

      local char = {   
    name = lookup[1].FirstName.." "..lookup[1].LastName,
    rank = lookup[1].factionrank,
       }
    if char then
      return  char
    end
end

function CheckfactionPermission(source)

  local charId = exports.core:GetCharIdFromServerId(source)
  local factionrank = exports.core:GetFactionRankFromCharId(charId)
  local factionid = exports.core:GetFactionIdFromCharId(tonumber(charId))
  local PlayerFactionRank
  local PlayerFactionRankPermission

  if factionrank ~= nil then
    PlayerFactionRank = factionrank
  end

  local faction = GetFactionDetails(factionid)
  local factionLeader = faction.factionleader

  if  faction.ranks ~= nil then
  PlayerFactionRankPermission = faction.ranks
  else 
    PlayerFactionRankPermission = false
  end

    if tonumber(factionLeader) == tonumber(charId) then
      return true
    elseif PlayerFactionRankPermission[PlayerFactionRank].permission == true then
      return true
    else
      return false
    end

end


RegisterNetEvent("SendFactionInvitation")
AddEventHandler("SendFactionInvitation", function(charid, factionid)
  local _source = source

  local serverid = exports.core:GetServerIdFromCharId(tonumber(charid))

    if serverid ~= nil and exports.core:GetFactionIdFromCharId(tonumber(charid)) == 0 then 
      local senderid = exports.core:GetCharIdFromServerId(_source)
      local faction = GetFactionDetails(factionid)
      --local charname = exports.core:GetNameFromCharId(charid)
      TriggerClientEvent("invitationsent", serverid, charid, factionid, senderid)
      exports.core:slog(serverid, "You have received an invitation to join the faction "..faction.name)
    elseif serverid == nil then
      exports.core:slog(_source, "This user does not exist or is not online.")
    elseif exports.core:GetFactionIdFromCharId(tonumber(charid)) ~= 0 then
      exports.core:slog(_source, "This user already belongs to a faction")
    end
 

end)

RegisterNetEvent("SetPlayerFaction")
AddEventHandler("SetPlayerFaction", function(charid, factionid, senderid)

 
  local realsenderid = exports.core:GetServerIdFromCharId(tonumber(senderid))
  local noFaction = 0
  local result = GetFactionDetails(factionid)
  local result2 = json.decode(result.members)
  local newFactionMember = exports.core:GetServerIdFromCharId(tonumber(charid)) 

  if exports.core:GetFactionIdFromCharId(tonumber(charid)) == noFaction and not has_value(result2, tonumber(charid)) then
    local table2 = tonumber(charid)

      table.insert(result2, table2)

      MySQL.Async.execute("UPDATE factions SET members=@members WHERE factionId = @factionId",{["@members"] = json.encode(result2), ["@factionId"] = factionid})
      MySQL.Async.execute("UPDATE characters SET faction=@faction, factionrank=@factionrank WHERE charId = @charId",{["@factionrank"] = firstRank,["@faction"] = factionid, ["@charId"] = charid})
      exports.core:SetFactionCharFaction(tonumber(charid), factionid)
      exports.core:SetCharFactionRank(tonumber(charid), firstRank)
      setFactionMembers(factionid, json.encode(result2))

      exports.core:slog(realsenderid, "User accepted your faction invitation")
      exports.core:slog(newFactionMember, "You have joined "..result.name.." faction")
      
  else
 
    exports.core:slog(senderid, "User already belongs to your faction")
    exports.core:slog(newFactionMember, "You already already belongs to that faction")

  end
TriggerClientEvent("invitationsent", newFactionMember, nil, nil)


end)


RegisterNetEvent("SetPlayerRank")
AddEventHandler("SetPlayerRank", function(data)
  local _source = source
  local factionmembers = json.decode(GetFactionDetails(data.factionid).members)

  if has_value(factionmembers, tonumber(data.charid)) then
    if CheckfactionPermission(_source) == true then
      local factionid = data.factionid
      local charid = data.charid
      local rank = data.rank
      local promotedCharName = exports.core:GetNameFromCharId(tonumber(charid))

      if promotedCharName then

        MySQL.Async.execute("UPDATE characters SET factionrank=@rank WHERE charid = @charid",{["@rank"] = rank, ["@charid"] = charid})
        exports.core:SetCharFactionRank(tonumber(charid), rank)
        exports.core:slog(_source, "You have successfully set "..promotedCharName.." rank to "..rank)

        TriggerClientEvent("refreshui", _source)
      else
        exports.core:slog(_source, "That character id doesn't exist.")
      end

    else

      exports.core:slog(_source, "You don't have permission to do such action, this has created a cheating report to head staff, make sure to contact them in beforehand.")

    end
  end

end)

function setFactionMembers(factionid, object)

  if factions[factionid] then
    factions[factionid].members = object
  end

end

RegisterNetEvent("kickPlayerFromFaction")
AddEventHandler("kickPlayerFromFaction", function(data)
  local _source = source

  local charId = tonumber(data.charId)
  local factionid = data.factionid
  
  local faction = 0
  local factionrank = nil
  local result = GetFactionDetails(factionid)
  local factionleader = tonumber(result.factionleader)
  local factionname = result.name
  
  if CheckfactionPermission(_source) and factionleader ~= charId then

 MySQL.Async.execute("UPDATE characters SET faction=@faction, factionrank=@factionrank WHERE charid = @charid",{["@faction"] = faction, ["@factionrank"] = factionrank, ["@charid"] = charId})
    
     local factionmemberlist = json.decode(result.members)

    if has_value(factionmemberlist, charId) then

      local index = getindex(factionmemberlist, charId)
      table.remove(factionmemberlist, index)
      
     MySQL.Async.execute("UPDATE factions SET members=@members WHERE factionid = @factionid",{["@members"] = json.encode(factionmemberlist), ["@factionid"] = factionid})
      exports.core:SetFactionCharFaction(charId, faction)
      exports.core:SetCharFactionRank(charId, nil)
      exports.core:slog(_source, "You have successfully kicked "..exports.core:GetNameFromCharId(charId))
      exports.core:slog(exports.core:GetServerIdFromCharId(charId), "You were kicked by "..exports.core:GetNameFromCharId(exports.core:GetCharIdFromServerId(_source)).." from the faction "..factionname)
      TriggerClientEvent("refreshui", _source)
      setFactionMembers(factionid, json.encode(factionmemberlist))
    else
      exports.core:slog(_source, "Major bug has occurred, please report this to an admin.")
    end

  elseif factionleader == charId then
    exports.core:slog(_source, "You cannot kick yourself from the faction, instead you may delete it.")
  else
    exports.core:slog(_source, "You don't have permission to do such action, this has created a cheating report to head staff, make sure to contact them in beforehand.")
  end
end)


function has_value (tab, val)
  for index, value in ipairs(tab) do
      if value == val then
          return true
      end
  end
  return false
end

function getindex (tab, val)
  for index, value in ipairs(tab) do
      if value == val then
          return index
      end
  end
  return false
end

function CreateFaction(factionName, type, charid)
  
  local rank = {}
  local details = {}
  local firstMember = {charid}

  details.permission = false
  details.wage = 0

  rank[firstRank] = details


  local rank = json.encode(rank)
  local members = json.encode(firstMember)
-- create faction
  local createfaction = MySQL.Sync.fetchAll("INSERT INTO factions SET factionName=@factionName, type=@type, factionLeader=@factionLeader, ranks=@ranks, members=@members",
  {["@factionName"] = tostring(factionName), ["@type"] = type, ["@factionLeader"] = charid, ["@ranks"] = rank, ["@members"] = members})

  local newFactionDetails = MySQL.Sync.fetchAll("SELECT * FROM factions WHERE factionName = @factionName AND factionLeader = @factionLeader",{["@factionName"] = factionName, ["@factionLeader"] = charid})
  local factionid = tostring(newFactionDetails[1].factionId)
  local factiondetails = newFactionDetails[1]

      local data = {}
      data.id = newFactionDetails[1].factionId
      data.name = newFactionDetails[1].factionName
      data.ranks = json.decode(newFactionDetails[1].ranks)
      data.members = newFactionDetails[1].members
      data.factionleader = newFactionDetails[1].factionLeader
      data.type = newFactionDetails[1].type

      factions[newFactionDetails[1].factionId] = data

-- Set player to a faction.
  MySQL.Async.execute("UPDATE characters SET faction=@faction, factionrank=@factionrank WHERE charId = @charId", {["@faction"] = factionid, ["@factionrank"] = firstRank, ["@charId"] = charid})
  exports.core:SetFactionCharFaction(charid, factionid)
  exports.core:SetCharFactionRank(charid, firstRank)
  return factionid, factionName

end


RegisterCommand("addmember", function()

  local charid = 31

  local result = {
    charid,
    25
  }

  MySQL.Async.execute("UPDATE factions SET members=@members WHERE factionId = @factionId",{["@members"] = json.encode(result), ["@factionId"] = 1})

end, false)

RegisterCommand("addmember1", function()

  local factionId = 1

  local result = MySQL.Sync.fetchAll("SELECT * FROM factions WHERE factionId = @factionId",{["@factionId"] = factionId})

end, false)

function RegisterNewRankinDB(rank, factionid, rankname)

  local function addNewRank(rank)

    factions[factionid].ranks = rank

  end

  local function addNewRankToExistingObjecT(factionid, actualRanks)

    factions[factionid].ranks = actualRanks

  end

  local rankName
  local permission = rank[rankname].permission
  local wage

  for k, v in pairs(rank) do
    if v.wage and v.wage ~= "" then
        rank[rankname].wage = v.wage
    else
        rank[rankname].wage = 0
    end
end

  print(json.encode(rank[rankname].wage))

  local _source = source

  if CheckfactionPermission(_source) == true then
    local result = GetFactionDetails(factionid)
    local actualRanks = result.ranks

    if actualRanks == "null" or actualRanks == nil then 
      MySQL.Async.execute("UPDATE factions SET ranks=@ranks WHERE factionId=@factionId",{["@factionId"] = factionid, ["@ranks"] = json.encode(rank)})
      addNewRank(rank)
      exports.core:slog(_source, "You have successfully added '"..rank[1].."' to your faction ranks. Permission: "..rank[1].permission.."Wage: "..rank[1].wage)
    
    else
    actualRanks[rankname] = rank[rankname]
    MySQL.Async.execute("UPDATE factions SET ranks=@ranks WHERE factionId=@factionId",{["@factionId"] = factionid, ["@ranks"] = json.encode(actualRanks)})
    addNewRankToExistingObjecT(factionid, actualRanks)
      if permission == true then
        exports.core:slog(_source, "You have successfully added '"..rankname.."' to your faction ranks. You have given permission to this rank and set the wage to $"..tonumber(rank[rankname].wage))
      elseif permission == false then
        exports.core:slog(_source, "You have successfully added '"..rankname.."' to your faction ranks. You have not given permission to this rank and set the wage to $"..tonumber(rank[rankname].wage))
      end
    end
  else
    exports.core:slog(_source, "You don't have permission to do such action.")
  end

end

RegisterNetEvent("registerNewRankinDB")
AddEventHandler("registerNewRankinDB", function(rank, factionid, rankname)
  

  local _source = source
  RegisterNewRankinDB(rank, factionid, rankname)
  TriggerClientEvent("refreshui", _source)
 
end)

RegisterNetEvent("RegisterNewFaction")
AddEventHandler("RegisterNewFaction", function(data)

  local _source = source
  local charid = exports.core:GetCharIdFromServerId(_source)
  local factionid, factionName = CreateFaction(data.factionname, data.factiontype, charid)

  exports.core:slog(_source, "You have successfully created the faction '"..factionName.."', your faction id is '"..factionid.."'")

end)

function deleterank(factionid, rank)

  
  local function deleterankserver(factionid, rank)
    factions[factionid].ranks[rank] = nil
   end

  local _source = source
  Citizen.Wait(250)
  local result = GetFactionDetails(factionid)
  local result2 = MySQL.Sync.fetchAll("SELECT * FROM characters WHERE faction = @factionId",{["@factionId"] = factionid})

  local ranks = result.ranks
  local members = result2[1].factionrank
  
  if members ~= rank and rank ~= firstRank and CheckfactionPermission(_source) == true and ranks[rank] then

    ranks[rank] = nil

    MySQL.Async.execute("UPDATE factions SET ranks=@ranks WHERE factionId=@factionId",{["@factionId"] = factionid, ["@ranks"] = json.encode(ranks)})
    exports.core:slog(_source, "You have successfully removed the rank '"..rank.."'")
      deleterankserver(factionid, rank)
    return true

  elseif rank == firstRank then
    exports.core:slog(_source, "You can't delete the rank '"..rank.."', that's a default rank.")
    return false
  elseif not members ~= rank then
    exports.core:slog(_source, "You must first remove every player from that rank.")
    return false
  elseif not CheckfactionPermission(_source) == true then
    exports.core:slog(_source, "You don't have permission to do such action.")
    return false
  elseif not anks[rank] then
    exports.core:slog(_source, "The rank doesn't exist." )
    return false
  end

end

RegisterNetEvent("deleterank")
AddEventHandler("deleterank", function(data)
  local _source = source
  local gotDeleted

  gotDeleted = deleterank(data.factionid, data.rankname)
  if gotDeleted then TriggerClientEvent("refreshui", _source) end

end)


RegisterNetEvent("deletefaction")
AddEventHandler("deletefaction", function(factionid)

  deleteFaction(factionid)

end)

function deleteFaction(factionid)

  local function deletefactionserver()
    factions[factionid] = nil
  end

  local _source = source
  local charId = exports.core:GetCharIdFromServerId(_source)
  local membersCount = 0
  local factiondetails = GetFactionDetails(factionid)

  if factionid and factiondetails then
    if CheckfactionPermission(_source) then
      local memberslist = json.decode(factiondetails.members)
      MySQL.Async.execute("DELETE FROM factions WHERE factionId = @factionId",{["@factionId"] = factionid})
      deletefactionserver()

      for Index, Value in pairs(memberslist) do
        membersCount = membersCount + 1
        MySQL.Async.execute("UPDATE characters SET faction=@faction, factionrank=@factionrank WHERE charid = @charid",{["@faction"] = 0, ["@factionrank"] = nil, ["@charid"] = Value})
        exports.core:SetFactionCharFaction(Value, 0)
        exports.core:SetCharFactionRank(Value, nil)
        factions[factionid] = nil
      end
      exports.core:slog(_source, "You have successfully deleted your faction")
      TriggerClientEvent("stopui", _source)
    else
      exports.core:slog(_source, "You don't have permission to delete this faction.")
    end
  else
    exports.core:slog(_source, "Faction id sent to the server was nil or the faction was already deleted.")
  end

end


RegisterCommand("setfaction", function()

end, false)


RegisterNetEvent("checkDuty")
AddEventHandler("checkDuty", function(charId)


  local _source = source
  print(_source)
  local charId = exports.core:IsPlayerOnDuty(charId)
  local duty = exports.core:IsPlayerOnDuty(charId)
  local factionId = exports.core:GetFactionIdFromCharId(charId)
  print(duty)
  print(factionId)

  if duty == 1 then
    print("gone ok")
    if factionId == policeFactionID then
      print("Gone ok")
      TriggerEvent("SetOnDuty", _source)
    end

  end

end)