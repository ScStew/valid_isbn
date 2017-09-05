require "sinatra"
require_relative "isbn.rb"
require "csv"

get "/" do
	erb :opening_page
end

post "/number" do
	isbn = params[:isbn]
	arr_of_arrs = CSV.read("isbn.csv")
	redirect "/results?isbn=" + isbn
end

get "/results" do
	isbn = params[:isbn]
	results = isbn_validator(isbn)
	erb :results, locals:{isbn:isbn,results:results}
end	