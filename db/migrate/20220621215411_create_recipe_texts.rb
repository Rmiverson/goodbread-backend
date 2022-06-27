class CreateRecipeTexts < ActiveRecord::Migration[6.1]
  def change
    create_table :recipe_texts do |t|
      t.string :header
      t.text :content
      t.timestamps
    end
  end
end
