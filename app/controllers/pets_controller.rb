class PetsController < ApplicationController
	before_filter :validate_search_key , :only => [:search]

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

	def search
	  	@categories = Category.all
	    if @query_string.present?
	      search_result = Pet.ransack(@search_criteria).result(:distinct => true)
	      @pets = search_result.paginate(:page => params[:page], :per_page => 20 )
    	end
    	cookies[:search_title] = @query_string
  	end

	protected

	def validate_search_key
		@query_string = params[:q].gsub(/\\|\'|\/|\?/, "") if params[:q].present?
		@search_criteria = search_criteria(@query_string)
	end

	def search_criteria(query_string)
		{ title_or_description_or_qualification_or_email_or_location_cont: query_string }
	end

	private

	def pet_params
		params.require(:pet).permit(:title, :description, :qualification, :location, photo_attributes: [:image, :id])
	end
end
