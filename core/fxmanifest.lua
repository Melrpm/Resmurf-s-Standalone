fx_version 'bodacious'
game 'gta5'
author 'Resmurf'

resource_manifest_version "44febabe-d386-4d18-afbe-5e627f4af937"

client_script {
  
  'client.lua',
  'character.lua'

}



 server_scripts {
  '@mysql-async/lib/MySQL.lua',
    "server.lua",
  } 

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
}