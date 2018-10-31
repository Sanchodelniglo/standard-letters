class CreateCategoryCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :category_companies do |t|
      t.references :category, foreign_key: true
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
