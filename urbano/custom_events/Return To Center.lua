
function onEvent(eventName, value1, value2)
    if eventName == "Return To Center" then
        setProperty('defaultCamZoom',0.75)
        triggerEvent('Camera Follow Pos',750, 465)
    end
end