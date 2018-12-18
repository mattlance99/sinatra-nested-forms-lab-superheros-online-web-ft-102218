require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb:super_hero
  end
  
  post '/teams' do
    @team = Team.new(params[:team])
    params[:team][:super_hero].each do |attributes|
        Ship.new(attributes)
      end

      @ships = Ship.all
        
  erb:team
  end
  
end
