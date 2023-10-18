class DropCanauxesTable < ActiveRecord::Migration[7.0]

    def change
      drop_table :canauxes
    end
end
