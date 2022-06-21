class CreateRecipeOrderedLists < ActiveRecord::Migration[6.1]
  def change
    create_table :recipe_ordered_lists do |t|

      t.timestamps
    end
  end
end
