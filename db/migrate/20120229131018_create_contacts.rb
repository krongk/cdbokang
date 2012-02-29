class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :phone
      t.text :content
      t.boolean :is_verfied
      t.string :note

      t.timestamps
    end
  end
end
