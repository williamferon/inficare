class ChangeChannelIdDataTypeInSubchannels < ActiveRecord::Migration[7.0]
  def change
    def change
      change_column :subchannels, :channel_id, :new_data_type
    end
  end
end
