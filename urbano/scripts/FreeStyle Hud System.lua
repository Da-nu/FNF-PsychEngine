local posx = 25
local posy = 250
local scalex = 1
local scaley = 1

local stepCount = 0

function onCreatePost()
    makeLuaSprite("InsideBox", "freestyleui/freeBlock", 52, 277)
    setScrollFactor("InsideBox", 0, 0)
    scaleObject("InsideBox", 0.784, 0.784)
    setObjectCamera("InsideBox", "hud")
   --setProperty("InsideBox.visible", false)

    makeLuaSprite("OutsideBox", "freestyleui/block", 25, 250)
    setScrollFactor("OutsideBox", 0, 0)
    setObjectCamera("OutsideBox", "hud")
    --setProperty("OutsideBox.Alpha", 0)

    addLuaSprite("InsideBox", true)
    addLuaSprite("OutsideBox", true)
end

function onSongStart()
    doTweenAlpha("TrabsBoxO", "OutsideBox", 0, 0.00001, "linear")
    doTweenAlpha("TrabsBoxI", "InsideBox", 0, 0.00001, "linear")
    runTimer("FreeStyleDelta", 1/60, 0)
end

--[[function onUpdate(elapsed)
    scaleObject("OutsideBox", scalex, scaley)
    doTweenX("xBoxMove", "OutsideBox", posx, 0.00001, "linear")
    doTweenY("yBoxMove", "OutsideBox", posy, 0.00001, "linear")
    setProperty("InsideBox.visible", true)
    posx = posx + 30
    posy = posy + 30
    scalex = scalex - 0.2
    scaley = scaley - 0.2
end]]

function onStepHit()
    --stepCount = stepCount + 1
    if stepCount == 2 then
        stepCount = 0
        scaleObject("OutsideBox", scalex, scaley)
        doTweenX("xBoxMove", "OutsideBox", posx, 0.00001, "linear")
        doTweenY("yBoxMove", "OutsideBox", posy, 0.00001, "linear")
        setProperty("InsideBox.visible", true)
        posx = posx + 30
        posy = posy + 30
        scalex = scalex - 0.2
        scaley = scaley - 0.2
    end
end

function onBeatHit()
    --debugPrint(scalex, scaley, " ", posx, posy)
    posx = 25
    posy = 250
    scalex = 1
    scaley = 1
end

function onTimerCompleted(tag, loops, loopsLeft)
   if tag == "FreeStyleDelta" then
        scaleObject("OutsideBox", scalex, scaley)
        doTweenX("xBoxMove", "OutsideBox", posx, 0.00001, "linear")
        doTweenY("yBoxMove", "OutsideBox", posy, 0.00001, "linear")
        setProperty("InsideBox.visible", true)
        posx = posx + (((curBpm/4)*3)/100) --0.75
        posy = posy + (((curBpm/4)*3)/100)
        scalex = scalex - ((curBpm/16666.6667)*1) --0.006
        scaley = scaley - ((curBpm/16666.6667)*1)
   end
end