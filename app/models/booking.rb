class Booking < ActiveRecord::Base
    belongs_to :user
    belongs_to :hotel 
    has_many :rooms, through: :hotel
    


    def self.create_bookings(params)
        Booking.create(
            user_name: params[:user_name],
            email: params[:email],
            description: params[:description],
            hotel_id: params[:hotel_id],
            user_id: params[:user_id],
            room_id: params[:room_id]
        )
    end
end