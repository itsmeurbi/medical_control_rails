class Patient < ApplicationRecord
  validates :name, :birth_date, :city, presence: true
end
