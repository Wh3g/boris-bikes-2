require "docking_station"
describe DockingStation do
  it "responds to release bike" do
    dock = DockingStation.new
    expect(dock).to respond_to(:release_bike)
  end
  it "responds to dock_bike" do
    bike = Bike.new
    expect(subject.dock_bike(bike)).to eq bike
  end
  it "returns docked bikes" do
    bike = Bike.new
    subject.dock_bike(bike)
    expect(subject.docked_bike).to eq bike
  end
end

