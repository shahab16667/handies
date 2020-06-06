class Handyman < ApplicationRecord
  belongs_to :company
  belongs_to :category
  has_many :reviews, through: :bookings
end
