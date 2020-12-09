class House
attr_reader :price, :address, :rooms

  def initialize(price, address)
    @price = price
    @address = address
    @rooms = []
  end

  def add_room(room)
    rooms.push(room)
  end

  def price_to_i
    price.delete! "$"
    price.to_i
  end

  def above_market_average?
    if price_to_i >= 500000
      true
    else
      false
    end
  end

  def rooms_from_category(category)
    category_rooms = []
    rooms.find_all do |room|
      if room.category == category
        category_rooms << room
      end
    end
    category_rooms
  end

  def area
    house_area = 0
    rooms.each do |room|
      house_area += room.area
    end
    house_area
  end


  def details
    detail = Hash.new
    detail["price"] = price_to_i
    detail["address"] = address
    p detail
  end
end
