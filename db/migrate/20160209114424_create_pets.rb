class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :title
      t.text :description
      t.text :qualification
      t.integer :user_id
      t.integer :category_id , :default => 1
      t.string :location
      t.timestamps null: false
    end
  end
end
