
function onCreate()
    setProperty("skipCountdown", true)
end

function onCreatePost()
    for i = 0,3 do
        setPropertyFromGroup('strumLineNotes', i, 'alpha', 0)
    end
end

--[[local allowCountdown = false
function onStartCountdown()
	-- Block the first countdown and start a timer of 0.8 seconds to play the dialogue
	if not allowCountdown and isStoryMode and not seenCutscene then
		setProperty('inCutscene', true);
		runTimer('startDialogue', 0.8);
		allowCountdown = true;
		return Function_Stop;
	end
    setProperty("skipCountdown", true)
	return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'startDialogue' then -- Timer completed, play dialogue
		startDialogue('dialogue', 'Only-Right');
	end
end]]

function onSongStart()
    --playAnim("dad", "idle", true, false, 0)
    triggerEvent("Camera Follow Pos", 750, 465)
    --[[for i = 0,3 do
        setPropertyFromGroup('strumLineNotes', i, 'alpha', 0)
    end]]
end

local stepCount = 0

function onStepHit()
    stepCount = stepCount + 1
    if stepCount == 2 then
        if curStep >= 328 and curStep < 360 then
            triggerEvent("Add Camera Zoom",0.015/3,0.03/3)
        end
        if curStep >= 392 and curStep < 632 then
            triggerEvent("Add Camera Zoom",0.015/3,0.03/3)
        end
        if curStep >= 840 and curStep < 936 then
            triggerEvent("Add Camera Zoom",0.015/3,0.03/3)
        end
        if curStep >= 968 and curStep < 1220 then
            triggerEvent("Add Camera Zoom",0.015/3,0.03/3)
        end
        stepCount = 0
    end
    if curStep >= 360 and curStep < 384 then
        triggerEvent("Add Camera Zoom",0.015/6,0.03/6)
    end
    if curStep >= 936 and curStep < 960 then
        triggerEvent("Add Camera Zoom",0.015/6,0.03/6)
    end
end

function onBeatHit()
    if curBeat >= 194 and curBeat < 210 then
        triggerEvent("Add Camera Zoom")
    end
    --[[if curBeat >= 136 then
        triggerEvent("Add Camera Zoom")
    end]]
end