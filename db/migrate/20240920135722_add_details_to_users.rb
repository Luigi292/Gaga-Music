class AddDetailsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :full_name, :string
    add_column :users, :phone_number, :string
    add_column :users, :user_type, :string
    add_column :users, :instruments_played, :string
    add_column :users, :instrument_needed, :string
  end
end
