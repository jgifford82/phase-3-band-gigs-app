class CitiesController < ApplicationController

    # Get all cities alphabetically by name
    # return a JSON response with an array of cities data, including nested events data for each city
    get "/cities" do
        city = City.all.order(:name)
        city.to_json(include: :events)
    end

    # Add a new city
    # to_json converts list of Active Record objects to a JSON-formatted string
    post "/cities" do 
        city = City.create(
            name: params[:name]
        )
        city.to_json
    end

end