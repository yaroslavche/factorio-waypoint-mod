local Position = {
    __tostring = function (self)
        return string.format("Position<%0.8f,%0.8f>", self.x, self.y)
    end,
    distanceTo = function (self, position)
        return math.sqrt((position.x - self.x) ^ 2 + (position.y - self.y) ^ 2);
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
