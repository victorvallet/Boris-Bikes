require 'docking_station'
require 'bike'

describe DockingStation do
  describe 'release_bike' do
    docking_station = DockingStation.new
    it 'gets a bike a expect to be working' do
      bike = Bike.new
      docking_station.dock(bike)
      expect(docking_station.release_bike.working?).to eq(true) 
    end
    it 'returns an error message if docking station empty' do
      expect { docking_station.release_bike}.to raise_error("this docking station is empty")
    end
  end

  describe 'dock' do
    docking_station = DockingStation.new
    it 'takes a bike and allows access to it' do
      bike = Bike.new
      docking_station.dock(bike)
      expect(docking_station.bike).to eq bike
    end
  end
end
