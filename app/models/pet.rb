class Pet < ActiveRecord::Base
	belongs_to :category
	has_one :photo, dependent: :destroy
	accepts_nested_attributes_for :photo

	validates :title, presence: true
  	validates :pettype, presence: true
  	validates :qualification, presence: true
  	validates :location, presence: true
  	validates :email, email: true, presence: true
end
