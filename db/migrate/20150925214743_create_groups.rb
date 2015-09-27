class CreateGroups < ActiveRecord::Migration
  def change
	  create_table :groups do |t|
      t.integer :group_id
      t.integer :entry_id

      t.timestamps null: false
    end
  end
end
