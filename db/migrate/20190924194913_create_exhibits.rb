class CreateExhibits < ActiveRecord::Migration[6.0]
  def change
    create_table :exhibits do |t|
      t.string :item_name
      t.string :category
      t.string :description
      t.string :photo_one
      t.string :photo_two
      t.string :photo_three
      t.references :trial, null: false, foreign_key: true

      t.timestamps
    end
  end
end
