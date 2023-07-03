
function onCreate()
    setProperty("skipCountdown", true)
end

function onCreatePost()
    for i = 0,3 do
        setPropertyFromGroup('strumLineNotes', i, 'alpha', 0)
    end
end

local allowCountdown = false
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
end

function onSongStart()
    playAnim("dad", "idle", true, false, 0)
    triggerEvent("Camera Follow Pos", 750, 465)
    for i = 0,3 do
        setPropertyFromGroup('strumLineNotes', i, 'alpha', 0)
    end
end

function onBeatHit()
    if curBeat == 2 then
        playAnim("dad", "idle", true, false, 0)
    end
    if curBeat == 4 or curBeat == 5 or curBeat == 6 or curBeat == 7  then
        playAnim("dad", "idle", true, false, 0)
    end
    if curBeat >= 232 and curBeat < 264 then
        triggerEvent("Add Camera Zoom")
    end
end