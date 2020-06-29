local display = false
local ourNumber = 1;
local zoom = "visage"
local cam
local heading = 352.219879
local defaultCamLocation
local pedclothes
local pedindexes
local storedClothes
local skincolor
local characterinfo

local stores = {
    
    {x = 429.02188110352, y = -800.37640380859, z = 29.491149902344, r = 8}, -- Clothing shop near PD
    {x = 71.854133605957, y = -1398.92895507819, z = 29.37615776062, r = 8},
    {x = -161.87548828125, y = -301.81079101563, z = 39.733253479004, r = 8},
    {x = -710.64904785156, y = -154.12226867676, z = 37.415107727051, r = 8},
    {x = 123.15653991699, y = -228.58885192871, z = 54.557804107666, r = 8},
    {x = -829.49066162109, y = -1073.4519042969, z = 11.328116416931, r = 8},
    {x = -1188.7088623047, y = -765.451171875, z = 17.319820404053, r = 8},
    {x = -1451.7413330078, y = -237.48146057129, z = 49.808601379395, r = 8},
    {x = -3173.2380371094, y = 1039.5354003906, z = 20.863199234009, r = 8},
    {x = -1109.2126464844, y = -2709.2512207031, z = 19.108123779297, r = 8},
    {x = 614.84924316406, y = 2767.9848632813, z = 42.088069915771, r = 8},
    {x = 1190.3645019531, y = 2713.9777832031, z = 38.222663879395, r = 8},
    {x = 1696.7701416016, y = 4829.583984375, z = 42.06315612793, r = 8},
    {x = 11.947332382202, y = 6514.0668945313, z = 31.877861022949, r = 8},
    

}


function log(message)
         TriggerEvent("chatMessage",  "[Server]", {255,0,0}, message)
end

 
--[[ Citizen.CreateThread(function(source)
while true do
   Citizen.Wait(2)
if IsControlJustReleased(1,  74) then
    local ped = GetPlayerPed(-1)
    local clothes = GetThisPedClothes(ped)
    local props = GetThisPedIndex(ped)
    local overlay = GetPedCharacter(ped)

    Store(clothes, props, overlay, facialfeatures)
    

    for k, store in pairs(stores) do
        pos = vector3(store.x, store.y, store.z)
        distance = GetDistanceBetweenCoords(pos, GetEntityCoords(ped), false)
        if distance < store.r then

            local loadScreen = 1
    SetDisplay(not display, "ui1")
    local ped = GetPlayerPed(-1)
    pedclothes = GetThisPedClothes(ped)
    pedindexes = GetThisPedIndex(ped)
        end

    end
    
end
end
end)
 ]]



RegisterNetEvent("updateStats")
AddEventHandler("updateStats", function(data)
  playerInfo = data
setPid(playerInfo.playerId)
msg(playerInfo.playerId)

end)


RegisterNUICallback("setcamclothing", function(data)
    local zoom = camAngle("vetements")
    SetEntityHeading(GetPlayerPed(-1), heading)
    camera(true)
end)

RegisterNUICallback("createcharacterped", function(data)
end)

RegisterNUICallback("setcamothers", function(data)
    local zoom = camAngle("pilosite")
    SetEntityHeading(GetPlayerPed(-1), heading)
    camera(true)

end)

RegisterNUICallback("setcamhead", function(data)
    local zoom = camAngle("visage")
    SetEntityHeading(GetPlayerPed(-1), heading)
    camera(true)

end)


RegisterNUICallback("changeclothing", function(data)
    local player = GetPlayerPed(-1)
    local componentId = tonumber(data.componentId)
    local drawable = tonumber(data.drawable)
    local texture = tonumber(data.texture)
    local ped = GetPlayerPed(-1)
    local model = GetEntityModel(ped)


    if data.index == true and drawable ~= -1 then
        SetPedPropIndex(player, componentId, drawable, texture, 2)
    elseif componentId ~= 0 and drawable ~= -1 and componentId ~= 2 then
        if IsPedComponentVariationValid(player, componentId, drawable, texture) then
            SetPedComponentVariation(player, componentId, drawable, texture, 2) 
        end
    end
    if model == 1885233650 then
        if data.index == true and drawable == -1 and componentId ~= 2 then  
            ClearPedProp(GetPlayerPed(-1), componentId)
        elseif componentId == 11 and drawable == -1 then -- -1 torso2
        SetPedComponentVariation(player, componentId, 15, texture, 2)
        elseif componentId == 3 and drawable == -1 then -- -1 torso
        SetPedComponentVariation(player, componentId, 15, texture, 2)
        elseif componentId == 8 and drawable == -1 then -- -1 undershirt 
        SetPedComponentVariation(player, componentId, 15, texture, 2)
        elseif componentId == 6 and drawable == -1 then -- -1 shoes
        SetPedComponentVariation(player, componentId, 34, texture, 2)
        elseif componentId == 4 and drawable == -1 then -- -1 pants
        SetPedComponentVariation(player, componentId, 21, texture, 2)
        end
    end

    if model == -1667301416 then
        if data.index == true and drawable == -1 and componentId ~= 2 then  
            ClearPedProp(GetPlayerPed(-1), componentId)
        elseif componentId == 11 and drawable == -1 then
        SetPedComponentVariation(player, componentId, 15, texture, 2)
        elseif componentId == 3 and drawable == -1 then
        SetPedComponentVariation(player, componentId, 15, texture, 2)
        elseif componentId == 8 and drawable == -1 then
        SetPedComponentVariation(player, componentId, 15, texture, 2)
        elseif componentId == 6 and drawable == -1 then -- -1 shoes
        SetPedComponentVariation(player, componentId, 38, texture, 2)
        elseif componentId == 4 and drawable == -1 then -- -1 pants
        SetPedComponentVariation(player, componentId, 17, texture, 2)
        end
    end

    if componentId == 2 and data.hair == true then
        SetPedComponentVariation(player, componentId, drawable, 0, 2) 
        SetPedHairColor(ped, texture, texture)
    end
    SetDisplay(true, "ui1")
end)

