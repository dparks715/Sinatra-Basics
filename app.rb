require 'sinatra'
require_relative 'addition.rb'

get '/' do
	erb :add
end

post '/addition_form' do
	user_name = params[:name_input]
end