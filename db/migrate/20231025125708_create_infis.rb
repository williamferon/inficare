class CreateInfis < ActiveRecord::Migration[7.0]
  def change
    create_table :infis do |t|
      t.string :num
      t.string :nom
      t.string :region

      t.timestamps
    end
  end
end
