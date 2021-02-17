class CompositePart < Part
  include PartValidator

  attr_accessor :components

  def initialize(name:, components:)
    validate_parts!(components)
    super(name: name)
    @components = components
  end

  def to_s
    "#{@name} (#{@components.map(&:to_s).join(", ")})"
  end
end