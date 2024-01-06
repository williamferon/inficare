class RemoveChannelFromPrisesEnCharges < ActiveRecord::Migration[7.0]
  def change
    remove_column :prise_en_charges, :channel, :string
  end
end
