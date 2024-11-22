--[[

( ) Crossroads
( ) Copyright 2018-2024 SirKingBinx <Ben Daws>
( ) Licensed under The MIT License

--]]

local user_ids = {1, game.CreatorId} -- put all admin playerIDs here

-- Useful note: Here is how the argument system works
-- command    {args}
-- args[1]    
-- If you want to look for the first argument provided, use args[2].

local commands = {
    {
        name = "kick",
        action = function(_playerExecuting: Player, args: {string})
            -- for people reading, here's where you put your command code

            local player: Player = nil
            local reason: string = ""

            if game.Players:FindFirstChild(args[2]) then player = game.Players:FindFirstChild(args[2]) else return nil end
            
            for idx, _ in args do
                if idx == 1 or idx == 2 then return nil end

                reason = reason .. " " .. args[idx]
            end

            player:Kick(reason)
        end,
    },
    {
        name = "tp",
        action = function(playerExecuting: Player, args: {string})
            -- for people reading, here's where you put your command code

            local player: Player = nil
            local reason: string = ""

            if game.Players:FindFirstChild(args[2]) then player = game.Players:FindFirstChild(args[2]) else return nil end

            playerExecuting:WaitForChild("HumanoidRootPart").Position = player:WaitForChild("HumanoidRootPart").Position
        end,
    },
}

local ChatService = game:GetService("TextChatService")

ChatService.OnIncomingMessage:Connect(function(message: TextChatMessage)
    local messageAcceptable: boolean = false

    for _, user_id in user_ids do
        if message.TextSource.UserId == user_id then
            messageAcceptable = true
        end
    end

    local command_arguments = string.split(message.Text, " ")

    if messageAcceptable then
        for _, command in commands do
            if command_arguments[1] == command.name then
                command.action(game.Players:GetPlayerByUserId(message.TextSource.UserId), command_arguments)
            end
        end
    else
        warn("Unadmin player attempted to access admin commands. If this wasn't a mistake, please add user ID " .. message.TextSource.UserId .. " to the admin list")        
    end
end)
