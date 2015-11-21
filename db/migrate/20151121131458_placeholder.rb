class Placeholder < ActiveRecord::Migration
  def change
    create_table :placeholders do |t|
      t.timestamps null: false
      t.string :holder
      t.integer :template_id
    end
  end
end
