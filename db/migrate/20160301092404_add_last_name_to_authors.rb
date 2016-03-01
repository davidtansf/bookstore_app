class AddLastNameToAuthors < ActiveRecord::Migration
  def change
    add_column :authors, :last_name, :string
  end
end
