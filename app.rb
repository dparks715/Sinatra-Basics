require 'sinatra'
require_relative 'addition.rb'

get '/' do
	erb :add, :locals => {name_input: ''}
end

post '/addition_form' do
	user_name = params[:name_input]

	erb :fav_numbers, :locals => {user_name: user_name}
end

post '/favorite_nums' do
	num1 = params[:num1]
	num2 = params[:num2]
	num3 = params[:num3]

end