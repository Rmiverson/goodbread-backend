class CreateRecipe < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.references :user, null: false, foreign_key: true
      t.references :board, null: false, foreign_key: true
      t.references :sub_board, null: false, foreign_key: true
      t.string :title
      t.text :description
      t.string :banner_image

      t.timestamps
    end
  end
end
