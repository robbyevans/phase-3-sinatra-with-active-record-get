class ApplicationController < Sinatra::Base

  get '/games/:id' do
    # look up the game in the database using its ID
    game = Game.find(params[:id])
    # send a JSON-formatted response of the game data
    game.to_json
  end

end