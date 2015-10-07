class ChangeMappings < ActiveRecord::Migration

  def change
  	remove_column :mappings, :from
  	remove_column :mappings, :to
  	remove_column :mappings, :user_id
  end
end
