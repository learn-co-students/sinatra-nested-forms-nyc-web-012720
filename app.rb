require './environment'

module FormsLab
	class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
    	erb :root
    end

    get '/new' do
    	erb :'pirates/new'
    end

    post '/pirates' do

    	@PirateName = params[:name]
    	@PirateWeight = params[:weight]
    	@PirateHeight = params[:height]

    	@ship_name_1 = params[:ships][0][:name]
    	@Ship0Type = params[:ships][0][:type]
    	@Ship0Booty = params[:ships][0][:booty]

    	@ship_name_2 = params[:ships][1][:name]
    	@Ship1Type = params[:ships][1][:type]
    	@Ship1Booty = params[:ships][1][:booty]

    	erb :'pirates/show'

    end

end
end



