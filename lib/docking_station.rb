
class DockingStation
  attr_reader :docked_bike
  def dock_bike(bike)
    @docked_bike = bike
  end

  def release_bike
    Bike.new
  end
end
