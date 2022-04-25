local Position = {
    __tostring = function (self)
        return string.format("Position<%0.8f,%0.8f>", self.x, self.y)
    end,
    distanceTo = function (self, position)
        return math.sqrt((position.x - self.x) ^ 2 + (position.y - self.y) ^ 2);
    end,
    angle = function (self, position)
        local deltaY = position.y - self.y
        local deltaX = position.x - self.x
        local angleInDegrees = math.atan2(deltaY, deltaX) * 180 / math.pi
        return angleInDegrees * -1
    end
}
Position.__index = Position

function Position:new(x, y)
    assert('number' == type(x) and 'number' == type(y))
    local position = {
        x = x,
        y = y
    }
    setmetatable(position, Position)
    return position
end

return Position
