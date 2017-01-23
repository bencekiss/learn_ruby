class Temperature
  attr_accessor :fahrenheit, :celsius
  def initialize(temp)

    @fahrenheit = temp[:f]
    @celsius = temp[:c]
    # @celsius ||= 0
    # @key = k
    # @value = v
  end
  def to_fahrenheit
    @fahrenheit ||= (@celsius * 1.8 + 32).round
  end

  def to_celsius
    @celsius ||= ((@fahrenheit - 32) / 1.8).round
  end

  def self.in_fahrenheit(v)
    deg = Temperature.new({f: v})
    deg
  end

  def self.in_celsius(v)
    deg = Temperature.new({c: v})
    deg
  end

end

class Celsius < Temperature
  def initialize(temp)
    @celsius = temp
  end
end
class Fahrenheit < Temperature
  def initialize(temp)
    @fahrenheit = temp
  end
end
