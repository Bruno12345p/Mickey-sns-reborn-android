--Mousky was here

function onCreate()

	makeLuaSprite('bg', 'melancholy', -532, -416)
	setObjectOrder('bg', 0)
	scaleObject('bg', 0.8, 0.8)
	addLuaSprite('bg', true)

	makeLuaSprite('molkshader', 'molkshader', 0, -10);
	setLuaSpriteScrollFactor('molkshader', 0.0, 0.0);
        setObjectCamera("molkshader","other")
	scaleObject('molkshader', 0.5, 0.6);
	setProperty("molkshader.alpha", 0.5)

	addLuaSprite('stageback', false);
	addLuaSprite('molkshader', true);

	-- Clock
	makeAnimatedLuaSprite('Melancholy_Clock_Hands', 'Clock/Melancholy_Clock_Hands', 597, -210);
	setLuaSpriteScrollFactor('other');
	setObjectCamera('other', 'other');
	scaleObject('Melancholy_Clock_Hands', 1, 1);
	addAnimationByPrefix('Melancholy_Clock_Hands', 'loop', 'clock hands', 19, true);
	addLuaSprite('Melancholy_Clock_Hands', false);


end