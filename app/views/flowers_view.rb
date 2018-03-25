# flowers = [{id: 1,name: "Margherita",price: 8},
# {id: 2,name: "Capricciosa",price: 11}]

class FlowersView
  def display(flowers)
     puts "This are all the flowers available:"
    flowers.each do |flower|
      puts "#{flower.id} - #{flower.name}"
    end

  end

  def ask_user_for_flower
    puts "What flower you want to add?"
    return gets.chomp
  end

end

# menu_1 = View.new
# menu_1.display(flowers)
