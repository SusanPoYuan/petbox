class Pet < ActiveRecord::Base
	belongs_to :category
	has_one :photo, dependent: :destroy
	accepts_nested_attributes_for :photo

	validates :title, presence: true
  	validates :description, presence: true
  	validates :location, presence: true
  	validates :apply_instruction, presence: true
  	validates :email, email: true
end
