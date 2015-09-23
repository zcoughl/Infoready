class CreateMappings < ActiveRecord::Migration
  def change
    create_table :mappings do |t|
      t.integer :mapping_id
      t.timestamp :created_at
      t.timestamp :updated_at
      t.integer :from
      t.integer :to
      t.string :user_id

      t.timestamps null: false
    end
  end
end
