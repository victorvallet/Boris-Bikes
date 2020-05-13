require_relative 'bike'
class DockingStation
  attr_reader :bike

  def release_bike
    unless (bike.nil? == false)
      raise "this docking station is empty"
    end
    bike = Bike.new

  end

  def dock(bike)
    @bike = bike
  end
end
