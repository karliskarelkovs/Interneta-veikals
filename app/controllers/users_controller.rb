class UsersController < ApplicationController
def new
	@categories = Category.all
  @user = User.new
end

def create
  @user = User.new(params[:user])
  if @user.save
    redirect_to root_url, :notice => "Signed up!"
  else
    render :new
  end
end
end
