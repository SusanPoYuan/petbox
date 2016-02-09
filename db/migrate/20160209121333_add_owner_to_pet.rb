class AddOwnerToPet < ActiveRecord::Migration
  def change
  	add_column :pets, :owner_name, :string
    add_column :pets, :phone, :string
    add_column :pets, :email, :string
  end
end
