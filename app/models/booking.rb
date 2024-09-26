class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :studio
  belongs_to :band
end
