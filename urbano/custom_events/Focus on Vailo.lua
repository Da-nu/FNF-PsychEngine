
function onEvent(eventName, value1, value2)
    if eventName == "Focus on Vailo" then
        setProperty('defaultCamZoom', 1.2)
        cameraSetTarget('boyfriend');
    end
end