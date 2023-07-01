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