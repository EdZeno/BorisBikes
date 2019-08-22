require_relative 'bike'

class DockingStation
  attr_reader :bike

  def release_bike
    fail 'No bikes available' if @bike == nil
    @bike
  end

  def dock(bike)
    fail 'No space' if @bike != nil
    @bike = bike
  end
end