RegisterNUICallback("changehair", function(data)
    local texture = tonumber(data.texture)
    local ped = GetPlayerPed(-1)
        SetPedHairColor(ped, texture, texture)
end)

RegisterNUICallback("changeeyes", function(data)
    local ped = GetPlayerPed(-1)
    local eyecolors = tonumber(data.eyescolor)

    SetPedEyeColor(ped, eyecolors)
    SetDisplay(true, "ui1")
end)

RegisterNUICallback("changeoverlay", function(data)

    local ped = GetPlayerPed(-1)
    local opacity = 0.99
    local overlayId = tonumber(data.overlayId)
    local index = tonumber(data.index)

    if index ~= -1 then
    --SET_PED_COMPONENT_VARIATION(Ped ped, int componentId, int drawableId, int textureId, int paletteId)
    SetPedHeadOverlay(ped, overlayId, index, 0.99)
    SetDisplay(true, "ui1")
    elseif index == -1 then
        --SetPedHeadBlendData(ped, 0, 0, 0, 0, 0, 0, 0.5, 0.5, 0, true)
        SetPedHeadOverlay(ped, overlayId, 255, 0.99)
    end
end)

RegisterNUICallback("changeoverlaycolor", function(data)

    local ped = GetPlayerPed(-1)
    local opacity = 0.99
    local overlayId = tonumber(data.overlayId)
    local index = tonumber(data.index)

    SetPedHeadOverlayColor(ped, overlayId, 1, index, index)
    SetDisplay(true, "ui1")
end)

RegisterNUICallback("changefacefeature", function(data)

    local ped = GetPlayerPed(-1)
    local scale = data.scale + 0.0
    local index = data.index

    SetPedFaceFeature(ped, index, scale)

end)

RegisterNUICallback("changeskincolor", function(data)

    local ped = GetPlayerPed(-1)
    local scale = tonumber(data.scale)

    SetPedHeadBlendData(ped, 0, 0, 0, scale, scale, scale, 0.5, 0.5, 0, true)

    storeSkinColor(scale)

end)

function storeSkinColor(color)

    skincolor = color

end




RegisterNUICallback("error", function(data)
    SetDisplay(false)
end)

RegisterNUICallback("clearped", function()
    local ped = GetPlayerPed(-1)
    local model = GetEntityModel(ped)

    ClearAllPedProps(ped)
    SetPedComponentVariation(ped, 3, 15, 0, 2)   --Torso
    SetPedComponentVariation(ped, 11, 15, 0, 2)   --Torso2
    SetPedComponentVariation(ped, 8, 15, 0, 2)   --undershirt
    SetPedComponentVariation(ped, 10, 0, 0, 2)   --rank
    SetPedComponentVariation(ped, 9, 0, 0, 2)   --kevlar
    SetPedComponentVariation(ped, 1, 0, 0, 2)   --mask
    SetPedComponentVariation(ped, 7, 0, 0, 2)  -- Accessories
    SetPedComponentVariation(ped, 5, 0, 0, 2) -- Parachute

    if model == 1885233650 then
        SetPedComponentVariation(ped, 6, 34, 0, 2)   --Shooes
        SetPedComponentVariation(ped, 4, 21, 0, 2)   --Pants
    elseif model == -1667301416 then
        SetPedComponentVariation(ped, 4, 17, 0, 2)   --Pants
        SetPedComponentVariation(ped, 6, 35, 0, 2)   --Shooes
    end

    SetPedHeadBlendData(ped, 0, 0, 0, 0, 0, 0, 0.5, 0.5, 0, true)
    SetPedEyeColor(ped, 0)
    SetPedHeadOverlay(ped, 0, 255, 0.99) -- Blemishes
    SetPedHeadOverlay(ped, 1, 255, 0.99) -- facilahir
    SetPedHeadOverlay(ped, 2, 255, 0.99) -- eyebrows
    SetPedHeadOverlay(ped, 3, 255, 0.99) -- ageing
    SetPedHeadOverlay(ped, 4, 255, 0.99) -- makeup
    SetPedHeadOverlay(ped, 5, 255, 0.99) -- Blush
    SetPedHeadOverlay(ped, 6, 255, 0.99) -- complexion
    SetPedHeadOverlay(ped, 7, 255, 0.99) -- sundamage
    SetPedHeadOverlay(ped, 8, 255, 0.99) -- lipstick
    SetPedHeadOverlay(ped, 9, 255, 0.99) -- moles
    SetPedHeadOverlay(ped, 10, 255, 0.99) -- chest hair
    SetPedHeadOverlay(ped, 11, 255, 0.99) -- body blemishes

    SetDisplay(true, "ui1")

end)

