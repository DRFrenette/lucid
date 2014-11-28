class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.text :guidelines, null: false
      t.integer :user_id, null: false

      t.timestamps null: false
    end
    add_index :categories, :title, unique: true
    add_index :categories, :user_id
  end
end
