local freeStyle = false

local oppDirectionsHit = {}
oppDirectionsHit[1] = false
oppDirectionsHit[2] = false
oppDirectionsHit[3] = false
oppDirectionsHit[4] = false

local bfDirectionsHit = {}
bfDirectionsHit[1] = false
bfDirectionsHit[2] = false
bfDirectionsHit[3] = false
bfDirectionsHit[4] = false


function onCreate()
    
end

function onCreatePost() -- weird bug only way to fix
    playAnim("boyfriend", "idle", true, false, 0)
    playAnim("dad", "idle", true, false, 0)
end

function onSongStart()
    
end

function checkOppDirection()
    --side
    if oppDirectionsHit[1] == true and oppDirectionsHit[2] == true then
        runHaxeCode("dad.animation.curAnim.stop()")
        playAnim("dad", "sdl", true, false, 0)
    elseif oppDirectionsHit[4] == true and oppDirectionsHit[2] == true then
        runHaxeCode("dad.animation.curAnim.stop()")
        playAnim("dad", "sdr", true, false, 0)
    elseif oppDirectionsHit[1] == true and oppDirectionsHit[3] == true then
        runHaxeCode("dad.animation.curAnim.stop()")
        playAnim("dad", "stl", true, false, 0)
    elseif oppDirectionsHit[4] == true and oppDirectionsHit[3] == true then
        runHaxeCode("dad.animation.curAnim.stop()")
        playAnim("dad", "str", true, false, 0)
    --normal
    elseif oppDirectionsHit[1] == true then
        runHaxeCode("dad.animation.curAnim.stop()")
        playAnim("dad", "singLEFT", true, false, 0)
    elseif oppDirectionsHit[2] == true then
        runHaxeCode("dad.animation.curAnim.stop()")
        playAnim("dad", "singDOWN", true, false, 0)
    elseif oppDirectionsHit[3] == true then
        runHaxeCode("dad.animation.curAnim.stop()")
        playAnim("dad", "singUP", true, false, 0)
    elseif oppDirectionsHit[4] == true then
        runHaxeCode("dad.animation.curAnim.stop()")
        playAnim("dad", "singRIGHT", true, false, 0)
    end
end

function checkBfDirection()
    --side
    if bfDirectionsHit[1] == true and bfDirectionsHit[2] == true then
        runHaxeCode("boyfriend.animation.curAnim.stop()")
        --playSound("dddPerfect", 1)
        playAnim("boyfriend", "sdl", true, false, 0)
    elseif bfDirectionsHit[4] == true and bfDirectionsHit[2] == true then
        runHaxeCode("boyfriend.animation.curAnim.stop()")
       -- playSound("dddPerfect", 1)
        playAnim("boyfriend", "sdr", true, false, 0)
    elseif bfDirectionsHit[1] == true and bfDirectionsHit[3] == true then
        runHaxeCode("boyfriend.animation.curAnim.stop()")
        --playSound("dddPerfect", 1)
        playAnim("boyfriend", "stl", true, false, 0)
    elseif bfDirectionsHit[4] == true and bfDirectionsHit[3] == true then
        runHaxeCode("boyfriend.animation.curAnim.stop()")
        --playSound("dddPerfect", 1)
        playAnim("boyfriend", "str", true, false, 0)
    --normal
    elseif bfDirectionsHit[1] == true then
        runHaxeCode("boyfriend.animation.curAnim.stop()")
        playSound("dddPerfect", 1)
        playAnim("boyfriend", "singLEFT", true, false, 0)
    elseif bfDirectionsHit[2] == true then
        runHaxeCode("boyfriend.animation.curAnim.stop()")
        playSound("dddPerfect", 1)
        playAnim("boyfriend", "singDOWN", true, false, 0)
    elseif bfDirectionsHit[3] == true then
        runHaxeCode("boyfriend.animation.curAnim.stop()")
        playSound("dddPerfect", 1)
        playAnim("boyfriend", "singUP", true, false, 0)
    elseif bfDirectionsHit[4] == true then
        runHaxeCode("boyfriend.animation.curAnim.stop()")
        playSound("dddPerfect", 1)
        playAnim("boyfriend", "singRIGHT", true, false, 0)
    end
end

function opponentNoteHit(membersIndex, noteData, noteType, isSustainNote)
    local direction = noteData + 1
    oppDirectionsHit[direction] = true
    checkOppDirection()
end

function goodNoteHit(membersIndex, noteData, noteType, isSustainNote)
    local direction = noteData + 1
    bfDirectionsHit[direction] = true
    checkBfDirection()
end

function onStepHit()
    oppDirectionsHit[1] = false
    oppDirectionsHit[2] = false
    oppDirectionsHit[3] = false
    oppDirectionsHit[4] = false
    bfDirectionsHit[1] = false
    bfDirectionsHit[2] = false
    bfDirectionsHit[3] = false
    bfDirectionsHit[4] = false
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == "FreeStyleEnabled" then
        freeStyle = true
    elseif tag == "FreeStyleDisabled" then
        freeStyle = false
    end
end