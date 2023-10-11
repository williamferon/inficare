class CreateCanauxes < ActiveRecord::Migration[7.0]
  def change
    create_table :canauxes do |t|
      t.string :nom

      t.timestamps
    end
  end
end
