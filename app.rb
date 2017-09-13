require "sinatra"
require_relative "isbn.rb"
require_relative "push_to_bucket.rb"
require 'rubygems'
require 'aws-sdk'
require 'csv'
 load "./local_env.rb"
enable "sessions"

get "/" do
	erb :opening_page
end

post "/number" do
	session[:isbn_from_bucket] = get_object()
	isbn = params[:isbn]
	redirect "/one?isbn=" + isbn
end

get "/one" do
	isbn = params[:isbn]
	results = isbn_validator(isbn)
	erb :one, locals:{isbn:isbn,results:results}
end

post "/almost_done" do
	session[:single_isbn] = params[:single_isbn]
	redirect "/results?"
end	

get "/results" do

erb :results, locals:{single_isbn:session[:single_isbn],bucket_isbn:session[:isbn_from_bucket]}
end

post "/final" do 
	redirect "/final?"
end

get "/final" do 
	erb :final
end
# post "/csv" do

# 	redirect "/csv_returns"
# end

# get "/csv_returns" do
	

# 	csv_arrs = CSV.read("isbn.csv")
# 	erb :csv_returns, locals:{csv_arrs:csv_arrs}
# end

# post "/csv_run" do
# 	session[:isbn_arr] = params[:isbn_arr]
# 	isbn_arr= params[:isbn_arr]
# 	valid_arr = []
# 		isbn_arr.each do |x|
# 		valid_arr << isbn_validator(x)
			
# 		end
# 		session[:valid_arr] = valid_arr

# 	redirect "/validation"
# end

# get "/validation" do
# 	erb :validation, locals:{isbn_arr:session[:isbn_arr],valid_arr:session[:valid_arr]}
# end