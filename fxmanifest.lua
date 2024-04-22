---------------------------------------------
-----This script is made by Gamingprovids----
---------------------------------------------
--------------GITHUB: Gamingprovideos--------
---------------------------------------------
fx_version 'cerulean'
game 'gta5'
author 'Gamingprovids'
description ''
lua54 'yes'

client_scripts {
    'client/*.lua',
}

server_scripts {
    'server/*.lua',
}

shared_scripts {
    '@es_extended/imports.lua',
    '@ox_lib/init.lua',
    'config.lua',
	'@es_extended/locale.lua',
	'locales/*.lua',
}
dependency 'es_extended'