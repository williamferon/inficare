class Patient < ApplicationRecord



  def self.ransackable_attributes(auth_object = nil)
    %w[nom prenom niss]
  end


end
