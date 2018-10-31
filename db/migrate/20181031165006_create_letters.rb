class CreateLetters < ActiveRecord::Migration[5.2]
  def change
    create_table :letters do |t|
      t.text :content
      t.references :category_company, foreign_key: true
      t.string :url

      t.timestamps
    end
  end
end
