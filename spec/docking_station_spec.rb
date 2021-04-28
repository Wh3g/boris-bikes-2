require "docking_station"
describe DockingStation do
  it "responds to dock_bike" do
    bike = Bike.new
    expect(subject.dock_bike(bike)).to eq bike
  end
  it "returns docked bikes" do
    bike = Bike.new
    subject.dock_bike(bike)
    expect(subject.docked_bike).to eq bike
  end
  describe "#release_bike" do
    it "releases a bike" do
      bike = Bike.new
      subject.dock_bike(bike)
      expect(subject.release_bike).to eq bike
    end
    it "Errors when docked_bike is empty" do
      expect {subject.release_bike}.to raise_error "No bikes available"
    end
  end
end

