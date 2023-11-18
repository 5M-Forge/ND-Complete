-- For support join my discord: https://discord.gg/mBCmMSVcvJ

author "scru#0687"
description "Bike rental"
version "1.0"

fx_version "cerulean"
game "gta5"
lua54 "yes"

shared_script {
    '@ox_lib/init.lua',
    "config.lua"
}
server_scripts {"server.lua"}
client_scripts {"client.lua"}

dependencies {
    "ND_Core",
    "ox_lib"
}