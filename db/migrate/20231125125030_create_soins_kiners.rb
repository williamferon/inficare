class CreateSoinsKiners < ActiveRecord::Migration[7.0]
  def change
    create_table :soins_kiners do |t|
      t.string :soins
      t.string :periode
      t.string :frequence
      t.string :autre
      t.references :prise_en_charge, null: false, foreign_key: true

      t.timestamps
    end
  end
end
