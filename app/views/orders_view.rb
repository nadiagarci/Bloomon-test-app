
class OrdersView
  def display(orders)
     puts "This are all the orders to deliver:"
     orders.each do |order|
      puts "#{order.id} - #{order.specification}"
    end
  end



end
