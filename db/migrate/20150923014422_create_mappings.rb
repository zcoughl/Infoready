class CreateMappings < ActiveRecord::Migration
  def change
    create_table :mappings do |t|
      t.integer :mapping_id
      t.timestamp :created_at
      t.timestamp :updated_at
      t.integer :from
      t.integer :to
      t.string :user_id

      t.references :user, foreign_key: true
      t.timestamps null: false
    end
    add_index :mappings, [:user_id, :created_at]
  end
end
