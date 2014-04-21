require 'plane'

describe Plane do 
	
let (:plane) {Plane.new}

	it 'is flying when created' do 
		expect(plane.flying?).to be_true
	end

	it 'can land, so no longer flying' do
		plane.land
		expect(plane.flying?).to be_false
	end


end