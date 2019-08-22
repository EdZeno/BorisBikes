require 'boris_bikes'

describe DockingStation do
  it { is_expected.to respond_to :bike }

  it 'docks something' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  it { is_expected.to respond_to :release_bike }

  it 'releases working bikes' do
    subject.dock(Bike.new)
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it 'stores a docked bike' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end

  it 'throws an error if there is no bike in the docking station' do
    expect { subject.release_bike }.to raise_error 'No bikes available'
  end
end
