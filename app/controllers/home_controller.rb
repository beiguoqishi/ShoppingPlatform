class HomeController < ApplicationController
  include HomeHelper

  def index
    @shortcuts = shortcuts
    @search_items = search_items
    @top_level_categories = Category.where(:level => 1)
    @popular_focus = popular_focus
    render :layout => "application"
  end

end
