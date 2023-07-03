function getMid(value, size)
    fixSize = 0;
 
    if size ~= null then
       fixSize = size;
    else
       fixSize = value;
    end
    result = value + (size / 2);
 
 
    return result;
 end

 local camOffX = 0
 local camOffY = 0
-- total 600 up
function moveToFunny()
    local bfPos = {0,0}

    local cameraBf = getProperty('boyfriend.cameraPosition')
    bfPos[1] = cameraBf[1]
    bfPos[2] = cameraBf[2]

    local cameraX = getProperty('camFollow.x')
    local cameraY = getProperty('camFollow.y')

    local bfX = getProperty('boyfriend.x')
    local bfY = getProperty('boyfriend.y')

    --debugPrint("done defining")

    local cameraX = getMid(bfX , getProperty('boyfriend.width'))
    local cameraY = getMid(bfY , getProperty('boyfriend.height'))
    local cameraX = cameraX - bfPos[1]
    local cameraY = cameraY + bfPos[2]
    --triggerEvent('Camera Follow Pos',cameraX + camOffX, cameraY + camOffY)
    --debugPrint("done")
    setProperty('camFollow.x', cameraX + camOffX);
    setProperty('camFollow.y', cameraY + camOffY);
end

function onEvent(eventName, value1, value2)
    if eventName == "DownToUp on Vailo" then
        camOffX = -100
        camOffY = 300
        setProperty('defaultCamZoom',3)
        --moveToFunny()
        runTimer("DownToUpDeltaV", 1/60, 120)
    end
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == "DownToUpDeltaV" then
        moveToFunny()
        if loopsLeft < 50 then
        camOffY = camOffY - 12
        end
    end
end