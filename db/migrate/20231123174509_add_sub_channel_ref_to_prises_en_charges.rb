class AddSubChannelRefToPrisesEnCharges < ActiveRecord::Migration[7.0]
  def change
    add_reference :prise_en_charges, :subchannel, null: false, foreign_key: true
  end
end
