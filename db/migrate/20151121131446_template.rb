class Template < ActiveRecord::Migration
  def change
    create_table :templates do |t|
      t.timestamps null: false
      t.text :body
      t.string :subject
      t.integer :user_id
    end
  end
end
