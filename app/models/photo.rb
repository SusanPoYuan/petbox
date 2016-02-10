class Photo < ActiveRecord::Base
	belongs_to: pet
	mount_uploader :image, ImageUploader
end
