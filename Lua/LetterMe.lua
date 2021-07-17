--this script goes on the bag.
--before dropping anything in the bag, switch to the black player color, right click the bag, and set the GM notes to your desired starting number.

function onLoad()
    LETTER_TABLE = {"A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M"}
end

function tryObjectEnter(obj)
    --append the bag's saved number to the object
    local num = tonumber(self.getGMNotes())
    local ch = LETTER_TABLE[num]
    if ch then 
        local str = obj.getName() .. " " .. ch
        obj.setName(str)

        --update the bag's saved number to the next in sequence
        self.setGMNotes(num+1)
    else
        broadcastToAll("Ran out of letters!")
    end
    
    return true --return "true" to allow the object to fall into the bag, "false" for the object to bounce off the bag.
end