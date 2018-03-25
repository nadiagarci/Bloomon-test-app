
class OrdersView
  def display(orders)
     puts "This are all the orders to deliver:"
     orders.each do |order|
      puts "#{order.id} - #{order.specification}"
    end
  def warning
    puts "This part of the program is on development"
  end
  end



end
