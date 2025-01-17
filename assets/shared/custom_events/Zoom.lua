function onEvent(name,value1,value2)
	if name == 'Zoom' then
		doTweenZoom('camera', 'camGame', tonumber(value1), tonumber(value2), 'quartIn');
		--debugPrint('Event triggered: ', name, duration, targetAlpha);
	end
end
