local stageImagesFolder = "stages/"
local bgScale = 0.5

function onCreate()
	makeLuaSprite("main",stageImagesFolder.."whitenoise",-1800,-400)
	scaleObject("main",bgScale,bgScale)
	addLuaSprite("main")
end

function onCreatePost()
	setProperty("boyfriend.alpha",0)
	setProperty("gf.alpha",0)
end