class City < ApplicationRecord
  belongs_to :State
  has_many :companies

  def self.state_id(state_id)
    City.find_by_State_id(state_id)
  end

  def self.state_name(state_name)
    estado = State.find_by_name(state_name)
    if !estado.nil?
      @cities = City.where(state_id: estado.id)
    end
  end
end
