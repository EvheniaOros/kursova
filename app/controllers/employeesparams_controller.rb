class EmployeesparamsController < ApplicationController
	before_action :authenticate_user!
	before_action :user_find, only: [:index, :show, :destroy]
  before_action :employe_find
	def index
		@employeesparam = Employeesparam.find_by(id: params[:id])
    @employeesparams = Employeesparam.all
  end

	def new
   	@employeesparam = Employeesparam.new
  end

	def create
    @employeesparam = current_user.employeesparams.build(profile_params)
      if @employeesparam.save
      redirect_to user_employeesparams_path(current_user.id)
      else
        render 'new'
      end
    end

	def edit
    @employeesparam = Employeesparam.find_by(id: params[:id])
	end

	def show
    @employeesparam = Employeesparam.find(params[:id])
    @employeesparams = Employeesparam.all
  end

	def update
  	@employeesparam = Employeesparam.find_by(user_id: current_user.id)
    if @employeesparam.update(profile_params)
      redirect_to user_employeesparam_path(@employeesparam.id)
    end
  end

	def destroy
		@employeesparam = Employeesparam.find_by(id: params[:id])
    @employeesparam.destroy
    redirect_to root_path
  end

	private
  def profile_params
    params.require(:employeesparam).permit(:user_id, :employer_id,:firstname, :lastname, :age, :city, :address, :phonenumber, :position, :cityofwork, :typeofemployment, :education, :faculty, :body)
  end

	def user_find
		@user = User.find_by(id: params[:user_id])
  end
  
   def employe_find
    @employer = Employer.find_by(id: params[:employer_id])
  end
end
