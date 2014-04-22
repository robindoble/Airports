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

	it 'can take-off, so no longer flying' do
		plane.land
		plane.take_off
		expect(plane.flying?).to be_true
	end


end