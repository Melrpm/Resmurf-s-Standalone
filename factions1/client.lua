local pendingInvitation
local factionid
local inviteSender

RegisterNetEvent("invitationsent")
AddEventHandler("invitationsent", function(charid, factionid, senderid)
    setinvitation(charid)
    setfactionid(factionid)
    setinvitesender(senderid)  

end)

function setinvitation(charid)
    pendingInvitation = charid
end

function setfactionid(fid)
    factionid = fid
end

function setinvitesender(senderid)
    inviteSender = senderid
end


RegisterCommand("faccept", function()

    local character = exports.core:GetChar()

    if tonumber(pendingInvitation) == tonumber(character.id) then

        TriggerServerEvent("SetPlayerFaction", pendingInvitation, factionid, inviteSender)

    else

        exports.core:log("You do not have any invitations.")

    end

end, false)

RegisterNetEvent("passRankInfoToClient")
AddEventHandler("passRankInfoToClient", function(data)


    local rank = {}
    local details = {}

    
    if data.permission == nil or data.rankname == nil or data.factionid == nil then 
        exports.core:log("There was an issue attempting to create this rank, please try again. If the error persist, please reach out to a staff member ASAP.")
    else

        if data.wage == nil then 
            details.wage = 0
        else
            details.wage = data.wage

        end

    details.permission = data.permission

    rank[data.rankname] = details

    TriggerServerEvent("registerNewRankinDB", rank, data.factionid, data.rankname)
    end

end)
