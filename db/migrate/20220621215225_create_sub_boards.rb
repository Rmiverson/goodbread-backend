class CreateSubBoards < ActiveRecord::Migration[6.1]
  def change
    create_table :sub_boards do |t|

      t.timestamps
    end
  end
end
