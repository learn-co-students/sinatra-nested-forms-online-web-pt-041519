require './environment'
# require './app/models/pirate.rb'
# require './app/models/ship.rb'

module FormsLab
  class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "views/pirates") }

   get '/' do
    erb :root
   end

   get '/new' do
    erb :new
   end

   post '/pirates' do
    @pirate = Pirate.new(params[:pirate])

      params[:pirate][:ships].each do |details|
        Ship.new(details)
      end

      @ships = Ship.all

      erb :show
    end


  end
end
