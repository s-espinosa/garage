require 'minitest/autorun'
require 'minitest/pride'
require './lib/car'

class CarTest < Minitest::Test
  def test_it_exists
    car = Car.new(2015, "Dodge", "Challenger")

    assert_instance_of Car, car
  end

  def test_it_has_attributes
    car = Car.new(2015, "Dodge", "Challenger")

    assert_equal 2015, car.year
    assert_equal "Dodge", car.make
    assert_equal "Challenger", car.model
    assert_equal "Black", car.color
  end

  def test_car_can_be_painted
    car = Car.new(2015, "Dodge", "Challenger")
    assert_equal "Black", car.color
    car.paint_car("White")
    assert_equal "White", car.color
  end
end
