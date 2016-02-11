class Pet < ActiveRecord::Base
	belongs_to :category
	has_one :photo, dependent: :destroy
	accepts_nested_attributes_for :photo
end
