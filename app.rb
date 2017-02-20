require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    num = params[:number]
    squared = num.to_i * num.to_i
    squared.to_s
  end

  get '/say/:number/:phrase' do
    final_string = ""
    (params[:number].to_i).times do
      final_string += "#{params[:phrase]}\n"
    end
    final_string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    num1 = params[:number1]
    num2 = params[:number2]
    if operation == "add"
      answer = num1.to_i + num2.to_i
    elsif operation == "subtract"
      answer = num1.to_i - num2.to_i
    elsif operation == "multiply"
      answer = num1.to_i * num2.to_i
    elsif operation == "divide"
      answer = num1.to_i / num2.to_i
    else
      "Please try again"
    end
    answer.to_s
  end

end
