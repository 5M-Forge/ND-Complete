fx_version "cerulean"
game "gta5"
author "Pickle Mods#0001 (Converted for ND by Giana - github.com/Giana)"
description "A ND Framework farming resource with synced growth."

dependencies {
	"ND_Core",
	"ox_inventory",
	"ox_lib",
}

shared_scripts {
	"@ox_lib/init.lua",
	"config.lua",
	"bridge/nd/shared.lua",
	"modules/**/shared.lua",
	"core/shared.lua"
}

client_scripts {
	"bridge/nd/client.lua",
	"modules/**/client.lua",
	"core/client.lua"
}

server_scripts {
	"bridge/nd/server.lua",
	"modules/**/server.lua",
	"core/server.lua"
}

lua54 'yes'