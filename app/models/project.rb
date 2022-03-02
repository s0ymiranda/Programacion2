class Project < ApplicationRecord
  belongs_to :Client
  belongs_to :Status
  
  def self.client_name(project_code) 
    proje = Project.find_by_codigo(project_code)
    if !proje.nil?
      Client.where(id: proje.Client.id)
    end
  end
end
