local keyCount = 4
local coolArrowMoveEnabled = 'false'
local notesYspeed = 0.25
local delay = 0.1
local wave_width = 50
function onEvent(name,v1,v2)
	if name == 'Wavy Arrows' then
		coolArrowMoveEnabled = v1
		keyCount = v2
	end
	if name == 'Change Wavy Arrows' then
		delay = v1
		notesYspeed = v2
	end
	if name == 'Change Wave Width' then
		wave_width = v1
	end
end
function onUpdate(elapsed)
 if coolArrowMoveEnabled == 'false' then
		noteTweenY('1 note go back',1,defaultPlayerStrumY0,0.2)
		noteTweenY('2 note go back',2,defaultPlayerStrumY0,0.2)
		noteTweenY('3 note go back',3,defaultPlayerStrumY0,0.2)
		noteTweenY('4 note go back',4,defaultPlayerStrumY0,0.2)
		noteTweenY('5 note go back',5,defaultPlayerStrumY0,0.2)
		noteTweenY('6 note go back',6,defaultPlayerStrumY0,0.2)
		noteTweenY('7 note go back',7,defaultPlayerStrumY0,0.2)
		noteTweenY('8 note go back',8,defaultPlayerStrumY0,0.2)
		noteTweenY('9 note go back',9,defaultPlayerStrumY0,0.2)
		noteTweenY('10 note go back',10,defaultPlayerStrumY0,0.2)
		noteTweenY('11 note go back',11,defaultPlayerStrumY0,0.2)
		noteTweenY('12 note go back',12,defaultPlayerStrumY0,0.2)
		noteTweenY('13 note go back',13,defaultPlayerStrumY0,0.2)
		noteTweenY('14 note go back',14,defaultPlayerStrumY0,0.2)
		noteTweenY('15 note go back',15,defaultPlayerStrumY0,0.2)
		noteTweenY('16 note go back',16,defaultPlayerStrumY0,0.2)
		noteTweenY('17 note go back',17,defaultPlayerStrumY0,0.2)
		noteTweenY('18 note go back',18,defaultPlayerStrumY0,0.2)
		noteTweenY('19 note go back',19,defaultPlayerStrumY0,0.2)
		noteTweenY('20 note go back',20,defaultPlayerStrumY0,0.2)
		noteTweenY('21 note go back',21,defaultPlayerStrumY0,0.2)
		noteTweenY('22 note go back',22,defaultPlayerStrumY0,0.2)
		noteTweenY('23 note go back',23,defaultPlayerStrumY0,0.2)
		noteTweenY('24 note go back',24,defaultPlayerStrumY0,0.2)
		noteTweenY('25 note go back',25,defaultPlayerStrumY0,0.2)
		noteTweenY('26 note go back',26,defaultPlayerStrumY0,0.2)
		noteTweenY('27 note go back',27,defaultPlayerStrumY0,0.2)
		noteTweenY('28 note go back',28,defaultPlayerStrumY0,0.2)
		noteTweenY('29 note go back',29,defaultPlayerStrumY0,0.2)
		noteTweenY('30 note go back',30,defaultPlayerStrumY0,0.2)
		noteTweenY('31 note go back',31,defaultPlayerStrumY0,0.2)
		noteTweenY('32 note go back',32,defaultPlayerStrumY0,0.2)
		noteTweenY('33 note go back',33,defaultPlayerStrumY0,0.2)
		noteTweenY('34 note go back',34,defaultPlayerStrumY0,0.2)
		noteTweenY('35 note go back',35,defaultPlayerStrumY0,0.2)
 end
 if coolArrowMoveEnabled == 'true' then
		songPos = getSongPosition()
		local currentBeat = (songPos/1000)*(bpm/80)
	if downscroll then
		notesY = defaultPlayerStrumY0 - wave_width
		notesYwidth = 0 - wave_width
	else
		notesY = defaultPlayerStrumY0 + wave_width
		notesYwidth = wave_width
	end
	if keyCount == '1' then
		noteTweenY('1 cool note',1,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*0)*math.pi),0.001)
	end
	if keyCount == '2' then
		noteTweenY('2 cool note',2,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*0)*math.pi),0.001)
		noteTweenY('3 cool note',3,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*1)*math.pi),0.001)
	end
	if keyCount == '3' then
		noteTweenY('3 cool note',3,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*0)*math.pi),0.001)
		noteTweenY('4 cool note',4,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*1)*math.pi),0.001)
		noteTweenY('5 cool note',5,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*2)*math.pi),0.001)
	end
	if keyCount == '4' then
		noteTweenY('4 cool note',4,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*0)*math.pi),0.001)
		noteTweenY('5 cool note',5,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*1)*math.pi),0.001)
		noteTweenY('6 cool note',6,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*2)*math.pi),0.001)
		noteTweenY('7 cool note',7,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*3)*math.pi),0.001)
	end
	if keyCount == '5' then
		noteTweenY('5 cool note',5,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*0)*math.pi),0.001)
		noteTweenY('6 cool note',6,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*1)*math.pi),0.001)
		noteTweenY('7 cool note',7,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*2)*math.pi),0.001)
		noteTweenY('8 cool note',8,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*3)*math.pi),0.001)
		noteTweenY('9 cool note',9,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*4)*math.pi),0.001)
	end
	if keyCount == '6' then
		noteTweenY('6 cool note',6,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*0)*math.pi),0.001)
		noteTweenY('7 cool note',7,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*1)*math.pi),0.001)
		noteTweenY('8 cool note',8,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*2)*math.pi),0.001)
		noteTweenY('9 cool note',9,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*3)*math.pi),0.001)
		noteTweenY('10 cool note',10,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*4)*math.pi),0.001)
		noteTweenY('11 cool note',11,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*5)*math.pi),0.001)
	end
	if keyCount == '7' then
		noteTweenY('7 cool note',7,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*0)*math.pi),0.001)
		noteTweenY('8 cool note',8,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*1)*math.pi),0.001)
		noteTweenY('9 cool note',9,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*2)*math.pi),0.001)
		noteTweenY('10 cool note',10,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*3)*math.pi),0.001)
		noteTweenY('11 cool note',11,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*4)*math.pi),0.001)
		noteTweenY('12 cool note',12,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*5)*math.pi),0.001)
		noteTweenY('13 cool note',13,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*6)*math.pi),0.001)
	end
	if keyCount == '8' then
		noteTweenY('8 cool note',8,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*0)*math.pi),0.001)
		noteTweenY('9 cool note',9,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*1)*math.pi),0.001)
		noteTweenY('10 cool note',10,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*2)*math.pi),0.001)
		noteTweenY('11 cool note',11,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*3)*math.pi),0.001)
		noteTweenY('12 cool note',12,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*4)*math.pi),0.001)
		noteTweenY('13 cool note',13,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*5)*math.pi),0.001)
		noteTweenY('14 cool note',14,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*6)*math.pi),0.001)
		noteTweenY('15 cool note',15,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*7)*math.pi),0.001)
	end
	if keyCount == '9' then
		noteTweenY('9 cool note',9,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*0)*math.pi),0.001)
		noteTweenY('10 cool note',10,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*1)*math.pi),0.001)
		noteTweenY('11 cool note',11,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*2)*math.pi),0.001)
		noteTweenY('12 cool note',12,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*3)*math.pi),0.001)
		noteTweenY('13 cool note',13,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*4)*math.pi),0.001)
		noteTweenY('14 cool note',14,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*5)*math.pi),0.001)
		noteTweenY('15 cool note',15,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*6)*math.pi),0.001)
		noteTweenY('16 cool note',16,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*7)*math.pi),0.001)
		noteTweenY('17 cool note',17,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*8)*math.pi),0.001)
	end
	if keyCount == '10' then
		noteTweenY('10 cool note',10,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*0)*math.pi),0.001)
		noteTweenY('11 cool note',11,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*1)*math.pi),0.001)
		noteTweenY('12 cool note',12,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*2)*math.pi),0.001)
		noteTweenY('13 cool note',13,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*3)*math.pi),0.001)
		noteTweenY('14 cool note',14,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*4)*math.pi),0.001)
		noteTweenY('15 cool note',15,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*5)*math.pi),0.001)
		noteTweenY('16 cool note',16,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*6)*math.pi),0.001)
		noteTweenY('17 cool note',17,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*7)*math.pi),0.001)
		noteTweenY('18 cool note',18,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*8)*math.pi),0.001)
		noteTweenY('19 cool note',19,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*9)*math.pi),0.001)
	end
	if keyCount == '11' then
		noteTweenY('11 cool note',11,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*0)*math.pi),0.001)
		noteTweenY('12 cool note',12,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*1)*math.pi),0.001)
		noteTweenY('13 cool note',13,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*2)*math.pi),0.001)
		noteTweenY('14 cool note',14,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*3)*math.pi),0.001)
		noteTweenY('15 cool note',15,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*4)*math.pi),0.001)
		noteTweenY('16 cool note',16,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*5)*math.pi),0.001)
		noteTweenY('17 cool note',17,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*6)*math.pi),0.001)
		noteTweenY('18 cool note',18,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*7)*math.pi),0.001)
		noteTweenY('19 cool note',19,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*8)*math.pi),0.001)
		noteTweenY('20 cool note',20,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*9)*math.pi),0.001)
		noteTweenY('21 cool note',21,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*10)*math.pi),0.001)
	end
	if keyCount == '12' then
		noteTweenY('12 cool note',12,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*0)*math.pi),0.001)
		noteTweenY('13 cool note',13,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*1)*math.pi),0.001)
		noteTweenY('14 cool note',14,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*2)*math.pi),0.001)
		noteTweenY('15 cool note',15,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*3)*math.pi),0.001)
		noteTweenY('16 cool note',16,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*4)*math.pi),0.001)
		noteTweenY('17 cool note',17,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*5)*math.pi),0.001)
		noteTweenY('18 cool note',18,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*6)*math.pi),0.001)
		noteTweenY('19 cool note',19,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*7)*math.pi),0.001)
		noteTweenY('20 cool note',20,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*8)*math.pi),0.001)
		noteTweenY('21 cool note',21,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*9)*math.pi),0.001)
		noteTweenY('22 cool note',22,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*10)*math.pi),0.001)
		noteTweenY('23 cool note',23,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*11)*math.pi),0.001)
	end
	if keyCount == '13' then
		noteTweenY('13 cool note',13,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*0)*math.pi),0.001)
		noteTweenY('14 cool note',14,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*1)*math.pi),0.001)
		noteTweenY('15 cool note',15,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*2)*math.pi),0.001)
		noteTweenY('16 cool note',16,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*3)*math.pi),0.001)
		noteTweenY('17 cool note',17,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*4)*math.pi),0.001)
		noteTweenY('18 cool note',18,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*5)*math.pi),0.001)
		noteTweenY('19 cool note',19,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*6)*math.pi),0.001)
		noteTweenY('20 cool note',20,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*7)*math.pi),0.001)
		noteTweenY('21 cool note',21,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*8)*math.pi),0.001)
		noteTweenY('22 cool note',22,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*9)*math.pi),0.001)
		noteTweenY('23 cool note',23,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*10)*math.pi),0.001)
		noteTweenY('24 cool note',24,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*11)*math.pi),0.001)
		noteTweenY('25 cool note',25,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*12)*math.pi),0.001)
	end
	if keyCount == '14' then
		noteTweenY('14 cool note',14,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*0)*math.pi),0.001)
		noteTweenY('15 cool note',15,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*1)*math.pi),0.001)
		noteTweenY('16 cool note',16,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*2)*math.pi),0.001)
		noteTweenY('17 cool note',17,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*3)*math.pi),0.001)
		noteTweenY('18 cool note',18,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*4)*math.pi),0.001)
		noteTweenY('19 cool note',19,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*5)*math.pi),0.001)
		noteTweenY('20 cool note',20,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*6)*math.pi),0.001)
		noteTweenY('21 cool note',21,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*7)*math.pi),0.001)
		noteTweenY('22 cool note',22,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*8)*math.pi),0.001)
		noteTweenY('23 cool note',23,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*9)*math.pi),0.001)
		noteTweenY('24 cool note',24,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*10)*math.pi),0.001)
		noteTweenY('25 cool note',25,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*11)*math.pi),0.001)
		noteTweenY('26 cool note',26,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*12)*math.pi),0.001)
		noteTweenY('27 cool note',27,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*13)*math.pi),0.001)
	end
	if keyCount == '15' then
		noteTweenY('15 cool note',15,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*0)*math.pi),0.001)
		noteTweenY('16 cool note',16,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*1)*math.pi),0.001)
		noteTweenY('17 cool note',17,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*2)*math.pi),0.001)
		noteTweenY('18 cool note',18,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*3)*math.pi),0.001)
		noteTweenY('19 cool note',19,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*4)*math.pi),0.001)
		noteTweenY('20 cool note',20,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*5)*math.pi),0.001)
		noteTweenY('21 cool note',21,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*6)*math.pi),0.001)
		noteTweenY('22 cool note',22,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*7)*math.pi),0.001)
		noteTweenY('23 cool note',23,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*8)*math.pi),0.001)
		noteTweenY('24 cool note',24,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*9)*math.pi),0.001)
		noteTweenY('25 cool note',25,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*10)*math.pi),0.001)
		noteTweenY('26 cool note',26,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*11)*math.pi),0.001)
		noteTweenY('27 cool note',27,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*12)*math.pi),0.001)
		noteTweenY('28 cool note',28,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*13)*math.pi),0.001)
		noteTweenY('29 cool note',29,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*14)*math.pi),0.001)
	end
	if keyCount == '16' then
		noteTweenY('16 cool note',16,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*0)*math.pi),0.001)
		noteTweenY('17 cool note',17,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*1)*math.pi),0.001)
		noteTweenY('18 cool note',18,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*2)*math.pi),0.001)
		noteTweenY('19 cool note',19,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*3)*math.pi),0.001)
		noteTweenY('20 cool note',20,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*4)*math.pi),0.001)
		noteTweenY('21 cool note',21,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*5)*math.pi),0.001)
		noteTweenY('22 cool note',22,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*6)*math.pi),0.001)
		noteTweenY('23 cool note',23,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*7)*math.pi),0.001)
		noteTweenY('24 cool note',24,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*8)*math.pi),0.001)
		noteTweenY('25 cool note',25,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*9)*math.pi),0.001)
		noteTweenY('26 cool note',26,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*10)*math.pi),0.001)
		noteTweenY('27 cool note',27,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*11)*math.pi),0.001)
		noteTweenY('28 cool note',28,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*12)*math.pi),0.001)
		noteTweenY('29 cool note',29,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*13)*math.pi),0.001)
		noteTweenY('30 cool note',30,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*14)*math.pi),0.001)
		noteTweenY('31 cool note',31,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*15)*math.pi),0.001)
	end
	if keyCount == '17' then
		noteTweenY('17 cool note',17,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*0)*math.pi),0.001)
		noteTweenY('18 cool note',18,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*1)*math.pi),0.001)
		noteTweenY('19 cool note',19,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*2)*math.pi),0.001)
		noteTweenY('20 cool note',20,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*3)*math.pi),0.001)
		noteTweenY('21 cool note',21,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*4)*math.pi),0.001)
		noteTweenY('22 cool note',22,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*5)*math.pi),0.001)
		noteTweenY('23 cool note',23,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*6)*math.pi),0.001)
		noteTweenY('24 cool note',24,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*7)*math.pi),0.001)
		noteTweenY('25 cool note',25,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*8)*math.pi),0.001)
		noteTweenY('26 cool note',26,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*9)*math.pi),0.001)
		noteTweenY('27 cool note',27,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*10)*math.pi),0.001)
		noteTweenY('28 cool note',28,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*11)*math.pi),0.001)
		noteTweenY('29 cool note',29,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*12)*math.pi),0.001)
		noteTweenY('30 cool note',30,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*13)*math.pi),0.001)
		noteTweenY('31 cool note',31,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*14)*math.pi),0.001)
		noteTweenY('32 cool note',32,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*15)*math.pi),0.001)
		noteTweenY('33 cool note',33,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*16)*math.pi),0.001)
	end
	if keyCount == '18' then
		noteTweenY('18 cool note',18,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*0)*math.pi),0.001)
		noteTweenY('19 cool note',19,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*1)*math.pi),0.001)
		noteTweenY('20 cool note',20,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*2)*math.pi),0.001)
		noteTweenY('21 cool note',21,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*3)*math.pi),0.001)
		noteTweenY('22 cool note',22,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*4)*math.pi),0.001)
		noteTweenY('23 cool note',23,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*5)*math.pi),0.001)
		noteTweenY('24 cool note',24,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*6)*math.pi),0.001)
		noteTweenY('25 cool note',25,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*7)*math.pi),0.001)
		noteTweenY('26 cool note',26,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*8)*math.pi),0.001)
		noteTweenY('27 cool note',27,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*9)*math.pi),0.001)
		noteTweenY('28 cool note',28,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*10)*math.pi),0.001)
		noteTweenY('29 cool note',29,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*11)*math.pi),0.001)
		noteTweenY('30 cool note',30,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*12)*math.pi),0.001)
		noteTweenY('31 cool note',31,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*13)*math.pi),0.001)
		noteTweenY('32 cool note',32,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*14)*math.pi),0.001)
		noteTweenY('33 cool note',33,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*15)*math.pi),0.001)
		noteTweenY('34 cool note',34,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*16)*math.pi),0.001)
		noteTweenY('35 cool note',35,notesY+notesYwidth*math.sin((currentBeat*notesYspeed+delay*17)*math.pi),0.001)
	end
 end
end