class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, null: false
      t.string :password_digest, null: false
      t.integer :level, default: 1, null: false
      t.boolean :admin, default: false, null: false

      t.timestamps null: false
    end

    add_index :users, :email, unique: true
  end
end
