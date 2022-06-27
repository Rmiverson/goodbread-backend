class CreateRecipeTexts < ActiveRecord::Migration[6.1]
  def change
    create_table :recipe_texts do |t|
      t.references :recipe, null: false, foreign_key: true
      t.string :header
      t.text :content
      t.timestamps
    end
  end
end
