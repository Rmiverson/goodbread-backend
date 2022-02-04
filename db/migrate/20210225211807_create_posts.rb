class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.string :contents, :array => true
      t.string :ingredients, :array => true
      t.string :instructions, :array => true
      t.string :tags, :array => true

      t.timestamps
    end
  end
end
