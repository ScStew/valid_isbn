require "sinatra"
require_relative "isbn.rb"

get "/" do
	erb :opening_page
end