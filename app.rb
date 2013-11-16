require 'sinatra/base'

class App < Sinatra::Base
  get '/multiplier/:x/x/:y' do
    (params[:x].to_i * params[:y].to_i).to_s
  end
end
