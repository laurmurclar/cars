module PartValidator
  def validate_parts!(parts)
    return if parts.all? { |p| p.is_a?(Part) }
    raise "Invalid Parts"
  end
end