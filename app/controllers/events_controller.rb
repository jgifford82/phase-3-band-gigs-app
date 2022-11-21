class EventsController < ApplicationController
    # Show all events
    get "/events" do
      Event.all.to_json
    end

    # Add a new event
    post "/events" do 
        Event.create(
            band: params[:band],
            venue: params[:venue],
            date: params[:date],
            time: params[:time],
            price: params[:price],
            city_id: params[:city_id],
        ).to_json
    end

end