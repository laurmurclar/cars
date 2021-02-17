class Car
  include PartValidator

  attr_accessor :make, :model, :parts

  def initialize(make:, model:, parts:)
    validate_parts!(parts)
    @make = make
    @model = model
    @parts = parts
  end

  def to_s
    result = "#{@make} #{@model}:"
    @parts.each do |part|
      result << "\n- #{part.to_s}"
    end
    result
  end
end