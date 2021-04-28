
class DockingStation
  attr_reader :docked_bike
  def dock_bike(bike)
    @docked_bike = bike
  end

  def release_bike
    unless @docked_bike
      fail "No bikes available"
    end
    @docked_bike
  end
end
