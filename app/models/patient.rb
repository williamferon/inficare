class Patient < ApplicationRecord
  has_many :incidents, dependent: :destroy
  has_many :absences, dependent: :destroy
  has_many :info_medicales, dependent: :destroy


  def self.ransackable_attributes(auth_object = nil)
    %w[nom]
  end


end
