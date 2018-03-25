class Order
  attr_accessor :id, :flower, :bouquet, :specification
  def initialize(attributes = {})
    @id = attributes[:id]
    @flower = attributes [:flower]
    @bouquet = attributes [:bouquet]
    @specification = attributes[:specification]
  end
end
