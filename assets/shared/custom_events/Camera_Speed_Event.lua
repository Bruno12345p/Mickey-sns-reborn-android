function onEvent(n,v1)
    if n == 'Camera_Speed_Event' then
	    if v1 == 'act' then
        setProperty('cameraSpeed', 6.0); 
		elseif v1 == 'des' then
		setProperty('cameraSpeed', 1.5); 
		end
	end	
end