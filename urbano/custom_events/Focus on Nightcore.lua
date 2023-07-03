
function onEvent(eventName, value1, value2)
    if eventName == "Focus on Nightcore" then
        setProperty('defaultCamZoom', 1.2)
        cameraSetTarget('dad');
    end
end