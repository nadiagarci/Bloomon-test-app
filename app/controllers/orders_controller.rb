class OrdersController
  def initialize(bouquet_repository, flower_repository)
    @bouquet_repository = bouquet_repository
    @flower_repository = flower_repository
    @orders_view = OrdersView.new
  end

  def list
    orders = @orders_repository.all
    @view.display(orders)
  end

  def add
    specification = #OOOperation!!!
    order = Order.new(specification: specification)
    @order_repository.add(order)
  end


end
