require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :new
    end

    post '/pirates' do

      @pirates = Pirate.new(params[:pirate])
      erb :show
    end

  end
end
