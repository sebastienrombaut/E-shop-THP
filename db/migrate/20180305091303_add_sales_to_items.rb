class AddSalesToItems < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :numbersales, :integer
  end
end
