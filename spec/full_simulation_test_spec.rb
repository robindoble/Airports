require 'airport'
require 'plane'

describe Airport do 


let (:makers_airbase) 	{Airport.new(capacity: 6)}

let (:betsy) 					{Plane.new}
let (:flying_ace) 		{Plane.new}
let (:tupac_attack) 	{Plane.new}
let (:air_force_chum) {Plane.new}
let (:futurama) 			{Plane.new}
let (:sweet_mary) 		{Plane.new}


		it "can land 6 planes, know its full, and depart them again" do
			fleet = [betsy,flying_ace,tupac_attack,air_force_chum,futurama,sweet_mary]

			fleet.each do |plane| 
				loop do 
					makers_airbase.land(plane)
					break if !plane.flying? 
				end
			end

			expect(makers_airbase.plane_count).to eq(6)
			expect(makers_airbase.is_full?).to be_true

			fleet.each do |plane| 
				loop do 
					makers_airbase.take_off(plane)
					break if plane.flying? 
				end
			end
		
		end

end
