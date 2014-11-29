class AddCategoriesToPrompts < ActiveRecord::Migration
  def change
    add_reference :prompts, :category, index: true, null: false
  end
end
