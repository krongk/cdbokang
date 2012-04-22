class CreateParts < ActiveRecord::Migration
  def change
    create_table :parts do |t|
      t.string :title
      t.text :body
    end
    add_index :parts, :title, :unique => true
  end
end
