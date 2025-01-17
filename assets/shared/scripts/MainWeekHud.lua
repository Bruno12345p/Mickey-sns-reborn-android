function onCreate()
	luaDebugMode = true
	makeLuaSprite("healthBarNeedle","hud/MainWeek/healthBar",0,0)
	setObjectCamera("healthBarNeedle","hud")
	scaleObject("healthBarNeedle",0.45,0.45)
	updateHitbox("healthBarNeedle")
	screenCenter("healthBarNeedle")
	addLuaSprite("healthBarNeedle")
	local piss = (not downscroll) and 1 or -1
	setProperty("healthBarNeedle.y",getProperty("healthBarNeedle.y")+(260*piss))
	makeLuaText("healthpercenttext","Health: 50",getProperty("healthBarNeedle.x")+ (getProperty("healthBarNeedle.width")/2) )
	addLuaText("healthpercenttext")
end
function onCreatePost()
	setProperty("healthBar.alpha",0)
end
function onUpdatePost()
	setProperty("healthBar.alpha",0)
	setProperty("healthBarNeedle.x",getProperty("healthBar.x")-153.5)
	setProperty("healthBarNeedle.y",getProperty("healthBar.y")-137.3)
	setProperty("healthpercenttext.x",getProperty("healthBarNeedle.x")+ (getProperty("healthBarNeedle.width")/2) )
	setProperty("healthpercenttext.x",getProperty("healthpercenttext.x")-(getProperty("healthpercenttext.width")/2))
	setProperty("healthpercenttext.y",getProperty("healthBarNeedle.y")+110)
	local thing = getHealth()
	if thing < 0 then thing = 0 elseif thing > 2 then thing = 2 end
	setTextString("healthpercenttext","Health: " .. math.floor((thing * 50) * 10)/10)
end