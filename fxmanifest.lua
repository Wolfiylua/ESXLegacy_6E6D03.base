fx_version "bodacious"
game "gta5"
lua54 'on'

ui_page "web-side/index.html"

escrow_ignore {
    'config.lua',
	"client-side/*.lua",
	"server-side/*.lua"

}

files {
	"web-side/**/*.*",
	"web-side/*.*"
}
shared_scripts{
	'config.lua'
}

client_scripts {
--	"@vrp/lib/utils.lua", -- If you do not use the VRP/VPREX framework, remove this line
	"client-side/*.lua"
}

server_scripts {
--	"@vrp/lib/utils.lua", -- If you do not use the VRP/VPREX framework, remove this line
	"server-side/*.lua"
}

dependency '/assetpacks'
dependency '/assetpacks'