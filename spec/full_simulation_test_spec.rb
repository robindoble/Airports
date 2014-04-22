require 'airport'
require 'plane'

describe Airport do 


let (:Makersairbase) 	{Airport.new(capacity: 6)}

let (:Betsy) 					{Plane.new}
let (:Flying_ace) 		{Plane.new}
let (:Tupac_attack) 	{Plane.new}
let (:Air_force_chum) {Plane.new}
let (:Futurama) 			{Plane.new}
let (:Sweet_mary) 		{Plane.new}


	# it "can try to land 6 planes" do
	# fleet = [:Betsy,:Flying_ace,:Tupac_attack,:Air_force_chum,:Futurama,:Sweet_mary]
	
	# fleet.each do |plane| 
	# 	loop do 
	# 		Makersairbase.land(plane)
	# 		plane.@flying ? retry : break
	# 	end
	# # end
	# expect(Makersairbase.plane_count).to eq(6)
	# end
	


	# airport.land(Betsy)
	# airport.land(Betsy)
	# airport.land(Betsy)
	# airport.land(Betsy)
	# airport.land(Betsy)


	
end
