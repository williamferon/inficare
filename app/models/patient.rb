class Patient < ApplicationRecord
  has_many :incidents, dependent: :destroy
  has_many :absences, dependent: :destroy
  has_many :info_medicales, dependent: :destroy
  has_many :prise_en_charges, dependent: :destroy

  def nom_and_prenom_and_niss
    "#{nom} #{prenom} #{niss}"
  end

  def self.ransackable_attributes(auth_object = nil)
    %w[nom]
  end


end
