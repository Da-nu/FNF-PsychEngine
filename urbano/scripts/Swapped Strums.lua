local defaultNotePos = {}

function onSongStart()
    for i=0,7 do
		local x = getPropertyFromGroup('strumLineNotes',i,'x')
		table.insert(defaultNotePos,x)
	end
    setPropertyFromGroup('strumLineNotes',4,'x', defaultNotePos[1])
    setPropertyFromGroup('strumLineNotes',5,'x', defaultNotePos[2])
    setPropertyFromGroup('strumLineNotes',6,'x', defaultNotePos[3])
    setPropertyFromGroup('strumLineNotes',7,'x', defaultNotePos[4])
    setPropertyFromGroup('strumLineNotes',0,'x', defaultNotePos[5])
    setPropertyFromGroup('strumLineNotes',1,'x', defaultNotePos[6])
    setPropertyFromGroup('strumLineNotes',2,'x', defaultNotePos[7])
    setPropertyFromGroup('strumLineNotes',3,'x', defaultNotePos[8])
end