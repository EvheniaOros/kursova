class EmployersController < ApplicationController
	before_action :authenticate_user!
  def index
  end
   def new
    @employer = Employer.new
  end
  def create
     @employer = current_user.build_employer(employer_params)
      if @employer.save
      redirect_to employer_path
      end
  end
  def edit
    @employer = current_user.employer
  end
  def show
    @employer = Employer.find(params[:id])
  end
  def update
    @employer = Employer.find_by(user_id: current_user.id)
      if @employer.update(employer_params)
      redirect_to employer_path(@employer.id) 
    end
  end
  def destroy
    @employer.destroy
      redirect_to employer_path
  end
  private
  def employer_params
    params.require(:employer).permit(:user_id, :title, :company, :fasename, :phone, :city, :placeofwork, :employment, :requirements, :descriptionsofwork, :requirementsforcandiate, :functional, :weoffer, :category_id)
  end
end
