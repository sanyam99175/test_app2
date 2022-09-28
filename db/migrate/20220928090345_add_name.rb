class AddName < ActiveRecord::Migration[7.0]
  def change
    add_column :paymethods, :name , :string
    add_column :paymethods, :user_id, :int
  end
end
