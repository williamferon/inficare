class CreatePatients < ActiveRecord::Migration[7.0]
  def change
    create_table :patients do |t|
      t.string :nom
      t.string :prenom
      t.string :telephone
      t.string :rue
      t.string :numero
      t.string :ville
      t.integer :niss
      t.string :contact
      t.string :lien
      t.string :tel_contact

      t.timestamps
    end
  end
end
