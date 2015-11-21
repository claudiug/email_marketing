require 'sinatra/base'
require "sinatra/reloader"
require 'sinatra/namespace'

require "sinatra/json"
require 'oj'
require 'multi_json'
require "sinatra/activerecord"

require_relative 'models/user'



class App < Sinatra::Base

  configure do
    register Sinatra::Reloader # auto reload the app
    register Sinatra::Namespace # add namespace
    register Sinatra::ActiveRecordExtension
  end

  namespace '/v1' do #first versions

    get '/' do
      User.all
    end

    get '/users/:id' do
      json(User.find(params[:id]))
    end
  end

end
