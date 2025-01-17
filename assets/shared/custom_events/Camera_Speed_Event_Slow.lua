function onEvent(n,v1)
    if n == 'Camera_Speed_Event_Slow' then
	    if v1 == 'act' then
        setProperty('cameraSpeed', 0.5); 
		elseif v1 == 'des' then
		setProperty('cameraSpeed', 1.0); 
		end
	end	
end