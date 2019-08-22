require_relative 'bike'

class DockingStation
  def initialize
    @bikes = []
  end

  def release_bike
    raise_if_no_bikes_available
    @bikes.pop
  end

  def dock(bike)
    raise_if_no_space
    @bikes << bike
  end

  private

  def raise_if_no_bikes_available
    fail 'No bikes available' if no_bikes_available?
  end

  def no_bikes_available?
    @bikes.count == 0
  end

  def raise_if_no_space
    fail 'No space' if dock_full?
  end

  def dock_full?
    @bikes.count == 20
  end
end
