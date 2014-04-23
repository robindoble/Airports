require 'airport'
require 'plane'

describe Airport do

let (:airport) {Airport.new(capacity: 6)}
plane = Plane.new


	it 'can have planes' do
		expect(airport).to have_planes
	end

	it 'can land more than one plane' do
		airport.stub(:is_stormy?).and_return(false)
		2.times {airport.land(plane)}
		expect(airport.plane_count).to eq(2)
	end

	it 'planes can take off' do
		airport.stub(:is_stormy?).and_return(false)
		airport.land(plane)
		airport.take_off(plane)
		expect(airport.plane_count).to be(0)
	end

	it 'is instantiated with a fixed capacity' do
		airport.capacity
	end

	it 'default capcity can be set on instantiation' do
		airport_instance = Airport.new(capacity: 20)
	end

	it 'knows when it has reached capacity' do
		airport.stub(:is_stormy?).and_return(false)
		6.times {airport.land(plane)}
		expect(airport.is_full?).to be_true
		expect(airport.land(plane)).to eq("sorry, airport is at capacity")
	end

	it 'landing a plane means that plane is now not flying' do
		airport.stub(:is_stormy?).and_return(false)
		airport.land(plane)
		expect(plane.flying?).to be_false
	end

	it 'a plane taking-off means it is now flying' do
		airport.stub(:is_stormy?).and_return(false)
		airport.take_off(plane)
		expect(plane.flying?).to be_true
	end

	it 'weather can be stormy' do
		airport.is_stormy?
	end

	it 'planes cant land if its stormy' do
		airport.stub(:is_stormy?).and_return(true)
		expect(airport.land(plane)).to eq("sorry, no landing in stormy weather")
		expect(airport.plane_count).to be(0)
	end

	it 'planes cant take off in stormy weather either' do
		airport.stub(:is_stormy?).and_return(false)
		airport.land(plane)
		airport.stub(:is_stormy?).and_return(true)
		expect(airport.take_off(plane)).to eq("sorry, no taking-off in stormy weather")
		expect(airport.plane_count).to be(1)
	end

end
