class Cell

  attr_reader :coordinate,
              :ship

  def initialize(coordinate, ship = nil)
    @coordinate = coordinate
    @ship = ship
    @empty = true
    @shots_fired = 0
  end

  def empty?
    @empty
  end

  def place_ship(ship)
    @empty = false
  end

  def fire_upon
   @shots_fired += 1
  end

  def fired_upon?
    if @shots_fired > 0
      true
    else
      false
    end
  end

end
