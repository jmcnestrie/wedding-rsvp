class CreateRsvps < ActiveRecord::Migration
  def change
    create_table :rsvps do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :events
      t.integer :guests
      t.string :guestinfo
      t.string :message

      t.timestamps null: false
    end
  end
end
