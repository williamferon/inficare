class RemoveSubchannelFromPrisesEnCharges < ActiveRecord::Migration[7.0]
  def change
    remove_column :prise_en_charges, :subchannel, :string
  end
end
