class EmployersController < ApplicationController
  before_action :authenticate_user!
  before_action :user_find, :category_find
  def index
    @employers = Employer.all
  end

	def new
    @employer = Employer.new
	end

	def create
    @employer = current_user.employers.build(employer_params)
    if @employer.save
      redirect_to user_employer_path(current_user.id, @employer)
    else
      render 'new'
    end
  end

	def edit
    @employer = Employer.find_by(id: params[:id])
  end

	def show
    @employer = Employer.find(params[:id])
    @employeesparams = Employeesparam.all
  end

	def update
    @employer = Employer.find_by(user_id: current_user.id)
    if @employer.update(employer_params)
      redirect_to user_employer_path(current_user.id, @employer)
    end
  end

	def destroy
		@employer = Employer.find_by(id: params[:id])
    @employer.destroy
    redirect_to root_path
  end
  private
  def employer_params
    params.require(:employer).permit(:user_id, :title, :company, :phone, :city, :placeofwork, :employment, :descriptionsofwork, :requirementsforcandiate, :weoffer, :category_id)
  end

  def user_find
		@user = User.find_by(id: params[:user_id])
  end

  def category_find
    @category = Category.find_by(id: params[:category_id])
  end
end
