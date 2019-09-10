class Car
  attr_reader :year, :make, :model, :color

  def initialize(year, make, model, color = "Black")
    @year = year
    @make = make
    @model = model
    @color = color
  end

    def paint_car(color_desired)
      @color = color_desired
    end
end
