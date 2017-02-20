require 'sinatra'
require_relative 'addition.rb'

get '/' do
	erb :add, :locals => {name_input: ''}
end

get '/addition_form' do

end

post '/addition_form' do
	user_name = params[:name_input]

	erb :age, :locals => {user_name: user_name}
end

post '/age_form' do
	user_age = params[:age_input].to_i
	user_name = params[:name_input]


	erb :fav_numbers, :locals => {user_age: user_age, user_name: user_name}

end

post '/favorite_nums' do
	user_age = params[:age_input].to_i
	user_name = params[:name_input]
	num1 = params[:num1].to_i
	num2 = params[:num2].to_i
	num3 = params[:num3].to_i
	results = add(num1, num2, num3, user_age)

	erb :total, :locals => {
		user_age: user_age,
		user_name: user_name, 
		num1: num1,
		num2: num2,
		num3: num3,
		results: results
	}
	#redirect to('/total')

end

get '/total' do
	user_age = params[:age_input].to_i
	user_name = params[:name_input]
	num1 = params[:num1].to_i
	num2 = params[:num2].to_i
	num3 = params[:num3].to_i
	results = add(num1, num2, num3, user_age)
end

post '/total' do
	erb :total, :locals => {
		user_age: user_age,
		user_name: user_name, 
		num1: num1,
		num2: num2,
		num3: num3,
		results: results
	}
end

