fx_version 'cerulean'
game 'gta5'

description 'Freezy_jobcenter'
lua54 'yes'

client_scripts {
	"client/client.lua",
    "client/ped.lua",
    'config.lua'
}

server_scripts {
    "server/server.lua"
}

shared_scripts {'@es_extended/imports.lua','@ox_lib/init.lua'}

dependencies {
    'es_extended',
    'ox_lib',
    'ox_target'
}