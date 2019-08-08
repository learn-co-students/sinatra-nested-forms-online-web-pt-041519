
module FormsLab
  class App < Sinatra::Base

    configure do
      set :views, "app/views"
      set :public_dir, "public"
    end

    get '/' do 
      erb :index
    end  
    
    post '/pirates' do 
      @pirate = Pirate.new(params)
      ships = params[:pirate][:ships]
        ships.each do |details|
          Ship.new(details)
        end  
        @ships = Ship.all
      erb :show
    end  

    get '/new' do 
      erb :new
    end  

  end
end
