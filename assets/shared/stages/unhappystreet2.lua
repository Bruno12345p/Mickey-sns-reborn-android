function onCreate()

	makeLuaSprite('street','street1',-532,-416)
	scaleObject('street',1.5,1.5)
	makeLuaSprite('street2','street1_back',-532,-416)
	scaleObject('street2',1.5,1.5)
	addLuaSprite('street2', false)
	addLuaSprite('street', false)

	initLuaShader('warp')
	setSpriteShader('street', 'warp')
	setSpriteShader('street2', 'warp')

	makeLuaSprite('molkshader', 'molkshader', 0, -10)
	setScrollFactor('molkshader', 0, 0)
        setObjectCamera("molkshader","other")
	scaleObject('molkshader', 0.5, 0.6)
	setProperty("molkshader.alpha", 0.4)

	addLuaSprite('molkshader', true)

	makeLuaSprite('gorixgorix', 'gorixgorix', 0, -10)
	setScrollFactor('gorixgorix', 0.0, 0.0);
        setObjectCamera("gorixgorix","other")
	scaleObject('gorixgorix', 0.5, 0.6)

	addLuaSprite('gorixgorix', true)
	
end

function onUpdate()
	setShaderFloat("street", "iTime", os.clock())
	setShaderFloat("street2", "iTime", getShaderFloat("street", "iTime"))
end
