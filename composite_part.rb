class CompositePart < Part
  include PartValidator

  attr_accessor :components

  def initialize(name:, components:)
    validate_parts!(components)
    super(name: name)
    @components = components
  end
end