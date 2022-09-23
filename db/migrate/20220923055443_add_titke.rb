class AddTitke < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :title, :string
    add_column :articles, :description, :string
    add_column :articles, :user_id, :int
  end
end
