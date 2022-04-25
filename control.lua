require('utils')
local constants = require('constants')
local Position = require('class.Position')

local function CreateWaypoint(event)
    local cursorPosition = Position:new(event.cursor_position.x, event.cursor_position.y)
    local playerPosition = Position:new(game.players[1].position.x, game.players[1].position.y)
    debugMessage(string.format('Player: %s', playerPosition:__tostring()), {r=3, g=155, b=229})
    debugMessage(string.format('Cursor: %s', cursorPosition:__tostring()), {r=128, g=222, b=234})
    debugMessage(string.format('Distance: %0.8f', playerPosition:distanceTo(cursorPosition)))
    debugMessage(string.format('Angle: %0.8f', playerPosition:angle(cursorPosition)))
end

script.on_event(constants.events.CreateWaypoint, CreateWaypoint)
