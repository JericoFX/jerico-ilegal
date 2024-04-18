author "JericoFX#3512"
fx_version 'cerulean'
game "gta5"
description "Jerico Ilegal"

version "0.0.1"

client_script "client/main.lua"

shared_scripts { '@ox_lib/init.lua' }
server_scripts { "server/main.lua" }


lua54 'yes'

use_fxv2_oal 'on'

is_cfxv2 'yes'

files {
    "locales/*.json",
}


dependencies {
    '/onesync',
    "ox_lib"
}
