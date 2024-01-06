class RemoveSoinsKineFromPrisesEnCharges < ActiveRecord::Migration[7.0]
  def change
    remove_column :prise_en_charges, :soins_kine, :string
  end
end
