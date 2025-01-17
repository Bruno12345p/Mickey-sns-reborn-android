function onEvent(n)
	if n == 'RedHaze' then
        if isOn then
            isOn = false
            cancelTween("overlayTween")
            doTweenAlpha('overlayTween', 'overlayFX', 0, 1)
        else
            isOn = true
            cancelTween("overlayTween")
            doTweenAlpha('overlayTween', 'overlayFX', 1, 0.3)
        end
	end
end

local isOn = false