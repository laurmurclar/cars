class CompositePart < Part
  attr_accessor :components

  def initialize(name:, components:)
    super(name: name)
    @components = components
  end
end