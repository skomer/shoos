require 'sinatra'
require 'sinatra/contrib/all'
require 'pry-byebug'
require_relative './models/order.rb'

get '/shoos/new' do
  erb(:new)
end

post '/shoos' do
  @order = Order.new(params)
  @order.save()
  erb(:conf)
end

get '/shoos' do
  @orders = Order.all()
  erb(:index)
end