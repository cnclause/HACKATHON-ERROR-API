class CreateCharacters < ActiveRecord::Migration[6.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :connection
      t.string :quote
      t.references :trial, null: false, foreign_key: true

      t.timestamps
    end
  end
end
