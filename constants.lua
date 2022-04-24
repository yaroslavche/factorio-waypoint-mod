local constants = setmetatable({}, {
    __index = {
        events = {
            CreateWaypoint = 'YaroslavcheWaypoint_CreateWaypoint'
        }
    },
    __newindex = function()
    end
})

return constants
