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

get '/:update/:id' do
  @order = Order.new(params)
  erb(:update)
end

post '/update' do
  @order = Order.new(params)
  @order.update()
  # binding.pry
  erb(:update_conf)
end