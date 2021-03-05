class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.integer :edition
      t.integer :pages
      t.date :date
      t.string :format
      t.references :author, null: false, foreign_key: true
      t.references :publisher, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
