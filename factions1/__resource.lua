resource_manifest_version "44febabe-d386-4d18-afbe-5e627f4af937"

dependencies {
    "paradise-menu"
}

client_script {
    "nui.lua",
    "client.lua",
    "c_police.lua",
    "@paradise-menu/menu.lua"
}

server_scripts {
    "server.lua",
    "@mysql-async/lib/MySQL.lua",
    "s_police.lua"
  }

ui_page "html/index.html"

files {
    'html/index.html',
    'html/index.js',
	'html/admin.html',
    'html/index.css',
    'html/reset.css'
}