RegisterNUICallback("clearface", function()
    local ped = GetPlayerPed(-1)

    SetPedHeadBlendData(ped, 0, 0, 0, 0, 0, 0, 0.5, 0.5, 0, true)
    SetPedEyeColor(ped, 0)
    SetPedHeadOverlay(ped, 0, 255, 0.99) -- Blemishes
    SetPedHeadOverlay(ped, 1, 255, 0.99) -- facilahir
    SetPedHeadOverlay(ped, 2, 255, 0.99) -- eyebrows
    SetPedHeadOverlay(ped, 3, 255, 0.99) -- ageing
    SetPedHeadOverlay(ped, 4, 255, 0.99) -- makeup
    SetPedHeadOverlay(ped, 5, 255, 0.99) -- Blush
    SetPedHeadOverlay(ped, 6, 255, 0.99) -- complexion
    SetPedHeadOverlay(ped, 7, 255, 0.99) -- sundamage
    SetPedHeadOverlay(ped, 8, 255, 0.99) -- lipstick
    SetPedHeadOverlay(ped, 9, 255, 0.99) -- moles
    SetPedHeadOverlay(ped, 10, 255, 0.99) -- chest hair
    SetPedHeadOverlay(ped, 11, 255, 0.99) -- body blemishes

    
    SetDisplay(true, "ui1")

end)

RegisterNUICallback("clearfacials", function()
    local ped = GetPlayerPed(-1)

    SetPedFaceFeature(ped, 0, 0)
    SetPedFaceFeature(ped, 1, 0)
    SetPedFaceFeature(ped, 2, 0)
    SetPedFaceFeature(ped, 3, 0)
    SetPedFaceFeature(ped, 4, 0)
    SetPedFaceFeature(ped, 5, 0)
    SetPedFaceFeature(ped, 6, 0)
    SetPedFaceFeature(ped, 7, 0)
    SetPedFaceFeature(ped, 8, 0)
    SetPedFaceFeature(ped, 9, 0)
    SetPedFaceFeature(ped, 10, 0)
    SetPedFaceFeature(ped, 11, 0)
    SetPedFaceFeature(ped, 12, 0)
    SetPedFaceFeature(ped, 13, 0)
    SetPedFaceFeature(ped, 14, 0)
    SetPedFaceFeature(ped, 15, 0)
    SetPedFaceFeature(ped, 16, 0)
    SetPedFaceFeature(ped, 17, 0)
    SetPedFaceFeature(ped, 18, 0)
    SetPedFaceFeature(ped, 19, 0)


    
    SetDisplay(true, "ui1")

end)


RegisterNUICallback("clearhead", function()
    local ped = GetPlayerPed(-1)

    ClearPedProp(ped, 0)
    ClearPedProp(ped, 1)
    ClearPedProp(ped, 2)
    SetPedComponentVariation(ped, 1, 0, 0, 2)   --mask
    SetPedComponentVariation(ped, 2, 0, 0, 2) -- hair
    SetDisplay(true, "ui1")

end)

RegisterNUICallback("clearclothing", function()
    local ped = GetPlayerPed(-1)
    local model = GetEntityModel(ped)

    SetPedComponentVariation(ped, 3, 15, 0, 2)   --Torso
    SetPedComponentVariation(ped, 11, 15, 0, 2)   --Torso2
    SetPedComponentVariation(ped, 8, 15, 0, 2)   --undershirt
    SetPedComponentVariation(ped, 9, 0, 0, 2)   --kevlar

    if model == 1885233650 then
        SetPedComponentVariation(ped, 6, 34, 0, 2)   --Shooes
        SetPedComponentVariation(ped, 4, 21, 0, 2)   --Pants
    elseif model == -1667301416 then
        SetPedComponentVariation(ped, 4, 17, 0, 2)   --Pants
        SetPedComponentVariation(ped, 6, 35, 0, 2)   --Shooes
    end
    SetDisplay(true, "ui1")

end)

