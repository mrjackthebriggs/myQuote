class CreateQuotes < ActiveRecord::Migration[7.0]
  def change
    create_table :quotes do |t|
      t.text :quote_text, null:false
      t.boolean :public, null:false, default:false
      t.text :user_com, null:true
      t.date :pub_date, null:false
      t.references :user, null: false, foreign_key: true
      t.references :author, null: false, foreign_key: true

      t.timestamps
    end
  end
end
