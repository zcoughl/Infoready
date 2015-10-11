class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :tablename
      t.string :colname
      t.string :coltype
      t.integer :database
      t.references :mapping, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
