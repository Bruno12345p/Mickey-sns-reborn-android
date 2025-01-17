
local HUD = {'healthBar','iconP1','iconP2','scoreTxt','timeTxt','timeBar','timeBarBG'}
local value
local duration

function onCreatePost()
    value = downscroll and -400 or 400
end

function onEvent(n, v1, v2) 
	if n == 'HUDmove' then
		duration = (v2 == '') and 1 or math.abs(tonumber(v2))
		
        for i, theHUD in pairs(HUD) do
			if v1 == 'yes' then
				doTweenY('HUDTweenY'..theHUD, theHUD, getProperty(theHUD..'.y') + ((i > 4) and -value or value), duration, 'quadInOut')
			elseif v1 == 'no' then
				doTweenY('HUDTweenY'..theHUD, theHUD, getProperty(theHUD..'.y') - ((i > 4) and -value or value), duration, 'quadInOut')
			end
		end
	end
end