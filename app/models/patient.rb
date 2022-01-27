class Patient < ApplicationRecord
  # TODO: City has to be changed to home_town intead
  validates :name, :birth_date, :city, presence: true

  def example
    2 + 2
  end

  def calculate_somthing
    3.times do
      Rails.logger.info('Im doing something dude!')
    end
  end
end
