-- Copyright (c) 2013 Johan Astborg joastbg@gmail.com
-- Event handler for multiple events using callbacks

local event = {}

EventHandler = {eventHandlers = {}}
function EventHandler:addEventListener(eventName, eventHandler)
	self.eventHandlers[eventName] = eventHandler
end
function EventHandler:invoke(eventName, param)
	self.eventHandlers[eventName](param)
end