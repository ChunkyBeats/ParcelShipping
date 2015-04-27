class Parcels
  define_method(:initialize) do | height, length, width, weight |
   @height = height
   @length = length
   @width = width
   @weight = weight
  end

  define_method(:specs) do
    @specs = [@height, @length, @width, @weight]
  end

  define_method(:volume) do
    @volume = @height * @length * @width
  end

  define_method(:cost_to_ship) do
    @cost_to_ship = (@height * @length * @width)./(10).+(@weight)
  end

end
