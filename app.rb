require 'sinatra'
require "sinatra/reloader" if development?

class Bookmark < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    "Hello world!"
  end
  
  run! if app_file == $0
end