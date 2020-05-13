require 'docking_station'
require 'bike'

describe DockingStation do
  describe 'release_bike' do
    it 'gets a bike a expect to be working' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike.working?).to eq(true)
    end

    it 'returns an error message if docking station empty' do
      expect { subject.release_bike}.to raise_error("this docking station is empty")
    end
  end

  describe 'dock' do
    docking_station = DockingStation.new
    it 'takes a bike and allows access to it' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bikes).to eq bike
    end

    it 'returns an error message if docking station is full' do
      bike = Bike.new
      20.times {subject.dock(bike)}
      expect { subject}.to raise_error("this docking station is full")
    end
  end
end
