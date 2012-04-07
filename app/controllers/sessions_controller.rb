class SessionsController < ApplicationController
def create
	@categories = Category.all
  user = login(params[:email], params[:password], params[:remember_me])
  if user
    redirect_back_or_to root_url, :notice => "Logged in!"
  else
    flash.now.alert = "Email or password was invalid"
    render :new
  end
end

def destroy
  logout
  redirect_to root_url, :notice => "Logged out!"
end

def new
@categories = Category.all
end

end
