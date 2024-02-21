class CreateCategoriesExpenditures < ActiveRecord::Migration[7.1]
  def change
    create_table :categories_expenditures do |t|
      t.references :category, null: false, foreign_key: true
      t.references :expenditure, null: false, foreign_key: true

      t.timestamps
    end
  end
end
