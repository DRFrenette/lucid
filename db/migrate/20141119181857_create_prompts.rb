class CreatePrompts < ActiveRecord::Migration
  def change
    create_table :prompts do |t|
      t.string :title, null: false
      t.string :body, null: false
      t.integer :project_id
      t.integer :notecard_id

      t.timestamps
    end
    add_index :prompts, [:project_id, :notecard_id], unique: true
  end
end
