class AddDetailsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :name, :string
    add_column :users, :address, :string
    add_column :users, :contact_no, :integer
    add_column :users, :vehicle_no, :string
  end
end
