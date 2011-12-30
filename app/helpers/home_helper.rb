module HomeHelper
  def shortcuts
    {'我的订单' => '#', '购物车' => '#'}
  end

  def search_items
    [
        {:name => '商品', :type => 'product',:url => '#'},
        {:name => '店铺', :type => 'shop',:url => '#'}
    ]
  end
  
  def popular_focus
    []
  end
end
