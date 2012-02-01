require "sinatra"
require "gollum/frontend/app"

Precious::App.set(:gollum_path, __FILE__)
Precious::App.set(:wiki_options, { :page_file_dir => 'pages' })
run Precious::App
