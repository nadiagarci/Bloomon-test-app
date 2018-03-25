class Bouquet
  attr_reader :specification
  attr_accessor :id
  def initialize(attributes = {})
    @id = attributes[:id]
    @specification = attributes[:specification]
  end
end
