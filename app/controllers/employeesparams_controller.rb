class EmployeesparamsController < ApplicationController
	before_action :authenticate_user!
  def index
  end
   def new
   	@employeesparam = Employeesparam.new
  end
  def create

    end  
  end
  def edit
  end
  def show
  end
  def update
  end
  def destroy
  end
