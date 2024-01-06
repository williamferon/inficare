
  class Channel < ApplicationRecord
    has_many :sub_channels, class_name: 'SubChannel'
    # D'autres attributs et méthodes

    def sub_channels
      SubChannel.where(channel_id: id)
    end


    def nom_with_prefix
      "Prefix #{self.nom}"
    end

  end
