class AddUserIdToComments < ActiveRecord::Migration[5.0]
  def change
    add_reference :comments, :user, null: false
  end
end
