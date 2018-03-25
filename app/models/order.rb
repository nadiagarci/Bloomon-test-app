class Order
  attr_accessor :id, :flower, :bouquet, :specification
  def initialize(attributes = {})
    @id = attributes[:id]
    @flower = attributes [:flower]
    @bouquet = attributes [:bouquet]
    @specification = attributes[:specification]
  end

  def delivered?
    @delivered = true
  end

  def deliver!
      # @marked = attributes [:marked] || false
  end

  def flower
    @flower
  end

    def bouquet
    @bouquet
  end
end
