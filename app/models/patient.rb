class Patient < ApplicationRecord
  validates :name, :birth_date, :city, :medical_history, :surgical_history, presence: true
end
