class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.belongs_to :user, index: true, null: false
      t.belongs_to :prompt, index: true, null: false
      t.text :body, null: false

      t.timestamps
    end
  end
end
