require_relative "../views/flowers_view"
require_relative "../models/flower"
# require_relative "../repositories/flower_repository"

# flower_repository = [{id: 1,name: "Margherita",price: 8},
# {id: 2,name: "Capricciosa",price: 11}]



class FlowersController
  def initialize(flower_repository)
    @flower_repository = flower_repository
    @view = FlowersView.new
  end

  def list
    flowers = @flower_repository.all
    @view.display(flowers)
  end

  def add
    name = @view.ask_user_for_flower
    flower = Flower.new(name: name)
    @flower_repository.add(flower)
  end
end

# var = flowersController.new(flower_repository)
# var.list

# List all flowers available in the restaurant
# Add a new flower
