require 'sinatra'
require 'rubygems'
require 'shotgun'
require 'gossip'

class ApplicationController < Sinatra::Base

  get '/gossips/new/' do
    erb :new_gossip
  end

  post '/gossips/new/' do
    Gossip.new(params["gossip_author"], params["gossip_content"]).save
    redirect '/gossips/new/'
  end

  get '/' do
    erb :index, locals: {gossips: Gossip.all}
  end
  
  get '/gossips/:id' do
    erb :show, locals: {id: params['id'].to_i, gossips: Gossip.find(params['id'].to_i)}
  end
  
end

