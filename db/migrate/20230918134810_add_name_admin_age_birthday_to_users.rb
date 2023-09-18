class AddNameAdminAgeBirthdayToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :admin, :boolean
    add_column :users, :age, :integer
    add_column :users, :birthday, :date
  end
end
