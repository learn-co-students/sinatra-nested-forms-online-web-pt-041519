require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb '/pirates/new'.to_sym
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])

      params[:pirate][:ships].each do |ship_info|
        Ship.new(ship_info)
      end

      @ships = Ship.all

      erb '/pirates/show'.to_sym
    end

  end
end
