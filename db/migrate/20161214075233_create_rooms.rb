class CreateRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :rooms do |t|
      t.string :name, null: false
      t.text :detail
      t.timestamps
    end
  end
end