RegisterNUICallback("clearaccessories", function()
    local ped = GetPlayerPed(-1)

    ClearPedProp(ped, 6) -- watches
    ClearPedProp(ped, 7) -- Bracelet
    SetPedComponentVariation(ped, 5, 0, 0, 2) -- Parachute
    SetPedComponentVariation(ped, 7, 0, 0, 2)  -- Accessories
    SetPedComponentVariation(ped, 10, 0, 0, 2)   --rank/badge
    SetDisplay(true, "ui1")

end)

RegisterNUICallback("rotate", function(data)
    local ped = GetPlayerPed(-1)
    local pheading = data.pheading + .01
    SetEntityHeading(GetPlayerPed(-1), pheading)

end)


RegisterNUICallback("rotateArrow", function(data)

    local ped = GetPlayerPed(-1)
    SetEntityHeading(ped, (GetEntityHeading(ped) - data.pheading))

end)

function SetPed(id)
  pid = id;
end


function SetDisplay(bool, window)
    local skincolor1
    local ped = GetPlayerPed(-1)
    local clothes = exports.core:GetThisPedClothes(ped)
    local props = exports.core:GetThisPedIndex(ped)
    local character = exports.core:GetPedCharacter(ped)
    local facialfeatures = exports.core:GetFaceFeatures(ped)
    SetEntityHeading(ped, heading)

    local playerClothes = {
        hat = props.hats,
        hair = clothes.hair,
        haircolor = clothes.haircolor,
        glasses = props.glasses,
        ears = props.ears,
        watch = props.watch,
        bracelet = props.bracelet,
        torso = clothes.torso,
        pants = clothes.pants,
        undershirt = clothes.undershirt,
        shoes = clothes.shoes,
        torso2 = clothes.torso2,
        parachute = clothes.parachute,
        accessory = clothes.accessory,
        kevlar = clothes.kevlar,
        badge = clothes.badge,
        mask = clothes.mask
    }

    local mTV = {
        hat = (texturePropVariation(0)- 1),
        glasses = (texturePropVariation(1)- 1),
        ears = (texturePropVariation(2)- 1),
        watch = (texturePropVariation(6)- 1),
        bracelet = (texturePropVariation(7)- 1),
        torso = (textureVariation(3)- 1),
        pants = (textureVariation(4)- 1),
        undershirt = (textureVariation(8)- 1),
        shoes = (textureVariation(6) - 1),
        torso2 = (textureVariation(11)- 1),
        parachute = (textureVariation(5) - 1),
        accessory = (textureVariation(7) - 1),
        kevlar = (textureVariation(9) - 1),
        badge = (textureVariation(10) - 1),
        mask = (textureVariation(1) - 1),
        hair = (textureVariation(2) - 1)
    }

    local dV = {
        hat = (drawablePropVariation(0) - 1),
        glasses = (drawablePropVariation(1) - 1),
        ears = (drawablePropVariation(2) - 1),
        watch = (drawablePropVariation(6) - 1),
        bracelet = (drawablePropVariation(7) - 1),
        torso = (drawableVariation(3) - 1),
        pants = (drawableVariation(4) - 1),
        undershirt = (drawableVariation(8) - 1),
        shoes = (drawableVariation(6) - 1),
        torso2 = (drawableVariation(11) - 1),
        parachute = drawableVariation(5),
        accessory = (drawableVariation(7) - 1),
        kevlar = drawableVariation(9),
        badge = (drawableVariation(10) - 1),
        mask = (drawableVariation(1)- 1),
        hair = (drawableVariation(2)- 1)
    }

    local character = {

        eyes = character.eyes,
        blemishes = character.blemishes,
        facialhair = character.facialhair,
        facialhaircolor = character.facialhaircolor,
        eyebrows = character.eyebrows,
        eyebrowscolor = character.eyebrowscolor,
        ageing = character.ageing,
        makeup = character.makeup,
        blush = character.blush,
        blushcolor = character.blushcolor,
        complexion = character.complexion,
        sundamage = character.sundamage,
        lipstick = character.lipstick,
        lipstickcolor = character.lipstickcolor,
        moles = character.moles,
        chesthair = character.chesthair,
        chesthaircolor = character.chesthaircolor,
        bodyblemishes = character.bodyblemishes
    }

    local face = {

        Nosewidth = facialfeatures.Nosewidth,
        Noseheight = facialfeatures.Noseheight,
        Noselength = facialfeatures.Noselength,
        Nosebridge = facialfeatures.Nosebridge,
        Nosetip = facialfeatures.Nosetip,
        Nosebridgeshift = facialfeatures.Nosebridgeshift,
        Eyebrowheight = facialfeatures.Browheight,
        Eyerowwidth = facialfeatures.Browwidth,
        Cheekboneheight = facialfeatures.Cheekboneheight,
        Cheekbonewidth = facialfeatures.Cheekbonewidth,
        Cheekswidth = facialfeatures.Cheekswidth,
        Eyes = facialfeatures.Eyes,
        Lips = facialfeatures.Lips,
        Jawwidth = facialfeatures.Jawwidth,
        Jawheight = facialfeatures.Jawheight,
        Chinlength= facialfeatures.Chinlength,
        Chinposition = facialfeatures.Chinposition,
        Chinwidth = facialfeatures.Chinwidth,
        Chinshape = facialfeatures.Chinshape,
        Neckwidth = facialfeatures.Neckwidth

    }

    

    local heading = GetEntityHeading(ped)

    local objectName = {
        type = "ui",
        status = bool,
        window = window,
        clothes = playerClothes,
        drawables = dV,
        textures = mTV,
        heading,
        character = character,
        face = face
    }
        
    display = bool
    SetNuiFocus(bool, bool)
    SendNUIMessage(objectName)
    camera(bool)
