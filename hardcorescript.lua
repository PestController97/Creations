if not game:IsLoaded() then
    game.Loaded:Wait()
end
print("New version")
local queueteleport = queue_on_teleport or (fluxus and fluxus.queue_on_teleport)
local AutoExecute = true
local TeleportCheck = false


if game.PlaceId == 3260590327 then --// Lobby Place
    print("Starting")
game.Players.LocalPlayer.OnTeleport:Connect(function(State)
	if AutoExecute and (not TeleportCheck) and queueteleport then
		TeleportCheck = true
		queueteleport("loadstring(game:HttpGet('https://raw.githubusercontent.com/PestController97/Creations/refs/heads/main/hardcorescript'))()")
	end
end)

    wait(2.5)
    local args = {
        [1] = "Multiplayer",
        [2] = "v2:start",
        [3] = {
            ["count"] = 1,
            ["mode"] = "hardcore"
        }
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("RemoteFunction"):InvokeServer(unpack(args))
wait(60)
game:GetService("TeleportService"):Teleport(3260590327)
elseif game.PlaceId == 5591597781 then --// Game Place
game:GetService("GuiService").ErrorMessageChanged:Connect(function()
        game:GetService("TeleportService"):Teleport(3260590327)
end);
local function info()
    local screenGui = Instance.new("ScreenGui")
    screenGui.Parent = game.CoreGui

    local textLabel = Instance.new("TextLabel")
    textLabel.Parent = screenGui
    textLabel.Size = UDim2.new(0, 400, 0, 50)
    textLabel.Position = UDim2.new(0.5, 0, 0.05, 0)
    textLabel.AnchorPoint = Vector2.new(0.5, 0.5)
    textLabel.TextSize = 24
    textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    textLabel.BackgroundTransparency = 1
    textLabel.TextStrokeTransparency = 0.8
    textLabel.RichText = true

    local function updateText()
        local gems = game:GetService("Players").LocalPlayer.Gems.Value
        local level = game:GetService("Players").LocalPlayer.Level.Value
        local coins = game:GetService("Players").LocalPlayer.Coins.Value

        textLabel.Text = string.format(
            "<font color='rgb(128, 0, 128)'>Gems: %d</font> | <font color='rgb(0, 0, 255)'>Level: %d</font> | <font color='rgb(255, 255, 0)'>Coins: %d</font>",
            gems, level, coins
        )
    end
	while true do
        updateText()
	wait(10)
	end
end

    print("Starting")
game.Players.LocalPlayer.OnTeleport:Connect(function(State)
	if AutoExecute and (not TeleportCheck) and queueteleport then
		TeleportCheck = true
		queueteleport("loadstring(game:HttpGet('https://raw.githubusercontent.com/PestController97/Creations/refs/heads/main/hardcorescript'))()")
	end
end)
    wait(2.5)
    local function find(targetTitle)
        for _, board in pairs(workspace.HardcoreIntermissionLobby.Boards:GetChildren()) do
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

    if gameMode == "Hardcore" then
        local board = find("Crossroads")
        if board then
            print("Found")
            local args = {
                [1] = "LobbyVoting",
                [2] = "Vote",
                [3] = "Crossroads",
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
	    loadstring(game:HttpGet('https://raw.githubusercontent.com/PestController97/Creations/refs/heads/main/hardcorestrat.lua'))()
	    info()
        else
            local args = {
                [1] = "LobbyVoting",
                [2] = "Veto"
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvent"):FireServer(unpack(args))  
            wait(2.5)          
            local boardveto = find("Crossroads")
            if boardveto then
                print("Found")
                local args = {
                    [1] = "LobbyVoting",
                    [2] = "Vote",
                    [3] = "Crossroads",
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
		loadstring(game:HttpGet('https://raw.githubusercontent.com/PestController97/Creations/refs/heads/main/hardcorestrat.lua'))()
		info()
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