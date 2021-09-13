class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :full_name
      t.string :email
      t.string :phone
      t.string :street
      t.string :password_digest
      t.string :remember_digest
      t.integer :role, null: false, default: 3
      t.references :town, null: false, foreign_key: true

      t.timestamps
    end
    add_index :users, :email, unique: true
  end
end
