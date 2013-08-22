-- Copyright (c) 2013 Johan Astborg joastbg@gmail.com
-- Uses the Event Handler in event.lua

require('event')

eh = EventHandler

-- Event handler as separate function
function myEventHandler1(source)
	print("Johan", source)
end

eh:addEventListener("johan", myEventHandler1)
eh:invoke("johan", 112)

-- Event handler as inline
eh:addEventListener("joakim", function(source) print(source) end)
eh:invoke("joakim", 113)