class Company < ApplicationRecord
  belongs_to :owner
  has_many :handymen
end
