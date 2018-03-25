class BouquetsView
  def display(bouquets)
    puts "This are all the bouquet specifications:"
    bouquets.each do |bouquet|
      puts "#{bouquet.id} - #{bouquet.specification}"
    end
  end

  def ask_bouquet_specification
    puts "Whats the bouquet specification?"
    return gets.chomp
  end

end
