class AddUserToPCocktails < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :cocktails, :users
  end
end
