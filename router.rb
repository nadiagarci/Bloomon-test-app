class Router
  def initialize(flowers_controller, bouquets_controller)
    @flowers_controller = flowers_controller
    @bouquets_controller = bouquets_controller
    @running = true
  end

  def run
    puts ""
    puts ""
    puts "---------------------------------------"
    puts "   Welcome to BLOOMON test app! ✿ ✿ ✿  "
    puts "---------------------------------------"
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
    when 5 then @orders_controller.list
    when 6 then stop
    else
      puts "Please press 1, 2, 3, 4, 5, 6 or 7"
    end
  end

  def stop
    @running = false
  end

  def display_tasks
    puts ""
    puts "1 - List all the flowers"
    puts "2 - Add a new flower"
    puts "3 - List all the bouquet specifications"
    puts "4 - Add a bouquet specification"
    puts "5 - List all undelivered orders (output bouquet specs)"
    puts "6 - Stop and exit the program"
    puts ""
    puts "✿ ✿ ✿ ✿ ✿ ✿ ✿ ✿ ✿ ✿ ✿ ✿ ✿ ✿ ✿ ✿ ✿ ✿ ✿ ✿ ✿ ✿ ✿ ✿ ✿ ✿ ✿ "
  end
end
