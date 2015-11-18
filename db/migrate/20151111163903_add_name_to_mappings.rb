class AddNameToMappings < ActiveRecord::Migration
  def change
    add_column :mappings, :mapping_name, :string
  end
end
