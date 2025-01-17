function onEvent(name, value1, value2)
	if name == 'invert' and value1 == 'a' then
		makeLuaSprite('whitebg', '', -1000, -300)
		makeGraphic('whitebg',5000,5000,'000000')
		addLuaSprite('whitebg', false)
		setProperty('boyfriend.color', 'FFFFFF')
		setProperty('dad.color', 'FFFFFF')
		setProperty('gf.color', 'FFFFFF')
	end
	if name == 'invert' and value1 == 'b' then
		removeLuaSprite('whitebg')
		setProperty('boyfriend.color', getColorFromHex('000000'))
		setProperty('dad.color', getColorFromHex('000000'))
		setProperty('gf.color', getColorFromHex('000000'))
	end
end