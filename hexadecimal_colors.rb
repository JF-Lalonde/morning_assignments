class Colors

  def initialize(input)
    @input = input
    @decimal_values = []
  end

  def to_hex
      @decimal_values << @input.slice(0..1).hex
      @decimal_values << @input.slice!(2..3).hex
      @decimal_values << @input.slice!(4..5).hex
  end
end

some_color = Colors.new("FF336A")
puts some_color.to_hex.inspect
