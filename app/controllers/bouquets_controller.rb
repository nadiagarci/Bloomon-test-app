require_relative "../views/bouquets_view"
require_relative "../models/bouquet"

class BouquetsController
  def initialize(bouquet_repository)
    @bouquet_repository = bouquet_repository
    @view = BouquetsView.new
  end

  def list
    bouquets = @bouquet_repository.all
    @view.display(bouquets)
  end

  def add
    specification = @view.ask_bouquet_specification
    bouquet = Bouquet.new(specification: specification)
    @bouquet_repository.add(bouquet)
  end
end
