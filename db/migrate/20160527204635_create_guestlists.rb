class CreateGuestlists < ActiveRecord::Migration
  def change
    create_table :guestlists do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
