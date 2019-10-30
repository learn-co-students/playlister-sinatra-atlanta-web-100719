require_relative "../models/concerns/slugifiable"
class ApplicationController < Sinatra::Base
  register Sinatra::ActiveRecordExtension
  set :session_secret, "my_application_secret"
  set :views, Proc.new { File.join(root, "../views/") }

  include Slugifiable

  get '/' do
    binding.pry
    erb :index
  end
end