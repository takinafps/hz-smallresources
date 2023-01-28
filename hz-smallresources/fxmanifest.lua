fx_version 'cerulean'
game 'gta5'
version '1.0.3'
lua54 'yes'

server_scripts {
    'server/*.lua'
}

client_scripts {
    'client/*.lua',
}

server_script "sv_version_check.lua"
