if not game:IsLoaded() then
    game.Loaded:Wait()
end

if game.PlaceId == 3260590327 then --// Lobby Place
    print("Starting")
    wait(2.5)
    local args = {
        [1] = "Multiplayer",
        [2] = "v2:start",
        [3] = {
            ["count"] = 1,
            ["mode"] = "survival"
        }
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("RemoteFunction"):InvokeServer(unpack(args))
    wait(60)
    local TeleportService = game:GetService("TeleportService")
    TeleportService:Teleport("3260590327")
elseif game.PlaceId == 5591597781 then --// Game Place
    print("Starting")
    wait(2.5)
    local function find(targetTitle)
        for _, board in pairs(workspace.IntermissionLobby.Boards:GetChildren()) do
            local title = board:FindFirstChild("Hitboxes") and 
                          board.Hitboxes:FindFirstChild("Bottom") and 
                          board.Hitboxes.Bottom:FindFirstChild("MapDisplay") and 
                          board.Hitboxes.Bottom.MapDisplay:FindFirstChild("Title")
            if title and title:IsA("TextLabel") and title.Text == targetTitle then
                return board
            end
        end
        print("Not Found")
        return nil
    end

    local gameMode = workspace:GetAttribute("GameMode")

    if gameMode == "Survival" then
        local board = find("Toyboard")
        if board then
            print("Found")
            local args = {
                [1] = "LobbyVoting",
                [2] = "Vote",
                [3] = "Toyboard",
                [4] = Vector3.new(18.098058700561523, 4.481705665588379, 58.8390998840332)
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
            wait(1.5)
            local args = {
                [1] = "LobbyVoting",
                [2] = "Ready"
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
            wait(2.5) 
            print("ready")
        else
            local args = {
                [1] = "LobbyVoting",
                [2] = "Veto"
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvent"):FireServer(unpack(args))  
            wait(2.5)          
            local boardveto = find("Toyboard")
            if boardveto then
                print("Found")
                local args = {
                    [1] = "LobbyVoting",
                    [2] = "Vote",
                    [3] = "Toyboard",
                    [4] = Vector3.new(18.098058700561523, 4.481705665588379, 58.8390998840332)
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
                wait(1.5)
                local args = {
                    [1] = "LobbyVoting",
                    [2] = "Ready"
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
                wait(2.5)                
                print("ready")
            else
                local TeleportService = game:GetService("TeleportService")
                TeleportService:Teleport("3260590327")
            end
        end
    else
        print("Wrong Game Mode")
        wait(1)
        local TeleportService = game:GetService("TeleportService")
        TeleportService:Teleport("3260590327")
    end

else
    print("Wrong Game")
    wait(1)
    local TeleportService = game:GetService("TeleportService")
    TeleportService:Teleport("3260590327")
end
