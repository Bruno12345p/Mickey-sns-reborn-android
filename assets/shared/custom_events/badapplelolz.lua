function onEvent(name, value1, value2)
	if name == 'badapplelolz' and value1 == 'a' then
		makeLuaSprite('blackbg', '', -500, -300)
		makeGraphic('blackbg',5000,5000,'000000')
		addLuaSprite('blackbg', false)
	end
	if name == 'badapplelolz' and value1 == 'b' then
		removeLuaSprite('blackbg')
    end
end