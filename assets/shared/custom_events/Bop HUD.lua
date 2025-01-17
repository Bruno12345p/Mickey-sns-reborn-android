function onEvent(name, value1, value2)
	if name == 'Bop HUD' then
		if tonumber(value1) == 0 then
			setProperty('camHUD.angle', 1*5)
			doTweenAngle('hudTween', 'camHUD', 0, 0.5, 'backOut')
              	  	setProperty('camGame.angle', 1*5)
			doTweenAngle('gameTween', 'camGame', 0, 0.5, 'backOut')
		else
			setProperty('camHUD.angle', 1*-5)
			doTweenAngle('hudTween', 'camHUD', 0, 0.5, 'backOut')
       	   	   	setProperty('camGame.angle', 1*-5)
			doTweenAngle('gameTween', 'camGame', 0, 0.5, 'backOut')
		end
	end
end

--[[function onBeatHit()
	if curBeat % 2 == 0 then
		setProperty('camHUD.angle', v1*5)
		doTweenAngle('hudTween', 'camHUD', 0, 0.5, 'backOut')
                setProperty('camGame.angle', v1*5)
		doTweenAngle('gameTween', 'camGame', 0, 0.5, 'backOut')
	else
		setProperty('camHUD.angle', v1*-5)
		doTweenAngle('hudTween', 'camHUD', 0, 0.5, 'backOut')
                setProperty('camGame.angle', v1*-5)
		doTweenAngle('gameTween', 'camGame', 0, 0.5, 'backOut')
	end
end]]