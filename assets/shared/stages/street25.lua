--Mousky was here

function onCreate()

	makeLuaSprite('bg', 'street25_back', -532, -416)
	setObjectOrder('bg', 0)
	scaleObject('bg', 1.5, 1.5)
	addLuaSprite('bg', true)

	makeLuaSprite('bg', 'street25', -532, -416)
	setObjectOrder('bg', 0)
	scaleObject('bg', 1.5, 1.5)
	addLuaSprite('bg', true)

	makeLuaSprite('molkshader', 'molkshader', 0, -10);
	setLuaSpriteScrollFactor('molkshader', 0.0, 0.0);
        setObjectCamera("molkshader","other")
	scaleObject('molkshader', 0.5, 0.6);
	setProperty("molkshader.alpha", 0.6)

	addLuaSprite('stageback', false);
	addLuaSprite('molkshader', true);

	makeLuaSprite('gorixgorix', 'gorixgorix', 0, -10);
	setLuaSpriteScrollFactor('gorixgorix', 0.0, 0.0);
        setObjectCamera("gorixgorix","other")
	scaleObject('gorixgorix', 0.5, 0.6);

	addLuaSprite('stageback', false);
	addLuaSprite('gorixgorix', true);
	
end