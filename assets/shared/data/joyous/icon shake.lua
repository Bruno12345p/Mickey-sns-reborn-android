A = 0
B = 0
function onUpdate(elapsed)
setProperty('iconP2.angle',math.random(A,B))
end
function onStepHit() 
    if curStep == 64 then 
    A = -2
    B = 2
    elseif curStep == 768 then 
    A = -5.5
    B = 5.5
    end
end