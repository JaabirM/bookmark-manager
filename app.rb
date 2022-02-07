require 'sinatra'
require "sinatra/reloader" if development?

class Bookmark < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  get '/test' do
    "This website page works!"
  end

  run! if app_file == $0
end