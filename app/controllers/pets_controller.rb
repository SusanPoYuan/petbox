class PetsController < ApplicationController

	def index
		@categories = Category.all
	end

	def new
		@category = Category.find(params[:category_id])
		@pet = @category.pets.new
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
		params.require(:pet).permit(:title, :description, :qualification, :location)
	end
end
