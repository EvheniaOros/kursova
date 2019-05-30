class CategoriesController < ApplicationController
	def show
		@employers = Employer.all
		@category = Category.find_by(id: params[:id])
	end
end
