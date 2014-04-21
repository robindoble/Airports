require 'airport'

describe Airport do 

let (:airport) {Airport.new}
let (:plane) {double :plane}


	it 'has can planes' do
		expect(airport).to have_planes
	end

	it 'can land more than one plane' do
		airport.land(plane)
		expect(airport.plane_count).to eq(2)
	end

	

	
end
