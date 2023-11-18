-- For support join my discord: https://discord.gg/Z9Mxu72zZ6

author "Andyyy#7666"
description "npwd integration with ND Framework"
version "1.0.0"

fx_version "cerulean"
game "gta5"
lua54 "yes"

server_scripts {
    "@oxmysql/lib/MySQL.lua",
    "server.lua"
}
client_script "client.lua"

dependency "ND_Core"