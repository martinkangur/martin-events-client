class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.string :short_description
      t.text :long_description
      t.integer :price
      t.date :date
      t.string :location
      t.string :image

      t.timestamps
    end
  end
end
