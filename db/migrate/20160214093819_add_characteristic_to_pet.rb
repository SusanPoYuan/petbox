class AddCharacteristicToPet < ActiveRecord::Migration
  def change
  	add_column :pets, :sexual, :string
    add_column :pets, :pettype, :string
    add_column :pets, :ligation, :string
    add_column :pets, :size, :string
    add_column :pets, :age_months, :integer
    add_column :pets, :age_years, :integer
  end
end
