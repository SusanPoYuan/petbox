class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.integer :pet_id
      t.string :image

      t.timestamps null: false
    end
  end
end
