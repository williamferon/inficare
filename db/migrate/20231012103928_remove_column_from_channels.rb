class RemoveColumnFromChannels < ActiveRecord::Migration[7.0]
  def change
    remove_index :channels, :name
    remove_column :channels, :name, :string
  end
end
