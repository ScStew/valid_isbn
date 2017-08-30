require "sinatra"
require_relative "isbn.rb"

get "/" do
	erb :opening_page
end

post "/number" do
	isbn = params[:isbn]
	redirect "/results?isbn=" + isbn
end


