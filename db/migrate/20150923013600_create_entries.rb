class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.integer :field_id
      t.string :field_name
      t.string :field_type
      t.string :table_name
      t.string :data_source_name

      t.timestamps null: false
    end
  end
end
