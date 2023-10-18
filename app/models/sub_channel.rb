class SubChannel < ApplicationRecord
  self.table_name = 'subchannels'
  belongs_to :channel, class_name: 'Channel'
  # D'autres attributs et méthodes
end
