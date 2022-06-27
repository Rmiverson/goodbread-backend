class CreateSubBoards < ActiveRecord::Migration[6.1]
  def change
    create_table :sub_boards do |t|
      t.references :user, null: false, foreign_key: true
      t.references :boards, null:false, foreign_key: true
      t.string :header
      t.text :description

      t.timestamps
    end
  end
end
