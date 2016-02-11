class Category < ActiveRecord::Base
	has_many :pets, dependent: :destroy
end
