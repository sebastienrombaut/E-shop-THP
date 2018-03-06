class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|

      t.timestamps
    end
  end
end
