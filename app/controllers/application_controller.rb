class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    hotel = Hotel.all
    hotel.to_json
  end

  get "/booking" do
    booking = Booking.all
    booking.to_json
  end

  get "/hotel" do
    booking = Booking.all
    booking.to_json
  end
  

  get "/room" do
    booking = Booking.all
    booking.to_json
  end
  
  get "/user" do
    booking = Booking.all
    booking.to_json
  end


end

