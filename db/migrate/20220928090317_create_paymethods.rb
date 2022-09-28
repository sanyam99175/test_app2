class CreatePaymethods < ActiveRecord::Migration[7.0]
  def change
    create_table :paymethods do |t|

      t.timestamps
    end
  end
end
