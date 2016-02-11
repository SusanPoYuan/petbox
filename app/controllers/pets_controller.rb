class PetsController < ApplicationController

	def index
		@categories = Category.all
	end

	def show
		@category = Category.find(params[:category_id])
		@pet = @category.pets.find(params[:id])
		@photo = @pet.photo
	end
	
	def new
		@categories = Category.all
		@category = Category.find(params[:category_id])
		@pet = @category.pets.new
		@photo = @pet.build_photo
	end

	def create
		@category = Category.find(params[:category_id])
		@pet = @category.pets.build(pet_params)
		
		if @pet.save
			redirect_to category_path(@category)
		else
			render :new
		end
	end

	private

	def pet_params
		params.require(:pet).permit(:title, :description, :qualification, :location, photo_attributes: [:image, :id])
	end
end
