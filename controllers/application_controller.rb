class ApplicationController < Sinatra::Base
  set :views, File.expand_path('../../views', __FILE__)
  set :public_folder, File.expand_path('../../public', __FILE__)
  enable :sessions

  get '/' do
    erb :landing_page
    redirect '/accounts'
  end
end
