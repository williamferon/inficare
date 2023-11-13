
  class Channel < ApplicationRecord
    has_many :sub_channels, class_name: 'SubChannel'
    # D'autres attributs et méthodes

    def self.ransackable_attributes(auth_object = nil)
      %w[nom prenom niss]
    end

    def nom_with_prefix
      "Prefix #{self.nom}"
    end

  end
