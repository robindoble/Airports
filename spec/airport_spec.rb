require 'airport'

describe Airport do 

let (:airport) {Airport.new(capacity: 6)}
let (:plane) {double :plane}


	it 'has can planes' do
		expect(airport).to have_planes
	end

	it 'can land more than one plane' do
		# airport.stub(:is_stormy?).and_return(false)
		2.times {airport.land(plane)}
		expect(airport.plane_count).to eq(2)
	end

	it 'planes can take off' do
		airport.land(plane)
		airport.take_off(plane)
		expect(airport.plane_count).to be(0)
	end

	it 'is instantiated with a capacity' do
		airport.capacity
	end

	it 'default capcity can be set on initialization' do
		airport_instance = Airport.new(capacity: 20)
	end

	it 'knows when it has reached capacity' do 
		6.times {airport.land(plane)}
		expect(airport.is_full?).to be_true 
		# expect(airport.land(plane)).to eq("sorry, airport is at capacity") 
	end

end


# it 'planes cant land if weather is stormy' do
# 		airport.is_stormy?
# 		expect{airport.land(plane)}.to raise_error
# 	end
# 	