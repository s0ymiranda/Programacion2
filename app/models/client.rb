class Client < ApplicationRecord
  belongs_to :Company
  has_many :projects

  def self.company_name(company_name) 
    compani = Company.find_by_nombre(company_name)
    if !compani.nil?
      Client.where(company_id: compani.id)
    end
  end
end
