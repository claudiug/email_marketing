require 'sinatra/base'
require "sinatra/reloader"
require 'sinatra/namespace'

require "sinatra/json"
require 'oj'
require 'multi_json'
require "sinatra/activerecord"

require_relative 'models/user'
require_relative 'models/email_template'
require_relative 'models/template_holder'

class App < Sinatra::Base

  configure do
    register Sinatra::Reloader # auto reload the app
    register Sinatra::Namespace # add namespace
    register Sinatra::ActiveRecordExtension
  end

  namespace '/v1' do #first versions

    #status of the api
    get '/' do
      json(User.all)
    end

    #return information about a user
    get '/users/:id' do
      json(User.find(params[:id]))
    end

    #return a list of templates ids for a user
    get '/users/:id/templates' do
      json(User.find(params[:id]).email_templates)
    end

    #return a template for a user
    get '/users/:id/templates/:template_id' do
      json(EmailTemplate.where(user_id: params[:id]).where(id: params[:template_id]))
    end

    #return the placeholders for a specific template
    get '/users/:id/templates/:template_id/placeholders' do
      user = User.find(params[:id])
      templates = user.email_templates
      t = templates.where(id: params[:template_id])
      json(TemplateHolder.where(email_template_id: t))
    end
  end

end
