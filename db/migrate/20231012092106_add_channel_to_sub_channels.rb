class AddChannelToSubChannels < ActiveRecord::Migration[7.0]
  def change
    add_reference :subchannels, :channel, null: false, foreign_key: true
  end
end
