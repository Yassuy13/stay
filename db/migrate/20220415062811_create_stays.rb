class CreateStays < ActiveRecord::Migration[6.1]
  def change
    create_table :stays do |t|
      t.string :title
      t.string :name
      t.string :email
      t.string :pass
      t.string :room
      t.integer :price
      t.string :address
      t.date :start
      t.date :finish
      t.integer :member
      t.binary :pic

      t.timestamps
    end
  end
end
