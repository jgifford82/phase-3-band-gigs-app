class EventsController < ApplicationController
    #   Display 10 most recently created events in descending order
    get "/events" do
        events = Event.order(created_at: :desc).limit(10)
        events.to_json
    end

    # Add a new event
    post "/events" do 
        event = Event.create(
            band: params[:band],
            venue: params[:venue],
            date: params[:date],
            time: params[:time],
            price: params[:price],
            city_id: params[:city_id],
        )
        event.to_json
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
    # find the event using the ID
    # delete the event
    # send a response with the deleted event as JSON
    delete "/events/:id" do
        event = Event.find(params[:id])
        event.destroy
        event.to_json
    end
end