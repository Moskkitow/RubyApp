class AddNameAndRoteToAdmin < ActiveRecord::Migration[5.1]
  def change
    add_column :admins, :name, :string
    add_column :admins, :role, :integer
  end
end
