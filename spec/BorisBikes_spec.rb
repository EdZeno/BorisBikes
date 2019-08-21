require 'borisbikes'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  it 'releases working bikes' do
    bike = subject.release_bike
    expect(bike).to be_working
  end
end

describe DockingStation do
  it 'docks something' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
end
end

describe DockingStation do
  it {is_expected.to respond_to(:bike)}
end