end



function getProp(ped, componentId) -- Component 0
    local player = GetPlayerPed(-1)

    local HatProperties = {GetPedPropIndex(player, componentId), GetPedPropTextureIndex(player, componentId)}

    return HatProperties
end


function getDT(ped, componentId) -- get Drawables and Texture
    local player = GetPlayerPed(-1)

    local TorsoProperties = {GetPedDrawableVariation(player, componentId), GetPedTextureVariation(player, componentId)}
    return TorsoProperties
end


function textureVariation(componentId)
    local player = GetPlayerPed(-1)

    local variation = GetNumberOfPedTextureVariations(player, componentId, GetPedDrawableVariation(player, componentId))

    return variation
end

function drawableVariation(componentId)
    local player = GetPlayerPed(-1)

    local drawables = GetNumberOfPedDrawableVariations(player, componentId)

    return drawables
end

function drawablePropVariation(componentId)
    local player = GetPlayerPed(-1)

    local drawables = GetNumberOfPedPropDrawableVariations(player, componentId)

    return drawables
end

function texturePropVariation(componentId)
    local player = GetPlayerPed(-1)

    local variation = GetNumberOfPedPropTextureVariations(player, componentId, GetPedPropIndex(player, componentId))

    return variation
end



function camera(enable)
    local ped = GetPlayerPed(-1)

    if enable == true then		
		-- Player
		SetPlayerInvincible(ped, true)

		-- Camera
        RenderScriptCams(false, false, 0, 1, 0)
        DestroyCam(cam, false)
        if(not DoesCamExist(cam)) then
            cam = CreateCam('DEFAULT_SCRIPTED_CAMERA', true)
			SetCamCoord(cam, GetEntityCoords(GetPlayerPed(-1)))
			SetCamRot(cam, 0.0, 0.0, 0.0)
			SetCamActive(cam,  true)
			RenderScriptCams(true,  false,  0,  true,  true)
            SetCamCoord(cam, GetEntityCoords(GetPlayerPed(-1)))
		end
        local x,y,z = table.unpack(GetEntityCoords(GetPlayerPed(-1)))
        if zoom == "visage" then
			SetCamCoord(cam, x+0.1, y+0.5, z+0.7)
			SetCamRot(cam, 0.0, 0.0, 150.0)
        elseif zoom == "vetements" then
			SetCamCoord(cam, x-0.2, y+2.1, z+0.0)
			SetCamRot(cam, 0.0, 0.0, 170.0)
		elseif zoom == "pilosite" then
			SetCamCoord(cam, x, y+0.9, z+0.3)
            SetCamRot(cam, 0.0, 0.0, 170.0)
        elseif zoom == "worldcam" then
			SetCamCoord(cam, -501.41, 469.78, 640.10)
			SetCamRot(cam, 0.0, 0.0, 170.0)
		end
	else
		FreezeEntityPosition(ped, false)
        SetPlayerInvincible(ped, false)
        RenderScriptCams(false,  false,  0,  true,  true)
    end
    defaultCamLocation = GetCamCoord(cam)
end

function camAngle(angle)
zoom = angle
return zoom
end


