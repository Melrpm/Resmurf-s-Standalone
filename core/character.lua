function getDT(ped, componentId) -- get Drawables and Texture
  local player = GetPlayerPed(-1)

  local TorsoProperties = {GetPedDrawableVariation(player, componentId), GetPedTextureVariation(player, componentId)}
  return TorsoProperties
end

function getProp(ped, componentId) -- Component 0
  local player = GetPlayerPed(-1)

  local HatProperties = {GetPedPropIndex(player, componentId), GetPedPropTextureIndex(player, componentId)}

  return HatProperties
end

function GetOverlayColour(ped, index)

  local success, overlayValue, colourType, firstColour, secondColour, overlayOpacity = GetPedHeadOverlayData(ped, index)

  return firstColour


end

function GrabCharacterStyle(ped)

  local character = {
      model = GetEntityModel(ped); -- done
      facefeatures = GetFaceFeatures(ped);
      clothing = GetThisPedClothes(ped), -- donne
      indexes = GetThisPedIndex(ped); -- done
      pedcharacter = GetPedCharacter(ped);
      skincolor = skincolor;
  }

  return character

end

local startingCoords = {x = 260.96252441406 , y = -871.12951660156, z =29.232732772827}

function GetFaceFeatures(ped)

  local facialfeatures = {

      Nosewidth = GetPedFaceFeature(ped, 0),
      Noseheight = GetPedFaceFeature(ped, 1),
      Noselength = GetPedFaceFeature(ped, 2),
      Nosebridge = GetPedFaceFeature(ped, 3),
      Nosetip = GetPedFaceFeature(ped, 4),
      Nosebridgeshift = GetPedFaceFeature(ped, 5),
      Browheight = GetPedFaceFeature(ped, 6),
      Browwidth = GetPedFaceFeature(ped, 7),
      Cheekboneheight = GetPedFaceFeature(ped, 8),
      Cheekbonewidth = GetPedFaceFeature(ped, 9),
      Cheekswidth = GetPedFaceFeature(ped, 10),
      Eyes = GetPedFaceFeature(ped, 11),
      Lips = GetPedFaceFeature(ped, 12),
      Jawwidth = GetPedFaceFeature(ped, 13),
      Jawheight = GetPedFaceFeature(ped, 14),
      Chinlength= GetPedFaceFeature(ped, 15),
      Chinposition = GetPedFaceFeature(ped, 16),
      Chinwidth = GetPedFaceFeature(ped, 17),
      Chinshape = GetPedFaceFeature(ped, 18),
      Neckwidth = GetPedFaceFeature(ped, 19)
  }
  return facialfeatures

end

function GetThisPedClothes(ped)
  local clothes = {
  
      face = getDT(ped, 0), -- face/head
      mask = getDT(ped, 1), -- mask
      hair = getDT(ped, 2), -- hair
      haircolor = GetPedHairColor(ped),
      torso = getDT(ped, 3), -- torso
      pants = getDT(ped, 4), -- pants
      parachute = getDT(ped, 5), -- parachute
      shoes = getDT(ped, 6), -- shoes
      accessory = getDT(ped, 7), -- accessory
      undershirt = getDT(ped, 8), -- undershirt
      kevlar = getDT(ped, 9), -- kevlar
      badge = getDT(ped, 10), -- Badge
      torso2 = getDT(ped, 11), --torso2
  }
  return clothes
end

function GetThisPedIndex(ped)

  local index = {
  
      hats = getProp(ped, 0), -- hats
      glasses = getProp(ped, 1), --glasses
      ears = getProp(ped, 2), -- ear accessories
      watch = getProp(ped, 6),  -- watch
      bracelet = getProp(ped, 7) -- bracelent
  }
  
  return index
end

function GetPedCharacter(ped) -- face
  local ped = GetPlayerPed(-1)
  
  
  local ped = {
  eyes = GetPedEyeColor(ped),
  blemishes = GetPedHeadOverlayValue(ped, 0),
  facialhair = GetPedHeadOverlayValue(ped, 1), -- beard
  facialhaircolor = GetOverlayColour(ped, 1),
  eyebrows = GetPedHeadOverlayValue(ped, 2),
  eyebrowscolor = GetOverlayColour(ped, 2),
  ageing = GetPedHeadOverlayValue(ped, 3),
  makeup = GetPedHeadOverlayValue(ped, 4),
  blush = GetPedHeadOverlayValue(ped, 5),
  blushcolor = GetOverlayColour(ped, 5),
  complexion = GetPedHeadOverlayValue(ped, 6),
  sundamage = GetPedHeadOverlayValue(ped, 7),
  lipstick = GetPedHeadOverlayValue(ped, 8),
  lipstickcolor = GetOverlayColour(ped, 8),
  moles = GetPedHeadOverlayValue(ped, 9),
  chesthair = GetPedHeadOverlayValue(ped, 10),
  chesthaircolor = GetOverlayColour(ped, 10),
  bodyblemishes = GetPedHeadOverlayValue(ped, 11)

  }

  return ped

end



function CreateNewCharacter(data, characterinfo)

  local ped = GetPlayerPed(-1)
  local character = GrabCharacterStyle(ped)
  local charinfo = characterinfo
  local coords = startingCoords

  TriggerServerEvent("savenewcharacter", character, charinfo, coords)
  RequestCollisionAtCoord(startingCoords.x, startingCoords.y, startingCoords.z)
  --SetEntityCoords(ped, startingCoords.x, startingCoords.y, startingCoords.z, 0, 0, 0, 0)


end
