require_relative 'bike'

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    fail 'No bikes available' if @bikes.count == 0
    @bikes.pop
  end

  def dock(bike)
    fail 'No space' if @bikes.count == 20
    @bikes << bike
  end
end
