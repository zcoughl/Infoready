class CreateDatasources < ActiveRecord::Migration
  def change
    create_table :datasources do |t|
      t.text :source_name
      t.text :account
      t.text :password
      t.text :description
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
