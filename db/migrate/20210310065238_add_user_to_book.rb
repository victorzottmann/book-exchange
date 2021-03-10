class AddUserToBook < ActiveRecord::Migration[6.0]
  def change
    add_reference :books, :user, null: true, foreign_key: true
  end
end
