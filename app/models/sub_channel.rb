class SubChannel < ApplicationRecord
  self.table_name = 'subchannels'
  belongs_to :channel, class_name: 'Channel'
  # D'autres attributs et méthodes
  def nom_with_prefix
    "Prefix #{self.nom}"
  end
end
