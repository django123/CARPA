class AddFnameToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :fName, :string
  end
end
