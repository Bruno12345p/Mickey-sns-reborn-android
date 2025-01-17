local stageImagesFolder = "stages/bbs/"
local bgPositionX = -400
local bgPositionY = -900
local bgScale = 0.75

function onCreate()
  luaDebugMode = true
	makeLuaSprite("SKY",stageImagesFolder.."SKY",bgPositionX,bgPositionY)
	setScrollFactor("SKY",0.3,0.3)
	scaleObject("SKY",bgScale,bgScale)
	addLuaSprite("SKY")

	makeLuaSprite("BG",stageImagesFolder.."BG01",bgPositionX,bgPositionY)
	scaleObject("BG",bgScale,bgScale)
	
	makeLuaSprite("BG2",stageImagesFolder.."BG02",bgPositionX,bgPositionY)
	scaleObject("BG2",bgScale,bgScale)
	
	addLuaSprite("BG")
	setProperty("BG2.alpha",0)
	addLuaSprite("BG2")
end

local minniedead = false
local stepToChangeBG = 543 -- change the number to the step that minnie gets dead
function onStepHit()
    if curStep == stepToChangeBG and not minniedead then
        minniedead = true
        setProperty("BG2.alpha", 1)

        -- Add "minniedead" character where GF is
        removeLuaSprite("gf", true) -- Remove the current GF sprite
        triggerEvent("Change Character", "gf", "minniedead") -- Load "minniedead" JSON
    end
end