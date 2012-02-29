class CreateMerchants < ActiveRecord::Migration
  def change
    create_table :merchants do |t|
      t.string :name
      t.string :email
      t.string :company
      t.string :address
      t.string :phone
      t.string :fax
      t.text :content
      t.boolean :is_verfied
      t.string :note

      t.timestamps
    end
  end
end
