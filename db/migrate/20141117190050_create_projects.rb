class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.integer :user_id, null: false
      t.integer :project_id, null: false
      t.string :type, null: false

      t.timestamps null: false
    end
    add_index :projects, :user_id
  end
end
