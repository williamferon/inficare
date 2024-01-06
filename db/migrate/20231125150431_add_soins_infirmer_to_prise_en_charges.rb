class AddSoinsInfirmerToPriseEnCharges < ActiveRecord::Migration[7.0]
  def change
    add_column :prise_en_charges, :soins_infirmer, :string
  end
end
