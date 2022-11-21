class EventsController < ApplicationController
    # Show all events
    get "/events" do
      Event.all.to_json
    end

end