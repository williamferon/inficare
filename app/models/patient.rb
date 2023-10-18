class Patient < ApplicationRecord



  def self.ransackable_attributes(auth_object = nil)
    %w[nom]
  end


end
