class StoreController < ApplicationController
  before_filter :require_login, :only => :contacts;

  def index
@categories = Category.all
  end

  def contacts
  	@categories = Category.all
  end

  def about_us
  	@categories = Category.all
  end

end
