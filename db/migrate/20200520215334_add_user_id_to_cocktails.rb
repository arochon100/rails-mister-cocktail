class AddUserIdToCocktails < ActiveRecord::Migration[6.0]
  def change
    add_column :cocktails, :user_id, :bigint
  end
end
