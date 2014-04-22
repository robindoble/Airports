class Airport

# def initialize 
# 	@planes = []
# end

DEFAULT_CAP = 10


def initialize (options={})
	@capacity = options.fetch(:capacity,capacity)
end

def capacity
	@capacity ||= DEFAULT_CAP
end

def planes
	@planes ||= [] 
end

def has_planes?
	!planes.any?
end

def land(plane)
	# raise "sorry, you cant land in stormy weather" if is_stormy?
	return "sorry, airport is at capacity" if is_full?
	planes << plane
end

def plane_count
	planes.count
end

def take_off(plane)
	planes.delete(plane)
end

def is_full?
plane_count == @capacity
end

end


# def is_stormy?
# 	true
# end


# def land_plane_test
# 	begin
# 		airport.land(plane)
# 	rescue
# 		retry
		


# until plane.flying? is false 