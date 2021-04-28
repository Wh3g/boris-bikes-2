require "docking_station"
describe DockingStation do
  it "returns docked bikes" do
    bike = Bike.new
    subject.dock_bike(bike)
    expect(subject.docked_bikes).to eq [bike]
  end
  describe "#dock_bike" do
    it "responds to dock_bike" do
      bike = Bike.new
      expect(subject.dock_bike(bike)).to eq [bike]
    end
    it "Errors when docked_bikes are at capacity" do
      DockingStation::DEFAULT_CAPACITY.times { subject.dock_bike(Bike.new)}
      expect {subject.dock_bike(Bike.new)}.to raise_error "Docking station is full"
    end
  end
  describe "#release_bike" do
    it "releases a bike" do
      bike = Bike.new
      subject.dock_bike(bike)
      expect(subject.release_bike).to eq bike
    end
    it "Errors when docked_bikes are empty" do
      expect {subject.release_bike}.to raise_error "No bikes available"
    end
  end
end

