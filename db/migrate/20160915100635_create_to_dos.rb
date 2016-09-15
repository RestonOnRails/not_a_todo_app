class CreateToDos < ActiveRecord::Migration[5.0]
  def change
    create_table :to_dos do |t|
      t.string :item
      t.boolean :complete

      t.timestamps
    end
  end
end
