class RemoveChannelIdFromSubchannels < ActiveRecord::Migration[7.0]
    def change
      remove_column :subchannels, :channel_id
    end
end
