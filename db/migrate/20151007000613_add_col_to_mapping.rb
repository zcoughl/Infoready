class AddColToMapping < ActiveRecord::Migration
  def change
  	add_column :mappings, :colname, :string
  	add_column :mappings, :database2, :string
  	add_column :mappings, :colname2, :string
  	add_column :mappings, :coltype2, :string
  end
end
