class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :status, null:false
      t.string :f_name, null:false
      t.string :l_name, null:false
      t.string :email, null:false
      t.boolean :admin, null:false, default:false
      t.string :password_digest, null:false

      t.timestamps
    end
    add_index :users, :email, unique: true
  end
end
