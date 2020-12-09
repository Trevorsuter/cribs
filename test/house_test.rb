require 'minitest/autorun'
require 'minitest/pride'
require './lib/room'
require './lib/house'

class House_test < MiniTest::Test

  def test_class_exists
    house = House.new("$400000", "123 sugar lane")
    assert_instance_of House, house
  end

  def test_readable_attributes
    house = House.new("$400000", "123 sugar lane")
    assert_equal "$400000", house.price
    assert_equal "123 sugar lane", house.address
  end

  def test_rooms
    house = House.new("$400000", "123 sugar lane")
    assert_equal [], house.rooms
  end

  def test_add_room
    room_1 = Room.new(:bedroom, 10, '13')
    house = House.new("$400000", "123 sugar lane")
    assert_equal rooms = [room_1], house.add_room(room_1)
  end

end
