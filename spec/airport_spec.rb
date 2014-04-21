require 'airport'

describe Airport do 

let (:airport) {Airport.new}
let (:plane) {double :plane}


	it 'has can planes' do
		expect(airport).to have_planes
	end

	it 'can land more than one plane' do
		2.times {airport.land(plane)}
		expect(airport.plane_count).to eq(2)
	end

	it 'planes can take off' do
		airport.land(plane)
		airport.take_off(plane)
		expect(airport.plane_count).to be(0)
	end

	
end
