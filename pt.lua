load(makeRequest("https://raw.githubusercontent.com/notrhy/_0x001/refs/heads/main/Genta/Script/source/nowm.obfuscated.lua", "GET").content)()

function fp(a, b)
    xp, yp = math.abs(math.floor(getLocal().pos.x / 32) - a), math.abs(math.floor(getLocal().pos.y / 32) - b)
    if xp > 2 or yp > 2 then
        findPath(a, b)
            if rhy.isOnPos(a, b) then
                return true
            end
        end
    end
    return false
end

function take(a)
    for _, obj in pairs(getWorldObject()) do
        if obj.id == a then
            findPath(math.floor((obj.pos.x+10)/32), math.floor(obj.pos.y/32))
            rhy.randomSleep(500, 700)
            rhy.sendCollect(2, a)
            if rhy.inv(a) >= 200 then
                return
            end
        end
    end
end

function pt()
    if not script_by == "Rhy Universe" or not link_discord == "https://discord.com/invite/xVyUWvut2D" then
        rhy.logSystem("`4Wrong watermark!")
        return
    end
    for y = y1, 0, -1 do 
        for x = 0, x1 do
            h = checkTile(x, y)
            if (y == 0 or (h.fg == 0 and checkTile(x, y+1).fg ~= 0)) then 
                ::gg:: 
                if fp(x, y) then
                    rhy.randomSleep(delay, delay + 100)
                end
                rhy.spr(3, plantID, x, y)
                rhy.randomSleep(delay, delay + 100)
                if rhy.inv(plantID) == 0 then 
                    take(plantID)
                    collectgarbage()
                    goto gg 
                end 
            end 
        end 
    end 
end

pt()
