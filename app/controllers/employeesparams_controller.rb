class EmployeesparamsController < ApplicationController
	before_action :authenticate_user!
  def index

  end
   def new
   	@employeesparam = Employeesparam.new
  end
  def create
    
    @employeesparam = current_user.employeesparams.build(profile_params)
      if @employeesparam.save
      redirect_to employeesparams_path(@employeesparam.id)
      end
    end  
  def edit
    @employeesparam = current_user.employeesparam
end
  def show
    @employeesparam = Employeesparam.find(params[:id])
    @employeesparams = Employeesparam.all
  end
  def update
       @employeesparam = Employeesparam.find_by(user_id: current_user.id)
      if @employeesparam.update(profile_params)
      redirect_to employeesparam_path(@employeesparam.id) 
    end
  end
  def destroy
      @employeesparam.destroy
      redirect_to employeesparams_path
  end
  private
  def profile_params
    params.require(:employeesparam).permit(:user_id, :firstname, :lastname, :age, :city, :address, :phonenumber, :position, :cityofwork, :typeofemployment, :education, :faculty, :body)
  end
end


