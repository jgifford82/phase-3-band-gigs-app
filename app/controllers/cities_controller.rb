class CitiesController < ApplicationController
    # Show all cities alphabetically by name, including nested events data for each city:
    get "/cities" do
        city = City.all.order(:name)
        city.to_json(include: :events)
    #   City.all.to_json(include: :events)
    end
    
    # Don't need this; redundant after the get above
    # # Show specific city's events
    # get "/cities/:id" do
    #     City.find_by_id(params["id"]).to_json(include: :events)
    # end

    # Add a new city
    post "/cities" do 
        City.create(
            name: params[:name]
        ).to_json
    end

end