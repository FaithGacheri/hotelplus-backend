class Hotel < ActiveRecord::Base
    has_many :rooms
    # has_many :users, through: :bookings
end