RegisterNUICallback("exit", function(data)
    local ped = GetPlayerPed(-1)

    SetDisplay(false)
    camera(false)
--[[ 
-- CLOTHING
    SetPedComponentVariation(ped, 2, storedClothes.clothes.hair[1], storedClothes.clothes.hair[2], 2) 
    SetPedHairColor(ped, storedClothes.clothes.haircolor)
    SetPedComponentVariation(ped, 3, storedClothes.clothes.torso[1], storedClothes.clothes.torso[2], 2) 
    SetPedComponentVariation(ped, 4, storedClothes.clothes.pants[1], storedClothes.clothes.pants[2], 2) 
    SetPedComponentVariation(ped, 8, storedClothes.clothes.undershirt[1], storedClothes.clothes.undershirt[2], 2) 
    SetPedComponentVariation(ped, 6, storedClothes.clothes.shoes[1], storedClothes.clothes.shoes[2], 2) 
    SetPedComponentVariation(ped, 11, storedClothes.clothes.torso2[1], storedClothes.clothes.torso2 [2], 2) 
    SetPedComponentVariation(ped, 5, storedClothes.clothes.parachute[1], storedClothes.clothes.parachute  [2], 2) 
    SetPedComponentVariation(ped, 7, storedClothes.clothes.accessory[1], storedClothes.clothes.accessory [2], 2) 
    SetPedComponentVariation(ped, 9, storedClothes.clothes.kevlar[1], storedClothes.clothes.kevlar [2], 2) 
    SetPedComponentVariation(ped, 10, storedClothes.clothes.badge[1], storedClothes.clothes.badge [2], 2) 
    SetPedComponentVariation(ped, 1, storedClothes.clothes.mask[1], storedClothes.clothes.mask [2], 2) 

-- PROPS


    SetPedPropIndex(ped, 0, storedClothes.props.hats[1], storedClothes.props.hats[2], 2)
    SetPedPropIndex(ped, 1, storedClothes.props.glasses[1], storedClothes.props.glasses[2], 2)
    SetPedPropIndex(ped, 2, storedClothes.props.ears[1], storedClothes.props.ears[2], 2)
    SetPedPropIndex(ped, 6, storedClothes.props.watch[1], storedClothes.props.watch[2], 2)
    SetPedPropIndex(ped, 7, storedClothes.props.bracelet[1], storedClothes.props.bracelet[2], 2)

    -- other shit

    SetPedHeadOverlay(ped, 0, storedClothes.overlay.blemishes, 0.99)
    SetPedHeadOverlay(ped, 1, storedClothes.overlay.facialhair, 0.99)
    SetPedHeadOverlayColor(ped, 1, 1, storedClothes.overlay.facialhaircolor, storedClothes.overlay.facialhaircolor)
    SetPedHeadOverlay(ped, 2, storedClothes.overlay.eyebrows, 0.99)
    SetPedHeadOverlayColor(ped, 2, 1, storedClothes.overlay.eyebrowscolor, storedClothes.overlay.eyebrowscolor)
    SetPedHeadOverlay(ped, 3, storedClothes.overlay.ageing, 0.99)
    SetPedHeadOverlay(ped, 4, storedClothes.overlay.makeup, 0.99)
    SetPedHeadOverlay(ped, 5, storedClothes.overlay.blush, 0.99)
    SetPedHeadOverlayColor(ped, 5, 2, storedClothes.overlay.blushcolor, storedClothes.overlay.blushcolor)
    SetPedHeadOverlay(ped, 6, storedClothes.overlay.complexion, 0.99)
    SetPedHeadOverlay(ped, 7, storedClothes.overlay.sundamage, 0.99)
    SetPedHeadOverlay(ped, 8, storedClothes.overlay.lipstick, 0.99)
    SetPedHeadOverlayColor(ped, 10, 8, storedClothes.overlay.lipstickcolor, storedClothes.overlay.lipstickcolor)
    SetPedHeadOverlay(ped, 9, storedClothes.overlay.moles, 0.99)
    SetPedHeadOverlay(ped, 10, storedClothes.overlay.chesthair, 0.99)
    SetPedHeadOverlayColor(ped, 10, 1, storedClothes.overlay.chesthaircolor, storedClothes.overlay.chesthaircolor)
    SetPedHeadOverlay(ped, 11, storedClothes.overlay.bodyblemish, 0.99)
    SetPedEyeColor(ped, storedClothes.overlay.eyes)

-- overlay ]]
    

end)

RegisterNUICallback("charinfo", function(data)

    local model 

    characterinfo = {
    firstname = data.firstname;
    lastname = data.lastname;
    age = data.age;
    gender = data.gender
    }

SetEntityHeading(GetPlayerPed(-1), heading)

if tonumber(characterinfo.gender) == 0 then
    model = 'mp_m_freemode_01'
elseif tonumber(characterinfo.gender) == 1 then
    model = 'mp_f_freemode_01'
end

local hash = GetHashKey(model)
    RequestModel(hash)
    while not HasModelLoaded(hash)do 
        RequestModel(hash)
        Citizen.Wait(0)
    end	
    SetPlayerModel(PlayerId(), hash)
    SetPedComponentVariation(GetPlayerPed(-1), 0, 0, 0, 2)  --Shirt
    SetDisplay(not display, "ui1")
    local zoom = camAngle("visage")
    camera(true)

    if tonumber(characterinfo.gender) == 0 then

    SetPedHeadBlendData(GetPlayerPed(-1), 0, 0, 0, 0, 0, 0, 0.5, 0.5, 0, true)
    SetPedDefaultComponentVariation(GetPlayerPed(-1))

    elseif tonumber(characterinfo.gender) == 1 then
        SetPedHeadBlendData(GetPlayerPed(-1),25,25,0,0,0,0,0,0.00,0.0,false)
        SetPedDefaultComponentVariation(GetPlayerPed(-1))
    end

end)

