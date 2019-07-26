require './environment'
# set :view, “app/views”

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end


    post '/pirates' do 
      @pirate = Pirate.new(params[:pirate])

      params[:pirate][:ships].each do |e| #[:ships] is a key of pirate and an array element of a hash with name, type, booty as its keys
        Ship.new(e) #passing in the hash as arguments that will be used in Ship model to create ship instances
      end
      @ships = Ship.all #builds array of ships in @ships variable
      erb :'pirates/show'
    end

  end
end

