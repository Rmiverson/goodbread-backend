class CreateRecipeUnorderedLists < ActiveRecord::Migration[6.1]
  def change
    create_table :recipe_unordered_lists do |t|

      t.timestamps
    end
  end
end