RegisterNetEvent("setpedcoord")
AddEventHandler("setpedcoord", function(result1)

    local name = result1[1].FirstName..' '..result1[1].LastName
    local id = result1[1].charId
    local age = result1[1].Age
    local playerserverid = GetPlayerServerId(PlayerId())   
    
    exports.core:SetChar(id, name, age)
    --exports.core:Addchar(playerserverid, id)



    local ped = GetPlayerPed(-1)
    local coords = json.decode(result1[1].location)
    --RequestCollisionAtCoord(coords.x, coords.y, coords.z)
    FreezeEntityPosition(ped, true)
    SetEntityCoords(ped, coords.x, coords.y, coords.z+1, 0, 0, 0, 0)
        while HasCollisionLoadedAroundEntity(ped) == false do
            Citizen.Wait(10)
        end
    FreezeEntityPosition(ped, false)
end)

RegisterNetEvent("setstructureonped")
AddEventHandler("setstructureonped", function(result1)

    local structure = json.decode(result1[1].clothing)

    local model = tonumber(structure.model)
    local hash

    if model == 1885233650 then
        hash = GetHashKey("mp_m_freemode_01")
    elseif model == -1667301416 then
        hash = GetHashKey("mp_f_freemode_01")
    end


    

    --SET SKIN --
        RequestModel(hash)
        while not HasModelLoaded(hash)
                do RequestModel(hash)
                    Citizen.Wait(0)
                end	
                SetPlayerModel(PlayerId(), hash)

    local ped = GetPlayerPed(-1)

    local isOnDuty = result1[1].duty
    print(isOnDuty)
 
               --SET CLOTHING -- PROPS
    SetPedPropIndex(ped, 0, structure.indexes.hats[1], structure.indexes.hats[2], 2)
    SetPedPropIndex(ped, 1, structure.indexes.glasses[1], structure.indexes.glasses[2], 2) 
    SetPedPropIndex(ped, 2, structure.indexes.ears[1], structure.indexes.ears[2], 2)
    SetPedPropIndex(ped, 6, structure.indexes.watch[1], structure.indexes.watch[2], 2)
    SetPedPropIndex(ped, 1, structure.indexes.bracelet[1], structure.indexes.bracelet[2], 2)
    
   -- SET CLOTHING --

   SetPedComponentVariation(ped, 0, structure.clothing.face[1], structure.clothing.face[2], 2)
   SetPedComponentVariation(ped, 1, structure.clothing.mask[1], structure.clothing.mask[2], 2)
   SetPedComponentVariation(ped, 2, structure.clothing.hair[1], structure.clothing.hair[2], 2)-- hair color
   SetPedComponentVariation(ped, 3, structure.clothing.torso[1], structure.clothing.torso[2], 2)
   SetPedComponentVariation(ped, 4, structure.clothing.pants[1], structure.clothing.pants[2], 2)
   SetPedComponentVariation(ped, 5, structure.clothing.parachute[1], structure.clothing.parachute[2], 2)
   SetPedComponentVariation(ped, 6, structure.clothing.shoes[1], structure.clothing.shoes[2], 2)
   SetPedComponentVariation(ped, 7, structure.clothing.accessory[1], structure.clothing.accessory[2], 2)
   SetPedComponentVariation(ped, 8, structure.clothing.undershirt[1], structure.clothing.undershirt[2], 2)
   SetPedComponentVariation(ped, 9, structure.clothing.kevlar[1], structure.clothing.kevlar[2], 2)
   SetPedComponentVariation(ped, 10, structure.clothing.badge[1], structure.clothing.badge[2], 2)
   SetPedComponentVariation(ped, 11, structure.clothing.torso2[1], structure.clothing.torso2[2], 2)

   -- makeup and colors/ skin color -- 

   SetPedHeadBlendData(ped, 0, shapeSecond, shapeThird, structure.skincolor, structure.skincolor, structure.skincolor, shapeMix, skinMix, thirdMix, false)
   SetPedHeadOverlay(ped, 0, structure.pedcharacter.blemishes, 0.99)
   SetPedHeadOverlay(ped, 1, structure.pedcharacter.facialhair, 0.99)
   SetPedHeadOverlayColor(ped, 1, 1, structure.pedcharacter.facialhaircolor, structure.pedcharacter.facialhaircolor)
   SetPedHeadOverlay(ped, 2, structure.pedcharacter.eyebrows, 0.99)
   SetPedHeadOverlayColor(ped, 2, 1, structure.pedcharacter.eyebrowscolor, structure.pedcharacter.eyebrowscolor)
   SetPedHeadOverlay(ped, 3, structure.pedcharacter.ageing, 0.99)
   SetPedHeadOverlay(ped, 4, structure.pedcharacter.makeup, 0.99)
   SetPedHeadOverlay(ped, 5, structure.pedcharacter.blush, 0.99)
   SetPedHeadOverlayColor(ped, 5, 1, structure.pedcharacter.blushcolor, structure.pedcharacter.blushcolor)
   SetPedHeadOverlay(ped, 6, structure.pedcharacter.complexion, 0.99)
   SetPedHeadOverlay(ped, 7, structure.pedcharacter.sundamage, 0.99)
   SetPedHeadOverlay(ped, 8, structure.pedcharacter.lipstick, 0.99)
   SetPedHeadOverlay(ped, 9, structure.pedcharacter.moles, 0.99)
   SetPedHeadOverlay(ped, 10, structure.pedcharacter.chesthair, 0.99)
   SetPedHeadOverlayColor(ped, 10, 1, structure.pedcharacter.chesthaircolor, structure.pedcharacter.chesthaircolor)
   SetPedHeadOverlay(ped, 11, structure.pedcharacter.bodyblemish, 0.99)
   SetPedEyeColor(ped, structure.pedcharacter.eyes)

   -- set ped face feature

   SetPedFaceFeature(ped, 0, structure.facefeatures.Nosewidth)
   SetPedFaceFeature(ped, 1, structure.facefeatures.Noseheight)
   SetPedFaceFeature(ped, 2, structure.facefeatures.Noselength)
   SetPedFaceFeature(ped, 3, structure.facefeatures.Nosebridge)
   SetPedFaceFeature(ped, 4, structure.facefeatures.Nosetip)
   SetPedFaceFeature(ped, 5, structure.facefeatures.Nosebridgeshift)
   SetPedFaceFeature(ped, 6, structure.facefeatures.Eyebrowheight)
   SetPedFaceFeature(ped, 7, structure.facefeatures.Eyerowwidth)
   SetPedFaceFeature(ped, 8, structure.facefeatures.Cheekboneheight)
   SetPedFaceFeature(ped, 9, structure.facefeatures.Cheekbonewidth)
   SetPedFaceFeature(ped, 10, structure.facefeatures.Cheekswidth)
   SetPedFaceFeature(ped, 11, structure.facefeatures.Eyes)
   SetPedFaceFeature(ped, 12, structure.facefeatures.Lips)
   SetPedFaceFeature(ped, 13, structure.facefeatures.Jawwidth)
   SetPedFaceFeature(ped, 14, structure.facefeatures.Jawheight)
   SetPedFaceFeature(ped, 15, structure.facefeatures.Chinlength)
   SetPedFaceFeature(ped, 16, structure.facefeatures.Chinposition)
   SetPedFaceFeature(ped, 17, structure.facefeatures.Chinwidth)
   SetPedFaceFeature(ped, 18, structure.facefeatures.Chinshape)
   SetPedFaceFeature(ped, 19, structure.facefeatures.Neckwidth)

   SetPedHairColor(ped, structure.clothing.haircolor) 

   if isOnDuty == 1 then
    TriggerServerEvent("SetOnDuty", source)
   end

end)

