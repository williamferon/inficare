class CreateInfoMedicales < ActiveRecord::Migration[7.0]
  def change
    create_table :info_medicales do |t|
      t.date :date
      t.string :info
      t.string :note

      t.timestamps
    end
  end
end
