require "sinatra"
require_relative "isbn.rb"
require "csv"
require "aws-sdk-s3"
load "./local_env.rb"
enable "sessions"


get "/" do
	erb :opening_page
end

post "/csv" do
	Aws::S3::Service.buckets.each do |bucket|
        puts "#{bucket.name}\t#{bucket.creation_date}"
end
	redirect "/csv_returns"
end

get "/csv_returns" do

	csv_arrs = CSV.read("isbn.csv")
	erb :csv_returns, locals:{csv_arrs:csv_arrs}
end

post "/csv_run" do
	session[:isbn_arr] = params[:isbn_arr]
	isbn_arr= params[:isbn_arr]
	valid_arr = []
		isbn_arr.each do |x|
		valid_arr << isbn_validator(x)
			
		end
		session[:valid_arr] = valid_arr

	redirect "/validation"
end

get "/validation" do
	erb :validation, locals:{isbn_arr:session[:isbn_arr],valid_arr:session[:valid_arr]}
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