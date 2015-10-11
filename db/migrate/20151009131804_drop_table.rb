class DropTable < ActiveRecord::Migration
  def change
  	drop_table :entries
  end
end
