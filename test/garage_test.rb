require 'minitest/autorun'
require 'minitest/pride'
require './lib/car'
require './lib/garage'
require "pry"

class GarageTest < Minitest::Test

  def setup
    @garage = Garage.new
    @car_1 = Car.new(2015, "Dodge", "Challenger")
    @car_2 = Car.new(2015, "Dodge", "Charger")
    @car_3 = Car.new(1999, "Toyota", "Camry")
    @car_4 = Car.new(2005, "Honda", "Civic")
  end

  def test_garage_exists
    assert_instance_of Garage, @garage
  end

  def test_cars_can_be_added_to_lot
    @garage.add_car(@car_1)
    @garage.add_car(@car_2)
    assert_equal [@car_1, @car_2], @garage.lot
  end

  def test_amount_of_cars_in_lot
    @garage.add_car(@car_1)
    @garage.add_car(@car_2)
    @garage.add_car(@car_3)
    assert_equal 3, @garage.total_cars
  end

  def test_count_of_cars_by_make
    @garage.add_car(@car_1)
    @garage.add_car(@car_2)
    @garage.add_car(@car_3)
    assert_equal 2, @garage.total_cars_by_make("Dodge")
  end

  def test_all_cars_can_be_painted_one_color
    @garage.add_car(@car_1)
    @garage.add_car(@car_2)
    @garage.add_car(@car_3)
    @garage.paint_all_cars_one_color("Red")
    assert_equal "Red", @car_1.color
    assert_equal "Red", @car_2.color
    assert_equal "Red", @car_3.color
  end

  def test_can_paint_cars_by_newer_modles
    @garage.add_car(@car_1)
    @garage.add_car(@car_2)
    @garage.add_car(@car_3)
    @garage.add_car(@car_4)
    @garage.paint_cars_by_newer_modles(2013, "Grey")
    assert_equal "Black", @car_1.color
    assert_equal "Black", @car_2.color
    assert_equal "Grey", @car_4.color
    assert_equal "Grey", @car_3.color
  end

end
