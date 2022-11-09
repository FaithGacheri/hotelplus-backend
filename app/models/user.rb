class User < ActiveRecord::Base
    has_many :bookings
    belongs_to :room
end