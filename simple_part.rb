class SimplePart < Part
  attr_accessor :price
  
  def initialize(name:, price:)
    super(name: name)
    @price = price
  end
end