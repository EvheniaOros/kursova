class EmployCommentsController < ApplicationController
  def index
  end
  def new
    @employ_comment = Employ_comment.new
  end
  def create
    @employ_comment = Employ_comment.new(comment_params) 
  end
  def edit
  end
  def update
  end
  def show
  end
  def destroy
  end
  private
  def comment_params
    params.require(:employ_comment).permit(:user_id, :etc)
  end
end
