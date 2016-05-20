require 'rubygems'
require 'bundler'

Bundler.require

map '/assets' do
  sprockets = Sprockets::Environment.new
  sprockets.append_path 'assets/stylesheets'
  sprockets.append_path 'assets/images'
  sprockets.append_path 'assets/javascripts'
  run sprockets
end

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/projects' do
    erb :projects
  end

end

run App
