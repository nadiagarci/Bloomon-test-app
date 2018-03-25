class Router
  def initialize(flowers_controller, bouquets_controller)
    @flowers_controller = flowers_controller
    @bouquets_controller = bouquets_controller
    @running = true
  end

  def run
    puts "           --           "
    puts "   Welcome to BLOOMON   "
    puts "           --           "
    while @running
      display_tasks
      answer = ask_for_action
      dispatch_action_manager(answer)
    end
  end

  def ask_for_action
    puts ""
    puts "What do you want to do?"
    answer = gets.chomp.to_i
  end

  private

  def dispatch_action_manager(answer)
    case answer
    when 1 then @flowers_controller.list
    when 2 then @flowers_controller.add
    when 3 then @bouquets_controller.list
    when 4 then @bouquets_controller.add
    when 5 then @orders_controller.list_undelivered_orders
    when 6 then @orders_controller.add
    when 7 then stop
    else
      puts "Please press 1, 2, 3, 4, 5, 6 or 7"
    end
  end

  def stop
    @running = false
  end

  def display_tasks
    puts ""
    puts "1 - List of all the flowers"
    puts "2 - Add a new flower"
    puts "3 - List all bouquets"
    puts "4 - Add bouquet"
    puts "5 - List all undelivered orders"
    puts "6 - Add new order"
    puts "7 - Stop and exit the program"
    puts "............................."
  end
end
