

local followchare = true;
local del = 0;
local del2 = 0;


function onUpdate()
   if del > 0 then
      del = del - 1
   end
   if del2 > 0 then
      del2 = del2 - 1
   end
    if followchare == true then
        if mustHitSection == false then
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
				doTweenAngle('turn', 'camGame', -1, 0.1, 'linear')
				        cancelTimer('a')
					runTimer('a', 0.05);
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
				doTweenAngle('turn', 'camGame', 1, 0.1, 'linear')
				cancelTimer('a')
					runTimer('a',  0.05);
            end
			    if getProperty('dad.animation.curAnim.name') == 'singUP' then
	doTweenAngle('turn', 'camGame', 0, 0.1, 'linear')
	 cancelTimer('a')
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
	doTweenAngle('turn', 'camGame', 0, 0.1, 'linear')
	 cancelTimer('a')
            end
        elseif followchare == true then
        if mustHitSection == false then
            if getProperty('gf.animation.curAnim.name') == 'singLEFT' then
				doTweenAngle('turn', 'camGame', -1, 0.1, 'linear')
				        cancelTimer('a')
					runTimer('a', 0.05);
            end
            if getProperty('gf.animation.curAnim.name') == 'singRIGHT' then
				doTweenAngle('turn', 'camGame', 1, 0.1, 'linear')
				cancelTimer('a')
					runTimer('a',  0.05);
            end
			    if getProperty('gf.animation.curAnim.name') == 'singUP' then
	doTweenAngle('turn', 'camGame', 0, 0.1, 'linear')
	 cancelTimer('a')
            end
            if getProperty('gf.animation.curAnim.name') == 'singDOWN' then
	doTweenAngle('turn', 'camGame', 0, 0.1, 'linear')
	 cancelTimer('a')
            end
        else
		

            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
				doTweenAngle('turn', 'camGame', -1, 0.1, 'linear')
				    cancelTimer('a')
					runTimer('a', 0.05);
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
				doTweenAngle('turn', 'camGame', 1, 0.1, 'linear')
				    cancelTimer('a')
					runTimer('a', 0.05);
            end
	    if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
	doTweenAngle('turn', 'camGame', 0, 0.1, 'linear')
	 cancelTimer('a')
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
	doTweenAngle('turn', 'camGame', 0, 0.1, 'linear')
	 cancelTimer('a')
            end
        end
      end
    end
end

function onTimerCompleted(tag, loops, loopsleft)
if tag == 'a' then
	doTweenAngle('turn', 'camGame', 0, 0.1, 'linear')
	end
end
