class AddChannelRefToPriseEnCharges < ActiveRecord::Migration[7.0]
  def change
    add_reference :prise_en_charges, :channel, null: false, foreign_key: true
  end
end
