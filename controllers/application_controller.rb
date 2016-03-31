class ApplicationController < Sinatra::Base

  #
  # require 'bundler'
  # Bundler.require
  #
  # ActiveRecord::Base.establish_connection(
  #   :adapter => 'postgresql',
  #   :database => 'weathers_website'
  # )

  set :views, File.expand_path('../../views', __FILE__)
  set :public_folder, File.expand_path('../../public', __FILE__)

  enable :sessions

  get '/' do
    erb :landing_page
  end

  post '/' do
    @weather = Weather.find(params[:weather_id])
    @weather.destroy
    @weathers = Weather.all
    erb :weather
    redirect '/weather'
  end

end
