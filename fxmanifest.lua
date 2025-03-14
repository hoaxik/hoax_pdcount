fx_version "adamant"
game "gta5"
lua54 "yes"

author "HoaX"
description "A simple script to check Police Count"

client_scripts {
    "client/client.lua"
}

server_scripts {
    "server/server.lua"
}

shared_scripts {
    "@ox_lib/init.lua",
    '@es_extended/imports.lua',
    "config.lua"
}