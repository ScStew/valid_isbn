require "sinatra"
require_relative "isbn.rb"
require "csv"
enable "sessions"

get "/" do
	erb :opening_page
end

post "/csv" do
	
	redirect "/csv_returns"
end

get "/csv_returns" do
	csv_arrs] = CSV.read("isbn.csv")
	erb :csv_returns, locals:{csv_arrs:csv_arrs}
end

post "/number" do
	isbn = params[:isbn]
	redirect "/results?isbn=" + isbn
end

get "/results" do
	isbn = params[:isbn]
	results = isbn_validator(isbn)
	erb :results, locals:{isbn:isbn,results:results}
end	