function NPCJump(npc, target, height)
    local jumpForce = Vector(target:GetPos(), target:GetPos(), height) 
    npc:MoveJumpStart(jumpForce) 

    
    timer.Simple(0.5, function()
        npc:MoveJumpStop() 
    end)
end

function NPCJumpRand(npc, right, left, height)
    local jumpForce = Vector(right, left, height) 
    npc:MoveJumpStart(jumpForce) 

    
    timer.Simple(0.5, function()
        npc:MoveJumpStop() 
    end)
end

function NPCChat(npcname, message, plys)
    local final = npcname .. ": " .. message
    plys:ChatPrint(final)
end

function NPCChatAdv(npcname, message, range, pos)
    local plys = ents.FindInSphere(pos:GetPos(), range)
    for _, v in pairs(plys) do
        if v:IsPlayer() then
            NPCChat(npcname, message, v)
        end
    end
end

function NPCChatAdvRand(npcname, message, range, pos, bool)
    local plys = ents.FindInSphere(pos:GetPos(), range)
    for _, v in pairs(plys) do
    if bool == false then
        if v:IsPlayer() then
            NPCChat(npcname, message[math.random(1, #message)], v)
        end
    elseif bool == true then 
     if v:IsPlayer() then
            NPCChat(npcname, "<::"..message[math.random(1, #message)].."::>", v)
        end
    end
end
end
