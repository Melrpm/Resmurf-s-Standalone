# Resmurf-s-Standalone
An attempt at a RP Framework for FiveM.


exports {
  'GetChar',
  'SetChar',
  'CreateNewCharacter',
  'GrabCharacterclothing',
  'GetFaceFeatures',
  'GetThisPedClothes',
  'GetThisPedIndex',
  'GetPedCharacter',
  'Addchar',
  'GetPedFromCharId',
  'GetCharIdFromPed',
  'log',
  'SetCharClothingLoadout'
}

server_exports{

  'GetServerIdFromCharId',
  'GetCharIdFromServerId',
  'GetNameFromCharId',
  'GetNameFromCharIdDB',
  'slog',
  'GetFactionIdFromCharId',
  'GetFactionIdFromServerId',
  'SetFactionCharFaction',
  'GetFactionRankFromCharId',
  'SetCharFactionRank',
  'SetCharClothingLoadout',
  "IsPlayerOnDuty",
  "SetCharDuty"
  
  These are the core functions, they are used with exports. exports.core:GetServerIdFromCharId(serverid).
  
  
