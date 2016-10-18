require 'sinatra'
require 'sinatra/contrib/all'
require 'pry-byebug'
require_relative './models/order.rb'

get '/shoos/new' do
  erb(:new)
end

post '/shoos' do
  @order = Order.new(params)
  erb(:conf)
end