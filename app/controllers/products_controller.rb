class ProductsController < ApplicationController
  include ApplicationHelper
  def index
    @products = Category.find(params[:category_id]).products
    super
  end
end
