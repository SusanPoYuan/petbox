class CategoriesController < ApplicationController
	def show
		@categories = Category.all
		@category = Category.find(params[:id])
		@pets = @category.pets
	end
end
