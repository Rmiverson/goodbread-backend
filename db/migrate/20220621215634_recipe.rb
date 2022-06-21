class CreateRecipe < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.text :bio
      t.string :image

      t.timestamps
    end
  end
end
