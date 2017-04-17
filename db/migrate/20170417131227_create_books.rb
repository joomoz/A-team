class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :key
      t.text :author
      t.text :title
      t.text :journal
      t.integer :year
      t.integer :volume
      t.integer :number
      t.string :pages
      t.integer :month
      t.text :note
      t.text :publisher
      t.text :series
      t.text :address
      t.text :edition
      t.text :booktitle
      t.text :editor
      t.text :organization
      t.string :entry_type

      t.timestamps null: false
    end
  end
end
