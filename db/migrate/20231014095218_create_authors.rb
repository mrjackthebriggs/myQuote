class CreateAuthors < ActiveRecord::Migration[7.0]
  def change
    create_table :authors do |t|
      t.string :auth_f_name, null:false
      t.string :auth_l_name, null:true
      t.date :birth_date, null:true
      t.date :death_date, null:true
      t.text :bio, null:true

      t.timestamps
    end
  end
end
