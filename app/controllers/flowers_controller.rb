require_relative "../views/flowers_view"
require_relative "../models/flower"
# require_relative "../repositories/flower_repository"


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


