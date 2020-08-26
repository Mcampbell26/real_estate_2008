class House
  attr_reader :price, :address, :rooms

  def initialize(price, address)
    @price = price
    @address = address
    @rooms = []
  end

  def add_room(room)
    @rooms << room
  end

  def above_market_average?
    if price > "$500000"
      true
    else
      false
    end
  end

  def rooms_from_category(type)
    same_type_room = []
    @rooms.each do |room|
      if room.category == type
        same_type_room << room
      end
    end
    same_type_room
  end
end
