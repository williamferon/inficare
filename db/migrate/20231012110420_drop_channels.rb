class DropChannels < ActiveRecord::Migration[7.0]
      def up
        drop_table :channels
      end

      def down
        raise ActiveRecord::IrreversibleMigration
      end
end
