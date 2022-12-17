class EventsController < ApplicationController
    # Show all events
    get "/events" do
    #   Event.all.to_json
    #   Display 10 most recently created events in descending order
        events = Event.order(created_at: :desc).limit(10)
        events.to_json
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

    # Update a specific event's details
    patch "/events/:id" do 
        event=Event.find(params[:id])
        event.update(
            venue: params[:venue],
            date: params[:date],
            time: params[:time]
        )
        event.to_json
    end

    # Delete a specific event
    delete "/events/:id" do
        Event.find(params[:id]).destroy.to_json
    end
end