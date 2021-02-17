class Car
  include PartValidator

  attr_accessor :make, :model, :parts

  def initialize(make:, model:, parts:)
    validate_parts!(parts)
    @make = make
    @model = model
    @parts = parts
  end
end