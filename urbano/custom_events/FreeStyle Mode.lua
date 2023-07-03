
function onEvent(eventName, value1, value2)
    if eventName == "FreeStyle Mode" then
        if value1 == "0" then
            for i = 4,7 do
                setPropertyFromGroup('strumLineNotes', i, 'alpha', 1)
            end
            doTweenAlpha("TransBoxO", "OutsideBox", 0, 0.00001, "linear")
            doTweenAlpha("TransBoxI", "InsideBox", 0, 0.00001, "linear")
            runTimer("FreeStyleDisabled", 1/999, 1)
        elseif value1 == "1" then
            for i = 4,7 do
                setPropertyFromGroup('strumLineNotes', i, 'alpha', 0)
            end
            doTweenAlpha("TransBoxO", "OutsideBox", 1, 0.00001, "linear")
            doTweenAlpha("TransBoxI", "InsideBox", 1, 0.00001, "linear")
            runTimer("FreeStyleEnabled", 1/999, 1)
        end
    end
end