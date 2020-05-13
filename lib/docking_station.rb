require_relative 'bike'
class DockingStation
  #attr_reader :bikes
  def bikes
    @bikes.last
  end

  def initialize
    @bikes = []
  end

  def release_bike
    if @bikes.count == 0
      fail "this docking station is empty"
    end
    bike = Bike.new
  end

  def dock(bike)
    if @bikes.count >= 19
      p "It failed"
      fail "this docking station is full"
    end
    @bikes << bike
    p "The current number of bikes is: " + @bikes.count.to_s
  end
end
