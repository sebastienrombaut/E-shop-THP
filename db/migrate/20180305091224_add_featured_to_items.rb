class AddFeaturedToItems < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :featured, :boolean, :default => false
  end
end
