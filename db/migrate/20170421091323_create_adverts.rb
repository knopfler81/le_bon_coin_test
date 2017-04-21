class CreateAdverts < ActiveRecord::Migration[5.0]
  def change
    create_table :adverts do |t|
      t.string  :title
      t.text    :description
      t.integer :price
      t.string  :photos
      t.integer :role
      t.string  :location
      t.string  :address
      t.integer :user_id
      t.boolean :published, default: false, null: false

      t.timestamps
    end
  end
end
