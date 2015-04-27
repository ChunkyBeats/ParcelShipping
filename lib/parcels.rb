class Parcels
  define_method(:initialize) do | height, length, width, weight, speed, distance |
   @height = height
   @length = length
   @width = width
   @weight = weight
   @speed = speed
   @distance = distance
  end

  define_method(:specs) do
    @specs = [@height, @length, @width, @weight, @speed, @distance]
  end

  define_method(:volume) do
    @volume = @height * @length * @width
  end

  define_method(:cost_to_ship) do
    if @speed == "next day"
      speed_number = 3
    elsif @speed == "two day"
      speed_number = 2
    elsif @speed == "one week"
      speed_number = 1
    end

    if @distance == "domestic"
      distance_number = 1
    elsif @distance == "international"
      distance_number = 2
    end

    @cost_to_ship = ((@height * @length * @width)./(10).+(@weight)) * speed_number * distance_number
  end

end
