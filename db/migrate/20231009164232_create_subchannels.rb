class CreateSubchannels < ActiveRecord::Migration[7.0]
  def change
    create_table :subchannels do |t|
      t.string :nom

      t.timestamps
    end
  end
end
