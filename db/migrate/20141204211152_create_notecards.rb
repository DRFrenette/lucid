class CreateNotecards < ActiveRecord::Migration
  def change
    create_table :notecards do |t|
      t.integer :project_id, null: false
      t.text :body, null: false

      t.timestamps null: false
    end
    add_index :notecards, :project_id
  end
end
