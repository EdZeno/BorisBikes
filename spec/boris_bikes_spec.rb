require 'boris_bikes'

describe DockingStation do
  it { is_expected.to respond_to :bikes }

  it { is_expected.to respond_to :release_bike }

  it 'releases working bikes' do
    subject.dock(Bike.new)
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it { is_expected.to respond_to :dock }

  it 'stores a docked bike' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.release_bike).to eq bike
  end

  it 'throws an error if there is no bike in the docking station' do
    expect { subject.release_bike }.to raise_error 'No bikes available'
  end

  it 'throws an error if the docking station has a bike' do
    20.times { subject.dock(Bike.new) }
    expect { subject.dock(Bike.new) }.to raise_error 'No space'
  end

  it '#release_bike removes bikes from the dock' do
    20.times { subject.dock(Bike.new) }
    20.times { subject.release_bike }
    expect { subject.release_bike }.to raise_error 'No bikes available'
  end
end
