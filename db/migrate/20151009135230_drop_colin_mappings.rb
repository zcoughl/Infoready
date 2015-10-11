class DropColinMappings < ActiveRecord::Migration
  def change
  	remove_column :mappings, :mapping_id
  	remove_column :mappings, :from
  	remove_column :mappings, :to
  	remove_column :mappings, :coltype
  	remove_column :mappings, :colname
  	remove_column :mappings, :coltype2
  	remove_column :mappings, :colname2
  	remove_column :mappings, :database
  	add_column :mappings, :database1, :string
  end
end
