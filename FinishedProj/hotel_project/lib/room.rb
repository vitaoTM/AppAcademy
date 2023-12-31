class Room
  def initialize(capacity)
    @capacity = capacity
    @occupants = Array.new()
  end

  def capacity
    @capacity
  end

  def occupants
    @occupants
  end

  def full?
    if occupants.length < capacity
      return false
    end
    if occupants.length == capacity
      return true
    end
  end

  def available_space
    @capacity - @occupants.length
  end

  def add_occupant(name)
    if !self.full?
      @occupants << name
      return true
    else
      return false
    end
  end
end
