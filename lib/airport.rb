class Airport

# def initialize 
# 	@planes = []
# end

def planes
	@planes ||= [] 
end

def has_planes?
	!planes.any?
end

def land(plane)
	planes << plane
end

def plane_count
	planes.count
end

def take_off(plane)
	planes.delete(plane)
end


end