function Store(clothes, props, overlay, facialfeatures)

    storedClothes = {clothes = clothes, props = props, overlay = overlay, facialfeatures = facialfeatures}

end


RegisterNetEvent("loadcharacterscreen")
AddEventHandler("loadcharacterscreen", function(characters)

local objectName = {
    type = "ui",
    status = true,
    window = "ui2",
    characters = characters
}

local zoom = camAngle("worldcam")
camera(true)
loadModels()
SetNuiFocus(true, true)
SendNUIMessage(objectName)


end)

RegisterNUICallback("spawnped", function(data)

    local _source = source
    local charId = data.charId

    TriggerServerEvent("importcharacterstructure", charId)
    TriggerServerEvent("hitplay", charId)
    SetDisplay(false,"ui1")

end)

RegisterNUICallback("confirm", function(data) -- Add to player object when first char is created.

    SetDisplay(false)
    camera(false)
    exports.core:CreateNewCharacter(data, characterinfo)
    --TriggerServerEvent("hitplay", id)

end)

  AddEventHandler('onClientMapStart', function()
    TriggerServerEvent("loadcharacters")
 end)

 AddEventHandler('onResourceStart', function(resourceName)
    if (GetCurrentResourceName() ~= resourceName) then
      return
    end
    if display == false then
        TriggerServerEvent("loadcharacters")
    end

  end)

  function loadModels()
    local hash = GetHashKey("mp_m_freemode_01")
        RequestModel(hash)
        while not HasModelLoaded(hash) do 
            RequestModel(hash)
            Citizen.Wait(0)
        end	

    local hash = GetHashKey("mp_f_freemode_01")
        RequestModel(hash)
        while not HasModelLoaded(hash) do 
            RequestModel(hash)
            Citizen.Wait(0)
        end	
  end
