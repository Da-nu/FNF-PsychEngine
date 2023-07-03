
function onEvent(eventName, value1, value2)
    if eventName == "Dark Mode" then
        if value1 == "0" then
            doTweenAlpha("TrabsLayer", "layer", 0, 0.00001, "linear")
        elseif value1 == "1" then
            doTweenAlpha("TrabsLayer", "layer", 1, 0.00001, "linear")
        end
    end
end