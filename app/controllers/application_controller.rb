class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  # get "/" do
  #   { message: "Good luck with your project!" }.to_json
  # end

  # This works:
  # get "/cities" do
  #   "Hello World"
  # end

  # This works to show all cities:
  # get "/cities" do
  #   cities = City.all
  #   cities.to_json
  # end

  # This works to show all cities including nested events data for each city:
  get "/cities" do
    City.all.to_json(include: :events)
  end

# test code for commit

end
