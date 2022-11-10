class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here

  get "/bookings" do
    booking = Booking.all
    booking.to_json
  end

  get "/hotels" do
    hotel = Hotel.all
    hotel.to_json
  end
  

  get "/rooms" do
    room = Room.all
    room.to_json
  end
  
  get "/users" do 
    user = User.all
    user.to_json
  end

  post '/rooms' do
    room = Room.create_rooms(params)
    room.to_json
  end

  post '/bookings' do
    booking = Booking.create_bookings(params)
    booking.to_json
  end

  post '/hotels' do
    hotels = Hotel.create_hotels(params)
    hotels.to_json
  end


end

