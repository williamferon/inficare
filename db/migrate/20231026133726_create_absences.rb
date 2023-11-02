class CreateAbsences < ActiveRecord::Migration[7.0]
  def change
    create_table :absences do |t|
      t.date :date
      t.string :equipe
      t.string :motif
      t.string :etat
      t.references :patient, null: false, foreign_key: true

      t.timestamps
    end
  end
end
