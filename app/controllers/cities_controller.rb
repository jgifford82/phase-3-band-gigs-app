class CitiesController < ApplicationController
    # Show all cities including nested events data for each city:
    get "/cities" do
      City.all.to_json(include: :events)
    end
end