class CreateExperiences < ActiveRecord::Migration[5.0]
  def change
    create_table :experiences do |t|
      t.string :name
      t.text :datail
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
