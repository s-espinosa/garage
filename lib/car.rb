class Car
  attr_reader :year, :make, :model

  def initialize(year, make, model)
    @year = year
    @make = make
    @model = model
  end
end
