class Booking < ActiveRecord::Base
    belongs_to :user
    belongs_to :hotel 
    has_many :rooms, through: :hotel
    


    # def self.create_bookings(params)
    #     Booking.create(
    #         user_name: params[:user_name],
    #         room_no: params[:room_no],
    #         hotel_id: params[:hotel_id]
    #     )
    # end
end