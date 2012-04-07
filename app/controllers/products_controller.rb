class ProductsController < InheritedResources::Base
	  def index
  	@products = Product.all
  	@categories = Category.all
  end
end
