class House
  attr_reader :price
              :address
              :rooms

  def initialize(price, address)
    @price = price
    @address = address
    @rooms = []
    @market_average = 500000
  end

  def price
    @price.delete_prefix("$").to_i
  end

  def address
    @address
  end

  def rooms
    @rooms
  end

  def add_room(room)
    @rooms << room
  end

  def above_market_average?
    return true if price > @market_average
    false
  end

  def rooms_from_category(category)
    @rooms.select do |room|
      room.category == category
    end
  end

  def area
    @rooms.map do |room|
      room.lengths * room.widths.to_i
    end
  end
end