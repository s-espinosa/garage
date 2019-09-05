class Garage

  attr_reader :lot

  def initialize
    @lot = []
  end

  def add_car(car)
    @lot << car
  end

  def total_cars
    @lot.count
  end

  def total_cars_by_make(make)
    @lot.find_all {|car| car.make == make}.count
  end

  def paint_all_cars_one_color(color_desired)
    painted_cars = []
    @lot.each do |car|
      painted_cars <<  car.paint_car(color_desired)
    end
  end

  def paint_cars_by_newer_modles(year, color)
    painted_cars = []
    # binding.pry
    @lot.each do |car|
      if car.year >= year
        painted_cars <<  car.paint_car(color)
      end
    end
  end
end
