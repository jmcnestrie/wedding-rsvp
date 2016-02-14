class CreateGuestDetails < ActiveRecord::Migration
  def change
    create_table :guest_details do |t|
      t.boolean :attending
      t.string :guest_1_name
      t.string :guest_2_name
      t.integer :children
      t.string :dietary_reqs
      t.string :email
      t.string :phone
      t.string :comments

      t.timestamps null: false
    end
  end
end
