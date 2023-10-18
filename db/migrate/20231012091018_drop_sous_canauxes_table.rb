class DropSousCanauxesTable < ActiveRecord::Migration[7.0]
  def change
    drop_table :sous_canauxes
  end
end
