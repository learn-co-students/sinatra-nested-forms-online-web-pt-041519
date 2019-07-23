require './environment'
require 'pry'
module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here

    # Index 
    get '/' do
      erb :root
    end

    # Pirate/ship form
    get '/new' do
      erb :"pirates/new"
    end

    # Display all information from form
    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])
	 
      params[:pirate][:ships].each do |details|
        Ship.new(details)
      end
      @ships = Ship.all

      erb :"pirates/show"
    end

  end
end
