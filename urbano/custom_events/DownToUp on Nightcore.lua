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

-- total 550 up
function moveToFunny()
    local bfPos = {0,0}

    local cameraBf = getProperty('dad.cameraPosition')
    bfPos[1] = cameraBf[1]
    bfPos[2] = cameraBf[2]

    local cameraX = getProperty('camFollow.x')
    local cameraY = getProperty('camFollow.y')

    local bfX = getProperty('dad.x')
    local bfY = getProperty('dad.y')

    --debugPrint("done defining")

    local cameraX = getMid(bfX , getProperty('dad.width'))
    local cameraY = getMid(bfY , getProperty('dad.height'))
    local cameraX = cameraX + bfPos[1]
    local cameraY = cameraY + bfPos[2]
    --triggerEvent('Camera Follow Pos',cameraX + camOffX, cameraY + camOffY)
    --debugPrint("done")
    setProperty('camFollow.x', cameraX + camOffX);
    setProperty('camFollow.y', cameraY + camOffY);
end

function onEvent(eventName, value1, value2)
    if eventName == "DownToUp on Nightcore" then
        randomTag = math.random( 1,1000 )
        camOffX = 150
        camOffY = 300
        setProperty('defaultCamZoom',3)
        --moveToFunny()
        runTimer("DownToUpDelta", 1/60, 120)
    end
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == "DownToUpDelta" then
        moveToFunny()
        if loopsLeft < 50 then
        camOffY = camOffY - 11
        end
    end
end