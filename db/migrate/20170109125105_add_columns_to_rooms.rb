class AddColumnsToRooms < ActiveRecord::Migration[5.0]
  def change
    add_column :rooms, :type, :string
    add_column :rooms, :capacity, :string
    add_column :rooms, :bedroom_num, :string
    add_column :rooms, :bed_num, :string
    add_column :rooms, :city, :string
  end
end
