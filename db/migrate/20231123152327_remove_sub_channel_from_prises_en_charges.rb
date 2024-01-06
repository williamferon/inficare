class RemoveSubChannelFromPrisesEnCharges < ActiveRecord::Migration[7.0]
  def change
    remove_column :prise_en_charges, :sub_channel, :string
  end
end
