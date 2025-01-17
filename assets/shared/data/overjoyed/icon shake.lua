A = -6
B = 6
function onUpdate(elapsed)
setProperty('iconP2.angle',math.random(A,B))
if getProperty('health') >= 1.8 then 
    A = -9.4
    B = 9.4
  end
end
function onBeatHit() 
    scaleObject('iconP2',1,1)
end
local dadShakeintensity = 0.01
local dadShakeDuration = 0.04

function opponentNoteHit()
          cameraShake('camGame',dadShakeintensity,dadShakeDuration)
          cameraShake('camHUD',dadShakeintensity,dadShakeDuration)
end