-- A physics library by apfrog

local physap = {}

physap.collision =
function(startpoint:vec2, endpoint:vec2, vc:VideoChip, cubeheight:number)
	grounded = false
	startpos = vec2(startpoint.X, math.clamp(startpoint.Y, 0, endpoint.Y - cubeheight))
	endpoint = vec2(endpoint.X, math.clamp(endpoint.Y, 0, vc.Height-1))
	if endpoint.Y == vc.Height-1 then
		grounded = true
	end
	return startpos, endpoint, grounded
end

physap.gravity = -- Returns the updated startpoint, endpoint and acceleration 
function(startpos:vec2, endpoint:vec2, acceleration:number, fallspeed:number, cpu:CPU, grounded:boolean)
	if not grounded then 
		acceleration += cpu.DeltaTime
	else
		acceleration = 0
	end
	startpos += vec2(0, (fallspeed * 9.8 * acceleration))
	endpoint += vec2(0, (fallspeed * 9.8 * acceleration))
	return startpos, endpoint, acceleration -- Assign in the cpu by doing: value, value1, value2 = physap.gravity(values here)
end

return physap

-- TODO:
-- Add border collision to physap.collision
-- Add more functions related to physics overall
-- If possible, simplify the functions and reduce their return values
-- Add ability for objects to collide based on their layer (would work like and index layer) (if cube and cube1 are on the same
-- layers, collide otherwise dont)
-- Add rotation when colliding with other objects