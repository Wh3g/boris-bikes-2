
class DockingStation
  DEFAULT_CAPACITY = 20
  attr_reader :docked_bikes

  def initialize
    @docked_bikes = []
  end

  def dock_bike(bike)
    if full?
      fail "Docking station is full"
    end
    @docked_bikes << bike
  end

  def release_bike
    if empty?
      fail "No bikes available"
    end
    @docked_bikes.pop
  end

  private
  def full?
    @docked_bikes.count >= DEFAULT_CAPACITY
  end
  
  def empty?
    @docked_bikes.count == 0 
  end
end
