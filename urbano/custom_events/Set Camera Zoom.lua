-- some bozo on gamebanana uploaded something similar to this but i decided not to use it cause its a basic property, why should it require credits?
function onEvent(eventName, value1, value2)
    if eventName == "Set Camera Zoom" then
        setProperty('defaultCamZoom',value1)
    end
end