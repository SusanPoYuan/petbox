class Pet < ActiveRecord::Base
	belongs_to :category
	has_one :photo
	accepts_nested_attributes_for :photo
end
