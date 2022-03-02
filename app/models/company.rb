class Company < ApplicationRecord
  belongs_to :City
  has_many :clients

  def self.city_name(city_name) 
    ciudad = City.find_by_name(city_name)
    if !ciudad.nil?
      Company.where(city_id: ciudad.id)
    end
  end
end
