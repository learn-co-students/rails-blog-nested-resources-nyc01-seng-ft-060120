class ChangeColumns < ActiveRecord::Migration[5.0]
  def change
    remove_index :comments, :post_id
    change_column :comments, :user_id, :integer
    change_column :comments, :post_id, :integer
  end
end
