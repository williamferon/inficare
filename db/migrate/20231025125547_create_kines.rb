class CreateKines < ActiveRecord::Migration[7.0]
  def change
    create_table :kines do |t|
      t.string :nom
      t.string :region

      t.timestamps
    end
  end
end
