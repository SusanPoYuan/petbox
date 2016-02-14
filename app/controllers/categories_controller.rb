class CategoriesController < ApplicationController
	def show
		@categories = Category.all
		@category = Category.find(params[:id])
		@pets = @category.pets.order("updated_at DESC")
		set_page_title  @category.name + "の認養"
 	end
end
