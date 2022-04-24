function dump(t)
    if type(t) == 'table' then
        local s = '{ '
        for k, v in pairs(t) do
            if type(k) ~= 'number' and type(k) ~= nil then
                k = '"' .. k .. '"'
            end
            s = s .. '[' .. k .. '] = ' .. dump(v) .. ','
        end
        return s .. '} '
    else
        return tostring(t)
    end
end

function debugMessage(value, color)
    game.players[1].print(dump(value), color or {r=255, g=255, b=255})
end
