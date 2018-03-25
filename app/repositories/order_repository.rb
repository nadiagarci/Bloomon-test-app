class OrderRepository

  def initialize(bouquet_repository, flower_repository)
    @bouquet_repository = bouquet_repository
    @flower_repository = flower_repository
    @orders = []
    @next_id = @orders.empty? ? 1 : @orders.last.id + 1

  end

  def add(order)
    @order = order
    order.id = @next_id
    @next_id += 1
    @orders << order
  end

  def all
    @orders
  end
end
