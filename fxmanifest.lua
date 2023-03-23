fx_version 'adamant'

game 'gta5'

description 'CRL Farming'
lua54 'yes'

version '1.0'

dependency 'es_extended'


client_scripts {
    'config.lua',
    'client/marker.lua',
    'client/blip.lua'
}

server_scripts {
    'config.lua',
    'server/server.lua'
}