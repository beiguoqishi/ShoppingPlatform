module ApplicationHelper
  def shortcuts
    {'我的订单' => '#', '购物车' => '#'}
  end

  def search_items
    [
        {:name => '商品', :type => 'product', :url => '#'},
        {:name => '店铺', :type => 'shop', :url => '#'}
    ]
  end

  def popular_focus
    [
        {:url => '#', :name => '', :img_url => 'http://img03.taobaocdn.com/tps/i3/T13vWLXgRmXXXXXXXX-490-170.png'},
        {:url => '#', :name => '', :img_url => 'http://i.mmcdn.cn/simba/img/T1jZmLXg8vXXXXXXXX.jpg?noq=y'},
        {:url => '#', :name => '', :img_url => 'http://i.mmcdn.cn/simba/img/T16gCLXjtiXXXXXXXX.jpg?noq=y'},
        {:url => '#', :name => '', :img_url => 'http://i.mmcdn.cn/simba/img/T1F1aLXghqXXXXXXXX.gif?noq=y'},
        {:url => '#', :name => '', :img_url => 'http://img01.taobaocdn.com/tps/i1/T1dYOKXgtfXXXXXXXX-490-170.png'}
    ]
  end

  def index
    @shortcuts = shortcuts
    @search_items = search_items
    @top_level_categories = Category.where(:level => 1)
    @popular_focus = popular_focus
    render :layout => "application"
  end
end
