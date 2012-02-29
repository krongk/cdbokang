class ProductItemsController < InheritedResources::Base
  before_filter :authenticate_admin_user!, :except => [:index, :show]

  def index
  	@product_items = ProductItem.where(:is_visible => true)
  end
end
