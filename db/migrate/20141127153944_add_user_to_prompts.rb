class AddUserToPrompts < ActiveRecord::Migration
  def change
    add_reference :prompts, :user, index: true, null: false
  end
end
