require_relative "../views/orders_view"
require_relative "../models/order"
require_relative "../repositories/flower_repository"
require_relative "../repositories/bouquet_repository"

class OrdersController
  def initialize(bouquet_repository, flower_repository)
    @bouquet_repository = bouquet_repository
    @flower_repository = flower_repository
    @view = OrdersView.new
  end

  def list
    flowers = @flower_repository.all
    bouquets = @bouquet_repository.all
    orders = @orders_repository.all
    @view.warning
  end

  # def add
  # #   specification = #OOOperation!!!
  # #   order = Order.new(specification: specification)
  # #   @order_repository.add(order)
  # end
end
