class CreateSousCanauxes < ActiveRecord::Migration[7.0]
  def change
    create_table :sous_canauxes do |t|
      t.string :nom

      t.timestamps
    end
  end
end
