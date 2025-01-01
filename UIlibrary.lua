
local library = {}
local UserInputService = game:GetService("UserInputService")

local function hasProperty(object, prop)
    local t = object[prop]
end

local TweenService = game:GetService("TweenService")
function tweensize(obj, tweentime, goal)
    local time = tweentime
    local tween = TweenService:Create(obj, TweenInfo.new(time), {Size = goal})
    tween:Play()
end
function tweenpos(obj, tweentime, goal)
    local time = tweentime
    local tween = TweenService:Create(obj, TweenInfo.new(time), {Position = goal})
    tween:Play()
end

function library:AddWindow(title)
    windowvisible = true
    savedposition = nil

    local ScreenGui = Instance.new("ScreenGui")
    local MainContainer = Instance.new("Frame")
    local Title = Instance.new("TextLabel")
    local Time = Instance.new("TextLabel")
    local Date = Instance.new("TextLabel")
    local DragFrame = Instance.new("Frame")
    local PageList = Instance.new("Frame")
    local UIGridLayout = Instance.new("UIGridLayout")
    local Divider = Instance.new("Frame")
    local UIGradient = Instance.new("UIGradient")
    local PageHolder = Instance.new("Frame")
    local Loading = Instance.new("Frame")
    local C2 = Instance.new("Frame")
    local UICorner = Instance.new("UICorner")
    local C3 = Instance.new("Frame")
    local UICorner_2 = Instance.new("UICorner")
    local C1 = Instance.new("Frame")
    local UICorner_3 = Instance.new("UICorner")
    local C4 = Instance.new("Frame")
    local UICorner_4 = Instance.new("UICorner")
    local L_Shadow = Instance.new("ImageLabel")
    local Fade = Instance.new("Frame")
    local M_Shadow = Instance.new("ImageLabel")
    
    ScreenGui.Parent = game.CoreGui
    ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    
    MainContainer.Name = "MainContainer"
    MainContainer.Parent = ScreenGui
    MainContainer.BackgroundColor3 = Color3.fromRGB(32, 31, 33)
    MainContainer.BorderSizePixel = 0
    MainContainer.Position = UDim2.new(0.314075112, 0, 0.209537804, 0)
    MainContainer.Size = UDim2.new(0, 737, 0, 449)
    
    Title.Name = "Title"
    Title.Parent = MainContainer
    Title.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
    Title.BackgroundTransparency = 1.000
    Title.Position = UDim2.new(0.00769291399, 0, 0.00445434311, 0)
    Title.Size = UDim2.new(0, 290, 0, 30)
    Title.Font = Enum.Font.Gotham
    Title.Text = title
    Title.RichText = true
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.TextScaled = true
    Title.TextSize = 14.000
    Title.TextWrapped = true
    Title.TextXAlignment = Enum.TextXAlignment.Left
    
    Time.Name = "Time"
    Time.Parent = MainContainer
    Time.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Time.BackgroundTransparency = 1.000
    Time.Position = UDim2.new(0.889894426, 0, 0, 0)
    Time.Size = UDim2.new(0, 73, 0, 17)
    Time.Font = Enum.Font.Gotham
    Time.Text = "3:52 AM"
    Time.TextColor3 = Color3.fromRGB(255, 255, 255)
    Time.TextSize = 14.000
    
    Date.Name = "Date"
    Date.Parent = MainContainer
    Date.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Date.BackgroundTransparency = 1.000
    Date.Position = UDim2.new(0.889894426, 0, 0.0420550071, 0)
    Date.Size = UDim2.new(0, 73, 0, 17)
    Date.Font = Enum.Font.Gotham
    Date.Text = "03/15/2022"
    Date.TextColor3 = Color3.fromRGB(255, 255, 255)
    Date.TextScaled = true
    Date.TextSize = 14.000
    Date.TextWrapped = true
    
    PageList.Name = "PageList"
    PageList.Parent = MainContainer
    PageList.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    PageList.BackgroundTransparency = 1.000
    PageList.BorderSizePixel = 0
    PageList.Position = UDim2.new(0.360922664, 0, 0, 0)
    PageList.Size = UDim2.new(0, 205, 0, 35)
    
    UIGridLayout.Parent = PageList
    UIGridLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIGridLayout.VerticalAlignment = Enum.VerticalAlignment.Center
    UIGridLayout.CellSize = UDim2.new(0, 25, 0, 25)
    
    DragFrame.Name = "DragFrame"
    DragFrame.Parent = MainContainer
    DragFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    DragFrame.BackgroundTransparency = 1.000
    DragFrame.BorderSizePixel = 0
    DragFrame.Size = UDim2.new(0, 737, 0, 35)

    Divider.Name = "Divider"
    Divider.Parent = MainContainer
    Divider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Divider.BorderSizePixel = 0
    Divider.Position = UDim2.new(0, 0, 0.0779509991, 0)
    Divider.Size = UDim2.new(0, 737, 0, 1)
    
    UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(74, 74, 74))}
    UIGradient.Parent = Divider
    
    PageHolder.Name = "PageHolder"
    PageHolder.Parent = MainContainer
    PageHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    PageHolder.BackgroundTransparency = 1.000
    PageHolder.BorderColor3 = Color3.fromRGB(27, 42, 53)
    PageHolder.BorderSizePixel = 0
    PageHolder.Position = UDim2.new(0.0054274085, 0, 0.0935412049, 0)
    PageHolder.Size = UDim2.new(0, 728, 0, 401)
    
    Loading.Name = "Loading"
    Loading.Parent = MainContainer
    Loading.BackgroundColor3 = Color3.fromRGB(32, 31, 33)
    Loading.BorderSizePixel = 0
    Loading.Position = UDim2.new(0, 0, 0.00445434311, 0)
    Loading.Size = UDim2.new(0, 737, 0, 447)
    
    C2.Name = "C2"
    C2.Parent = Loading
    C2.BackgroundColor3 = Color3.fromRGB(255, 78, 78)
    C2.BorderSizePixel = 0
    C2.Position = UDim2.new(0.4871099, 0, 0.478747219, 0)
    C2.Size = UDim2.new(0, 18, 0, 18)
    
    UICorner.Parent = C2
    
    C3.Name = "C3"
    C3.Parent = Loading
    C3.BackgroundColor3 = Color3.fromRGB(255, 78, 78)
    C3.BorderSizePixel = 0
    C3.Position = UDim2.new(0.519674361, 0, 0.478747219, 0)
    C3.Size = UDim2.new(0, 18, 0, 18)
    
    UICorner_2.Parent = C3
    
    C1.Name = "C1"
    C1.Parent = Loading
    C1.BackgroundColor3 = Color3.fromRGB(255, 78, 78)
    C1.BorderSizePixel = 0
    C1.Position = UDim2.new(0.454545438, 0, 0.478747219, 0)
    C1.Size = UDim2.new(0, 18, 0, 18)
    
    UICorner_3.Parent = C1
    
    C4.Name = "C4"
    C4.Parent = Loading
    C4.BackgroundColor3 = Color3.fromRGB(255, 78, 78)
    C4.BorderColor3 = Color3.fromRGB(27, 42, 53)
    C4.BorderSizePixel = 0
    C4.Position = UDim2.new(0.421980977, 0, 0.478747219, 0)
    
    UICorner_4.Parent = C4
    
    L_Shadow.Name = "L_Shadow"
    L_Shadow.Parent = Loading
    L_Shadow.AnchorPoint = Vector2.new(0.5, 0.5)
    L_Shadow.BackgroundTransparency = 1.000
    L_Shadow.BorderSizePixel = 0
    L_Shadow.Position = UDim2.new(0.5, 0, 0.5, 0)
    L_Shadow.Size = UDim2.new(1, 47, 1, 47)
    L_Shadow.ZIndex = 0
    L_Shadow.Image = "rbxassetid://6015897843"
    L_Shadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
    L_Shadow.ImageTransparency = 0.500
    L_Shadow.ScaleType = Enum.ScaleType.Slice
    L_Shadow.SliceCenter = Rect.new(49, 49, 450, 450)
    
    Fade.Name = "Fade"
    Fade.Parent = MainContainer
    Fade.BackgroundColor3 = Color3.fromRGB(255, 78, 78)
    Fade.BorderSizePixel = 0
    Fade.Position = UDim2.new(0, 0, 0.00445434311, 0)
    Fade.Size = UDim2.new(0, 737, 0, 447)
    
    M_Shadow.Name = "M_Shadow"
    M_Shadow.Parent = MainContainer
    M_Shadow.AnchorPoint = Vector2.new(0.5, 0.5)
    M_Shadow.BackgroundTransparency = 1.000
    M_Shadow.BorderSizePixel = 0
    M_Shadow.Position = UDim2.new(0.5, 0, 0.5, 0)
    M_Shadow.Size = UDim2.new(1, 47, 1, 47)
    M_Shadow.ZIndex = 0
    M_Shadow.Image = "rbxassetid://6015897843"
    M_Shadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
    M_Shadow.ImageTransparency = 0.500
    M_Shadow.ScaleType = Enum.ScaleType.Slice
    M_Shadow.SliceCenter = Rect.new(49, 49, 450, 450)

    spawn(function()
        while wait(1) do
            Date.Text = os.date('%m') .. "/"  .. os.date('%d') .. "/" .. os.date('%Y')
            Time.Text = os.date('%I') .. ":" .. os.date('%M') .. " " .. os.date('%p')
        end
    end)

    local function MakeDraggable(topbarobject, object)
        local Dragging = nil
        local DragInput = nil
        local DragStart = nil
        local StartPosition = nil
    
        local function Update(input)
            local Delta = input.Position - DragStart
            local pos =
                UDim2.new(
                    StartPosition.X.Scale,
                    StartPosition.X.Offset + Delta.X,
                    StartPosition.Y.Scale,
                    StartPosition.Y.Offset + Delta.Y
                )
            object.Position = pos
        end
    
        topbarobject.InputBegan:Connect(
            function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                    Dragging = true
                    DragStart = input.Position
                    StartPosition = object.Position
    
                    input.Changed:Connect(
                        function()
                            if input.UserInputState == Enum.UserInputState.End then
                                Dragging = false
                            end
                        end
                    )
                end
            end
        )
    
        topbarobject.InputChanged:Connect(
            function(input)
                if
                    input.UserInputType == Enum.UserInputType.MouseMovement or
                        input.UserInputType == Enum.UserInputType.Touch
                then
                    DragInput = input
                end
            end
        )
    
        UserInputService.InputChanged:Connect(
            function(input)
                if input == DragInput and Dragging then
                    Update(input)
                end
            end
        )
    end

    spawn(function()
        local P1 = C1.Position
        local P2 = C2.Position
        local P3 = C3.Position
        local P4 = C4.Position
        
        wait(0.25)
        
        TweenService:Create(
			Fade,
			TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
			{BackgroundTransparency = 1}
		):Play()
        
        tweensize(C3, 0.2, UDim2.new(0,0,0,0))
        wait(0.2)
        C3.Position = P4
        
        tweenpos(C4, 0.2, P1)
        tweensize(C4, 0.2, UDim2.new(0,18,0,18))
        
        
        tweenpos(C1, 0.2, P2)
        tweenpos(C2, 0.2, P3)
        wait(0.75)
        tweensize(C2, 0.2, UDim2.new(0,0,0,0))
        wait(0.2)
        C2.Position = P4
        
        tweenpos(C3, 0.2, P1)
        tweensize(C3, 0.2, UDim2.new(0,18,0,18))
        
        
        tweenpos(C4, 0.2, P2)
        tweenpos(C1, 0.2, P3)
        wait(0.75)
        tweensize(C1, 0.2, UDim2.new(0,0,0,0))
        wait(0.2)
        C1.Position = P4
        
        tweenpos(C2, 0.2, P1)
        tweensize(C2, 0.2, UDim2.new(0,18,0,18))
        
        
        tweenpos(C3, 0.2, P2)
        tweenpos(C4, 0.2, P3)
        wait(0.75)
        tweensize(C4, 0.2, UDim2.new(0,0,0,0))
        wait(0.2)
        C4.Position = P4
        
        tweenpos(C1, 0.2, P1)
        tweensize(C1, 0.2, UDim2.new(0,18,0,18))
        
        
        tweenpos(C2, 0.2, P2)
        tweenpos(C3, 0.2, P3)
        wait(1)
        
        for _, v in pairs(Loading:GetChildren()) do
            if v:IsA('Frame') then
                TweenService:Create(
                    v,
                    TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundTransparency = 1}
                ):Play()
            end
        end
        TweenService:Create(
			Loading,
			TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
			{BackgroundTransparency = 1}
		):Play()
        L_Shadow:Destroy()
        wait(0.2)
        Loading:Destroy()
    end)

    local KhroniteLibrary = {}
    function KhroniteLibrary:ToggleWindow()
        if windowvisible == true then
            windowvisible = false
            savedposition = MainContainer.Position
            TweenService:Create(
                MainContainer,
                TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {Position = UDim2.new(0.268, 0,-1, 0)}
            ):Play()
            TweenService:Create(
                Fade,
                TweenInfo.new(.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {BackgroundTransparency = 0}
            ):Play()
        else
            windowvisible = true
            TweenService:Create(
                MainContainer,
                TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {Position = savedposition}
            ):Play()
            TweenService:Create(
                Fade,
                TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {BackgroundTransparency = 1}
            ):Play()
        end
    end
    function KhroniteLibrary:AddPage(name, image)
        Transitioned = false

        local templatepage = Instance.new("Frame")
        templatepage.Name = name
        templatepage.Parent = PageHolder
        templatepage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        templatepage.BackgroundTransparency = 1.000
        templatepage.BorderSizePixel = 0
        templatepage.Position = UDim2.new(0.00274725282, 0, 0, 0)
        templatepage.Size = UDim2.new(0, 726, 0, 401)
        templatepage.Visible = false

        local UIG = Instance.new("UIGridLayout")
        UIG.Name = "UIG"
        UIG.Parent = templatepage
        UIG.SortOrder = Enum.SortOrder.LayoutOrder
        UIG.CellPadding = UDim2.new(0, 30, 0, 30)
        UIG.CellSize = UDim2.new(0, 222, 0, 184)

        local ImageButton = Instance.new("ImageButton")
        ImageButton.Name = name
        ImageButton.Parent = PageList
        ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ImageButton.BackgroundTransparency = 1.000
        ImageButton.BorderColor3 = Color3.fromRGB(27, 42, 53)
        ImageButton.BorderSizePixel = 0
        ImageButton.Size = UDim2.new(0, 100, 0, 100)
        ImageButton.AutoButtonColor = false
        ImageButton.Image = image
        ImageButton.MouseEnter:Connect(function()
            if ImageButton.ImageColor3 ~= Color3.fromRGB(255, 54, 54) then
                ImageButton.ImageColor3 = Color3.fromRGB(255, 78, 78)
            end
        end)
        ImageButton.MouseLeave:Connect(function()
            if ImageButton.ImageColor3 ~= Color3.fromRGB(255, 54, 54) then
                ImageButton.ImageColor3 = Color3.fromRGB(255, 255, 255)
            end
        end)
        ImageButton.MouseButton1Down:Connect(function()
            if not Transitioned then
                if templatepage.Visible == false then
                    Transitioned = true
                    Fade.BackgroundColor3 = Color3.fromRGB(18, 18, 19)
                    TweenService:Create(
                        Fade,
                        TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {BackgroundTransparency = 0}
                    ):Play()
                    wait(0.3)
                    for _, v in pairs(PageHolder:GetChildren()) do
                        v.Visible = false 
                    end
                    for _, v in pairs(PageList:GetChildren()) do
                        if v:IsA('ImageButton') then
                            v.ImageColor3 = Color3.fromRGB(255, 255, 255)
                            ImageButton.ImageColor3 = Color3.fromRGB(255, 54, 54)
                        end
                    end
                    templatepage.Visible = true
                    TweenService:Create(
                        Fade,
                        TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {BackgroundTransparency = 1}
                    ):Play()
                    wait(0.3)
                    Fade.BackgroundColor3 = Color3.fromRGB(255, 78, 78)
                    Transitioned = false
                end
            end
        end)

        local KhroniteSection = {}
        function KhroniteSection:AddSection(headertext)
            local section = Instance.new("Frame")
            section.Name = "section"
            section.Parent = templatepage
            section.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
            section.BorderSizePixel = 0
            section.Size = UDim2.new(0, 100, 0, 100)

            local UIC = Instance.new("UICorner")
            UIC.CornerRadius = UDim.new(0, 10)
            UIC.Name = "UIC"
            UIC.Parent = section

            local Shadow = Instance.new("ImageLabel")
            Shadow.Name = "Shadow"
            Shadow.Parent = section
            Shadow.AnchorPoint = Vector2.new(0.5, 0.5)
            Shadow.BackgroundTransparency = 1.000
            Shadow.BorderSizePixel = 0
            Shadow.Position = UDim2.new(0.5, 0, 0.5, 0)
            Shadow.Size = UDim2.new(1, 47, 1, 47)
            Shadow.ZIndex = 0
            Shadow.Image = "rbxassetid://6014261993"
            Shadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
            Shadow.ImageTransparency = 0.500
            Shadow.ScaleType = Enum.ScaleType.Slice
            Shadow.SliceCenter = Rect.new(49, 49, 450, 450)

            local header = Instance.new("TextLabel")
            header.Name = "header"
            header.Parent = section
            header.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            header.BackgroundTransparency = 1.000
            header.BorderSizePixel = 0
            header.Position = UDim2.new(0.0454953872, 0, 0.0363043062, 0)
            header.Size = UDim2.new(0, 200, 0, 17)
            header.Font = Enum.Font.Code
            header.Text = headertext
            header.TextColor3 = Color3.fromRGB(255, 255, 255)
            header.TextScaled = true
            header.TextSize = 14.000
            header.TextWrapped = true
            header.TextXAlignment = Enum.TextXAlignment.Left

            local contentholder = Instance.new("Frame")
            contentholder.Name = "contentholder"
            contentholder.Parent = section
            contentholder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            contentholder.BackgroundTransparency = 1.000
            contentholder.BorderSizePixel = 0
            contentholder.Position = UDim2.new(0.0450450443, 0, 0.163043484, 0)
            contentholder.Size = UDim2.new(0, 200, 0, 147)

            local UIG = Instance.new("UIGridLayout")
            UIG.Name = "UIG"
            UIG.Parent = contentholder
            UIG.SortOrder = Enum.SortOrder.LayoutOrder
            UIG.CellPadding = UDim2.new(0, 5, 0, 6)
            UIG.CellSize = UDim2.new(1, 0, 0, 17)

            local KhroniteContent = {}
            function KhroniteContent:AddButton(text, callback)
                callback = callback or function() end
                text = text or "button"

                local Button = Instance.new("TextButton")
                Button.Name = "Button"
                Button.Parent = contentholder
                Button.BackgroundColor3 = Color3.fromRGB(19, 19, 19)
                Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
                Button.BorderSizePixel = 0
                Button.Size = UDim2.new(0, 200, 0, 50)
                Button.AutoButtonColor = false
                Button.Font = Enum.Font.Code
                Button.Text = text
                Button.TextColor3 = Color3.fromRGB(193, 193, 193)
                Button.TextSize = 13.000
                Button.TextStrokeColor3 = Color3.fromRGB(19, 19, 19)
                Button.TextWrapped = true
                Button.MouseButton1Down:Connect(function()
                    pcall(callback)
                end)
                Button.MouseEnter:Connect(function()
                    TweenService:Create(
						Button,
						TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextColor3 = Color3.fromRGB(255, 78, 78)}
					):Play()
                end)
                Button.MouseLeave:Connect(function()
                    TweenService:Create(
						Button,
						TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextColor3 = Color3.fromRGB(193, 193, 193)}
					):Play()
                end)

                local UICorner = Instance.new("UICorner")
                UICorner.CornerRadius = UDim.new(0, 2)
                UICorner.Parent = Button

                local UIStroke = Instance.new("UIStroke")
                UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                UIStroke.Color = Color3.fromRGB(255, 255, 255)
                UIStroke.Thickness = 0.51
                UIStroke.Parent = Button
            end
            function KhroniteContent:AddToggle(text, callback)
                local toggled = false
                
                callback = callback or function() end
                text = text or "toggle"
                Interacted = false
                Hovered = false

                local ToggleHolder = Instance.new("TextLabel")
                ToggleHolder.Name = "ToggleHolder"
                ToggleHolder.Parent = contentholder
                ToggleHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                ToggleHolder.BackgroundTransparency = 1.000
                ToggleHolder.BorderSizePixel = 0
                ToggleHolder.Size = UDim2.new(0, 200, 0, 50)
                ToggleHolder.Font = Enum.Font.Code
                ToggleHolder.Text = text
                ToggleHolder.TextColor3 = Color3.fromRGB(255, 255, 255)
                ToggleHolder.TextSize = 14.000
                ToggleHolder.TextXAlignment = Enum.TextXAlignment.Left

                local Toggle = Instance.new("ImageButton")
                Toggle.Name = "Toggle"
                Toggle.Parent = ToggleHolder
                Toggle.AutoButtonColor = false
                Toggle.BackgroundColor3 = Color3.fromRGB(19, 19, 19)
                Toggle.BorderSizePixel = 0
                Toggle.Position = UDim2.new(0.915000021, 0, 0, 0)
                Toggle.Size = UDim2.new(0, 17, 0, 17)
                Toggle.Image = "rbxassetid://7072706620"
                Toggle.ImageColor3 = Color3.fromRGB(19, 19, 19)

                local UICorner = Instance.new("UICorner")
                UICorner.CornerRadius = UDim.new(0, 4)
                UICorner.Parent = Toggle

                local UIStroke = Instance.new("UIStroke")
                UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
                UIStroke.Color = Color3.fromRGB(255, 255, 255)
                UIStroke.Thickness = 0.51
                UIStroke.Parent = Toggle

                Toggle.MouseEnter:Connect(function()
                    TweenService:Create(
						UIStroke,
						TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Color = Color3.fromRGB(255, 78, 78)}
					):Play()
                end)

                Toggle.MouseLeave:Connect(function()
                    if toggled == false then
                        TweenService:Create(
                            UIStroke,
                            TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {Color = Color3.fromRGB(255, 255, 255)}
                        ):Play()
                    end
                end)

                local function Fire()
                    if not Interacted then
                        if toggled == false then
                            Interacted = true
                            toggled = true
                            TweenService:Create(
                                Toggle,
                                TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                {BackgroundColor3 = Color3.fromRGB(255, 78, 78)}
                            ):Play()
                            TweenService:Create(
                                UIStroke,
                                TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                {Color = Color3.fromRGB(255, 78, 78)}
                            ):Play()
                            wait(0.3)
                            Interacted = false
                        elseif toggled == true then
                            Interacted = true
                            toggled = false
                            TweenService:Create(
                                Toggle,
                                TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                {BackgroundColor3 = Color3.fromRGB(19, 19, 19)}
                            ):Play()
                            TweenService:Create(
                                UIStroke,
                                TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                {Color = Color3.fromRGB(255, 255, 255)}
                            ):Play()
                            wait(0.3)
                            Interacted = false
                        end
                        pcall(callback, toggled)
                    end
                end

                Toggle.MouseButton1Down:Connect(Fire)
            end
            function KhroniteContent:AddSlider(text, min, max, callback)
                local dragging = false

                text = text or "slider"
                min = min or 0
                max = max or 100
                callback = callback or function() end

                local SliderHolder = Instance.new("TextLabel")
                SliderHolder.Name = "SliderHolder"
                SliderHolder.Parent = contentholder
                SliderHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                SliderHolder.BackgroundTransparency = 1.000
                SliderHolder.BorderSizePixel = 0
                SliderHolder.Size = UDim2.new(0, 200, 0, 50)
                SliderHolder.Font = Enum.Font.Code
                SliderHolder.Text = text
                SliderHolder.TextColor3 = Color3.fromRGB(255, 255, 255)
                SliderHolder.TextSize = 14.000
                SliderHolder.TextXAlignment = Enum.TextXAlignment.Left

                local TextBox = Instance.new("TextBox")
                TextBox.Parent = SliderHolder
                TextBox.BackgroundColor3 = Color3.fromRGB(19, 19, 19)
                TextBox.BorderSizePixel = 0
                TextBox.Position = UDim2.new(0.875, 0, 0, 0)
                TextBox.Size = UDim2.new(0, 25, 0, 17)
                TextBox.Font = Enum.Font.Code
                TextBox.Text = "0"
                TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
                TextBox.TextScaled = true
                TextBox.TextSize = 14.000
                TextBox.TextWrapped = true
                TextBox.ClearTextOnFocus = false
                TextBox.TextEditable = false

                local UICorner = Instance.new("UICorner")
                UICorner.CornerRadius = UDim.new(0, 2)
                UICorner.Parent = TextBox

                local UIStroke = Instance.new("UIStroke")
                UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                UIStroke.Color = Color3.fromRGB(255, 255, 255)
                UIStroke.Thickness = 0.51
                UIStroke.Parent = TextBox

                local Slider = Instance.new("Frame")
                Slider.Name = "Slider"
                Slider.Parent = SliderHolder
                Slider.BackgroundColor3 = Color3.fromRGB(135, 135, 135)
                Slider.BorderSizePixel = 0
                Slider.Position = UDim2.new(0.50999999, 0, 0.411764711, 0)
                Slider.Size = UDim2.new(0, 64, 0, 3)

                local UICorner_2 = Instance.new("UICorner")
                UICorner_2.CornerRadius = UDim.new(1, 0)
                UICorner_2.Parent = Slider

                local Fill = Instance.new("Frame")
                Fill.Name = "Fill"
                Fill.Parent = Slider
                Fill.BackgroundColor3 = Color3.fromRGB(255, 78, 78)
                Fill.BorderSizePixel = 0
                Fill.Position = UDim2.new(0, 0, 0, 0)
                Fill.Size = UDim2.new(0, 0, 0, 3)

                local UICorner_3 = Instance.new("UICorner")
                UICorner_3.CornerRadius = UDim.new(1, 0)
                UICorner_3.Parent = Fill

                local SlideCircle = Instance.new("Frame")
                SlideCircle.Parent = Slider
                SlideCircle.BackgroundColor3 = Color3.fromRGB(255, 78, 78)
                SlideCircle.BorderSizePixel = 0
                SlideCircle.Position = UDim2.new(-0.125, 0,-1.667, 0)
                SlideCircle.Size = UDim2.new(0, 12, 0, 12)

                local UICorner_4 = Instance.new("UICorner")
                UICorner_4.CornerRadius = UDim.new(1, 0)
                UICorner_4.Parent = SlideCircle

                local function move(input)
					local pos =
						UDim2.new(
							math.clamp((input.Position.X - Slider.AbsolutePosition.X) / Slider.AbsoluteSize.X, 0, 1),
							-6,
						-1.30499995,
							0
						)
					local pos1 =
						UDim2.new(
							math.clamp((input.Position.X - Slider.AbsolutePosition.X) / Slider.AbsoluteSize.X, 0, 1),
							0,
							0,
							3
						)
                    Fill:TweenSize(pos1, "Out", "Sine", 0.1, true)
					SlideCircle:TweenPosition(pos, "Out", "Sine", 0.1, true)
					local value = math.floor(((pos.X.Scale * max) / max) * (max - min) + min)
					TextBox.Text = tostring(value)
					pcall(callback, value)
				end
				SlideCircle.InputBegan:Connect(
					function(input)
						if input.UserInputType == Enum.UserInputType.MouseButton1 then
							dragging = true
						end
					end
				)
				SlideCircle.InputEnded:Connect(
					function(input)
						if input.UserInputType == Enum.UserInputType.MouseButton1 then
							dragging = false
						end
					end
				)
				game:GetService("UserInputService").InputChanged:Connect(
				function(input)
					if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
						move(input)
					end
				end
				)
                
                local SliderActions = {}
                function SliderActions:Change(tochange)
                    Fill.Size = UDim2.new((tochange or 0) / max, 0, 0, 3)
                    SlideCircle.Position = UDim2.new((tochange or 0)/max, -6,-1.30499995, 0)
                    Value.Text = tostring(tochange and math.floor((tochange / max) * (max - min) + min) or 0)
                    pcall(callback,tochange)
                end
                return SliderActions
            end
            function KhroniteContent:AddTextBox(text, callback)
                text = text or 'TextBox'
                callback = callback or function() end

                local TextboxHolder = Instance.new("TextLabel")
                TextboxHolder.Name = "Textbox"
                TextboxHolder.Parent = contentholder
                TextboxHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                TextboxHolder.BackgroundTransparency = 1.000
                TextboxHolder.BorderSizePixel = 0
                TextboxHolder.Size = UDim2.new(0, 200, 0, 50)
                TextboxHolder.Font = Enum.Font.Code
                TextboxHolder.Text = text
                TextboxHolder.TextColor3 = Color3.fromRGB(255, 255, 255)
                TextboxHolder.TextSize = 14.000
                TextboxHolder.TextXAlignment = Enum.TextXAlignment.Left

                local TextBox = Instance.new("TextBox")
                TextBox.Parent = TextboxHolder
                TextBox.BackgroundColor3 = Color3.fromRGB(19, 19, 19)
                TextBox.BorderSizePixel = 0
                TextBox.Position = UDim2.new(0.605000019, 0, 0, 0)
                TextBox.Size = UDim2.new(0, 79, 0, 17)
                TextBox.Font = Enum.Font.SourceSans
                TextBox.Text = ''
                TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
                TextBox.TextSize = 14.000
                TextBox.ClearTextOnFocus = false

                local UICorner = Instance.new("UICorner")
                UICorner.CornerRadius = UDim.new(0, 2)
                UICorner.Parent = TextBox

                local UIStroke = Instance.new("UIStroke")
                UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                UIStroke.Color = Color3.fromRGB(255, 255, 255)
                UIStroke.Thickness = 0.51
                UIStroke.Parent = TextBox

                TextBox:GetPropertyChangedSignal("Text"):Connect(function()
                    if #TextBox.Text > 13 then
                        TextBox.TextScaled = true
                    end
                end)

                TextBox.Focused:Connect(function()
                    TweenService:Create(
                        UIStroke,
                        TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {Color = Color3.fromRGB(255, 78, 78)}
                    ):Play()
                end)
                TextBox.FocusLost:Connect(function()
                    TweenService:Create(
                        UIStroke,
                        TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {Color = Color3.fromRGB(255, 255, 255)}
                    ):Play()
                    pcall(callback, TextBox.Text)
                end)
            end
            function KhroniteContent:AddKeyPicker(text, presetbind, callback)
                local Key = presetbind.Name

                callback = callback or function() end
                text = text or 'keybind'

                local Keybind = Instance.new("TextLabel")
                Keybind.Name = "Keybind"
                Keybind.Parent = contentholder
                Keybind.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Keybind.BackgroundTransparency = 1.000
                Keybind.BorderSizePixel = 0
                Keybind.Size = UDim2.new(0, 200, 0, 50)
                Keybind.Font = Enum.Font.Code
                Keybind.Text = text
                Keybind.TextColor3 = Color3.fromRGB(255, 255, 255)
                Keybind.TextSize = 14.000
                Keybind.TextXAlignment = Enum.TextXAlignment.Left

                local Bind = Instance.new("TextButton")
                Bind.Name = "Bind"
                Bind.Parent = Keybind
                Bind.AutoButtonColor = false
                Bind.BackgroundColor3 = Color3.fromRGB(19, 19, 19)
                Bind.BorderSizePixel = 0
                Bind.Position = UDim2.new(0.605000019, 0, 0, 0)
                Bind.Size = UDim2.new(0, 79, 0, 17)
                Bind.Font = Enum.Font.SourceSans
                Bind.Text = Key
                Bind.TextColor3 = Color3.fromRGB(255, 255, 255)
                Bind.TextSize = 14.000

                local UICorner = Instance.new("UICorner")
                UICorner.CornerRadius = UDim.new(0, 2)
                UICorner.Parent = Bind

                local UIStroke = Instance.new("UIStroke")
                UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                UIStroke.Color = Color3.fromRGB(255, 255, 255)
                UIStroke.Thickness = 0.51
                UIStroke.Parent = Bind

                Bind.MouseButton1Down:Connect(function()
                    Bind.Text = "..."
                    TweenService:Create(
                        Bind,
                        TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {TextColor3 = Color3.fromRGB(255, 78, 78)}
                    ):Play()
                    local inputwait = game:GetService("UserInputService").InputBegan:Wait()
                    while inputwait.UserInputType ~= Enum.UserInputType.Keyboard do
                        inputwait = game:GetService("UserInputService").InputBegan:Wait()
                    end
                    wait()
                    TweenService:Create(
                        Bind,
                        TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {TextColor3 = Color3.fromRGB(255, 255, 255)}
                    ):Play()
                    Bind.Text = inputwait.KeyCode.Name
                    Key = inputwait.KeyCode.Name
                end)

                game:GetService("UserInputService").InputBegan:Connect(
                function(current, pressed)
                    if not pressed then
                        if current.KeyCode.Name == Key and game:GetService("UserInputService"):GetFocusedTextBox() == nil then
                            pcall(callback)
                        end
                    end
                end)
            end
            function KhroniteContent:AddDropdown(table, default, callback)
                local dropdowntoggled = false

                callback = callback or function() end
                table = table or { 'None' }
                default = default or 1
                selectedoption = table[default]

                local Dropdown = Instance.new("TextButton")
                Dropdown.Name = "Dropdown"
                Dropdown.Parent = contentholder
                Dropdown.BackgroundColor3 = Color3.fromRGB(19, 19, 19)
                Dropdown.BorderColor3 = Color3.fromRGB(0, 0, 0)
                Dropdown.BorderSizePixel = 0
                Dropdown.Size = UDim2.new(0, 200, 0, 50)
                Dropdown.AutoButtonColor = false
                Dropdown.Font = Enum.Font.Code
                Dropdown.Text = table[default]
                Dropdown.TextColor3 = Color3.fromRGB(193, 193, 193)
                Dropdown.TextSize = 13.000
                Dropdown.TextStrokeColor3 = Color3.fromRGB(19, 19, 19)
                Dropdown.TextWrapped = true
                Dropdown.ZIndex = 12

                local Arrow = Instance.new("ImageLabel")
                Arrow.Name = "Arrow"
                Arrow.Parent = Dropdown
                Arrow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Arrow.BackgroundTransparency = 1.000
                Arrow.BorderSizePixel = 0
                Arrow.Position = UDim2.new(0.915000021, 0, 0, 0)
                Arrow.Size = UDim2.new(0, 17, 0, 17)
                Arrow.Image = "rbxassetid://7072706663"

                local UIStroke1 = Instance.new("UIStroke")
                UIStroke1.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                UIStroke1.Color = Color3.fromRGB(255, 255, 255)
                UIStroke1.Thickness = 0.51
                UIStroke1.Parent = Dropdown

                local ListingFrame = Instance.new("ScrollingFrame")
                ListingFrame.Name = "ListingFrame"
                ListingFrame.Parent = Dropdown
                ListingFrame.BackgroundTransparency = 0
                ListingFrame.BackgroundColor3 = Color3.fromRGB(19, 19, 19)
                ListingFrame.BorderSizePixel = 0
                ListingFrame.BorderColor3 = Color3.fromRGB(145, 145, 145)
                ListingFrame.Position = UDim2.new(0, 0, 1, 0)
                ListingFrame.Size = UDim2.new(0, 200, 0, 0)
		ListingFrame.CanvasSize = UDim2.new(0, 0, 50, 0)
                ListingFrame.BottomImage = ""
                ListingFrame.ScrollBarThickness = 0
                ListingFrame.TopImage = ""

                local UIG = Instance.new("UIGridLayout")
                UIG.Name = "UIG"
                UIG.Parent = ListingFrame
                UIG.SortOrder = Enum.SortOrder.LayoutOrder
                UIG.CellPadding = UDim2.new(0, 5, 0, 2)
                UIG.CellSize = UDim2.new(1, 0, 0, 17)

                local UICorner = Instance.new("UICorner")
                UICorner.CornerRadius = UDim.new(0, 2)
                UICorner.Parent = Dropdown

                for i, v in pairs(table) do
                    local TextButton = Instance.new("TextButton")
                    TextButton.Name = v
                    TextButton.Parent = ListingFrame
                    TextButton.BackgroundColor3 = Color3.fromRGB(19, 19, 19)
                    TextButton.BorderSizePixel = 1
                    TextButton.BorderColor3 = Color3.fromRGB(59, 59, 59)
                    TextButton.Size = UDim2.new(0, 200, 0, 50)
                    TextButton.Font = Enum.Font.Code
                    TextButton.Text = v
                    TextButton.AutoButtonColor = false
                    if selectedoption == TextButton.Name then
                        TextButton.TextColor3 = Color3.fromRGB(255, 78, 78)
                    else
                        TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
                    end
                    TextButton.TextSize = 14.000
                    TextButton.MouseButton1Down:Connect(function()
                        if selectedoption ~= TextButton.Name then
                            TweenService:Create(
                                TextButton,
                                TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                {TextColor3 = Color3.fromRGB(255, 78, 78)}
                            ):Play()
                            TweenService:Create(
                                ListingFrame[selectedoption],
                                TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                {TextColor3 = Color3.fromRGB(255, 255, 255)}
                            ):Play()
                            selectedoption = TextButton.Name
                            Dropdown.Text = selectedoption
                        end
                    end)
                end

                Dropdown.MouseButton1Down:Connect(function()
                    if dropdowntoggled == false then
                        dropdowntoggled = true
                        TweenService:Create(
                            ListingFrame,
                            TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {Size = UDim2.new(0, 200, 0, 160)}
                        ):Play()
                        TweenService:Create(
                            Arrow,
                            TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {Rotation = 180}
                        ):Play()
			ListingFrame.ScrollingEnabled = true
                    elseif dropdowntoggled == true then
                        dropdowntoggled = false
                        TweenService:Create(
                            ListingFrame,
                            TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {Size = UDim2.new(0, 200, 0, 0)}
                        ):Play()
                        TweenService:Create(
                            Arrow,
                            TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {Rotation = 0}
                        ):Play()
			ListingFrame.ScrollingEnabled = false
                    end
                end)

                ListingFrame:GetPropertyChangedSignal("Size"):Connect(function()
                    if ListingFrame.Size == UDim2.new(0, 200, 0, 0) then
                        ListingFrame.BorderSizePixel = 0
                        ListingFrame.ScrollBarThickness = 0
                    else
                        ListingFrame.BorderSizePixel = 1
                        ListingFrame.ScrollBarThickness = 2
                    end
                end)

                Dropdown:GetPropertyChangedSignal("Text"):Connect(function()
                    pcall(callback, Dropdown.Text)
                end)
            end
            function KhroniteContent:AddLabel(text)
                text = text or 'Label'

                local label = Instance.new("TextLabel")
                label.Name = "Label"
                label.Parent = contentholder
                label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                label.BackgroundTransparency = 1.000
                label.BorderSizePixel = 0
                label.Size = UDim2.new(0, 200, 0, 50)
                label.Font = Enum.Font.Code
                label.Text = text
                label.TextColor3 = Color3.fromRGB(255, 255, 255)
                label.TextSize = 14.000
                label.TextXAlignment = Enum.TextXAlignment.Left
            end
            return KhroniteContent
        end
        return KhroniteSection
    end
    function KhroniteLibrary:UpdateTitle(text)
        Title.Text = text
    end
    function KhroniteLibrary:SelectPage(number)
        for i, v in pairs(PageHolder:GetChildren()) do
            if i == number then
                v.Visible = true
            end
        end
        for i, v in pairs(PageList:GetChildren()) do
            if i == number+1 then
                v.ImageColor3 = Color3.fromRGB(255, 54, 54)
            end
        end
    end
    MakeDraggable(DragFrame, MainContainer)
    return KhroniteLibrary
end

return library
