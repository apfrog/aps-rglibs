-- A VideoChip Library by apfrog
local vcap = {}

-- Dont forget to clear the screen each time you use the 

vcap.errprint =
function(input)
	setFgColor(91)
	print(input)
	resetColors()
end

vcap.midpoint = 
function(vc:any)
	screensize = vec2(vc.Width, vc.Height)
	if screensize == vec2(0,0) then
		vcap.errprint("[VCAP] midpoint() recieved 0,0")
		return vec2(0,0)
	end
	screensize -= vec2(1,1)
	screensize = screensize / vec2(2,2)
	return vec2(math.round(screensize.X), math.round(screensize.Y))
end

vcap.tphasrun = false
vcap.timerprint = 
function(cputime:number, cycle:number, input:string) -- To execute, give function gdt.CPU(number of the cpu), the intervall of execution in seconds and a text input	
end

vcap.DrawScreenBorder = 
function(vc:any, bordercolor:any)
	bottomcorner = vec2(vc.Height - 1, vc.Width - 1)	vc:DrawRect(vec2(0,0),bottomcorner,bordercolor)
end

vcap.spawncube = 
function(vc:VideoChip, startpoint:vec2, width:number, height:number, cubecolor:any, isFill:boolean)
	-- Draws a filled or normal rect depending on the 
	endpoint = vec2(startpoint.X + width, startpoint.Y + height)
	if isFill then
		vc:FillRect(startpoint,endpoint,cubecolor)
	else
		vc:DrawRect(startpoint,endpoint,cubecolor)
	end	
	if endpoint == vc.Height - 1 then
		return true
	end
	return false
end

return vcap

-- TODO:
-- Add more cubes in scene at once,
-- More functions