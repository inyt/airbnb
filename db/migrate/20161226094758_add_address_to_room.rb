class AddAddressToRoom < ActiveRecord::Migration[5.0]
  def change
    add_column :rooms, :address, :string
  end
end
