class EmployersController < ApplicationController
	before_action :authenticate_user!
  def index
  end
   def new
    @employer = Employer.new
  end
  def create
     @employer = current_user.employer.build(employer_params)
      if @employer.save
      redirect_to employer_path(@employer.id)
      end
  end
  def edit
    @employer = Employer.find_by(id: params[:id])
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
		@employer = Employer.find_by(id: params[:id])
    @employer.destroy
      redirect_to root_path
  end
  private
  def employer_params
    params.require(:employer).permit(:user_id, :title, :company, :phone, :city, :placeofwork, :employment, :descriptionsofwork, :requirementsforcandiate, :weoffer, :category_id)
  end

end
