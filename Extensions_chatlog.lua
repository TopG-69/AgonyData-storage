pcall(function()
    local LogType = {"Group", "Global"}
    local Chatlog_GUI = Instance.new("ScreenGui")
    Chatlog_GUI.Name = "Agony_Extensions-CHATLOG"
    Chatlog_GUI.Parent = game:GetService("CoreGui")

    local D_Frame = Instance.new("Frame")
    D_Frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    D_Frame.Size = UDim2.new(0, 500, 0, 260)
    D_Frame.Position = UDim2.new(0.5, -250, 0.1, 0)
    D_Frame.BackgroundTransparency = 1
    D_Frame.Draggable = true
    D_Frame.Active = true
    D_Frame.Selectable = true
    D_Frame.Parent = Chatlog_GUI

    local Frame = Instance.new("Frame")
    Frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    Frame.BorderColor3 = Color3.fromRGB(60, 60, 255)
    Frame.Size = UDim2.new(0, 500, 0, 260)
    Frame.Position = UDim2.new(0.5, -250, 0.1, 0)
    Frame.BorderSizePixel = 1
    Frame.Visible = false
    Frame.Active = false
    Frame.Selectable = false
    Frame.Parent = D_Frame

    local ImageButton_save = Instance.new("ImageButton")
    ImageButton_save.Size = UDim2.new(0, 25, 0, 25)
    ImageButton_save.Position = UDim2.new(1, -90, 0, 0)
    ImageButton_save.BackgroundTransparency = 1
    ImageButton_save.BorderSizePixel = 0
    ImageButton_save.Image = "rbxassetid://13241830406"
    ImageButton_save.ImageColor3 = Color3.fromRGB(120, 120, 255)
    ImageButton_save.Parent = Frame

    local ImageButton_clear = Instance.new("ImageButton")
    ImageButton_clear.Size = UDim2.new(0, 25, 0, 25)
    ImageButton_clear.Position = UDim2.new(1, -60, 0, 0)
    ImageButton_clear.BackgroundTransparency = 1
    ImageButton_clear.BorderSizePixel = 0
    ImageButton_clear.Image = "rbxassetid://12902061564"
    ImageButton_clear.ImageColor3 = Color3.fromRGB(120, 120, 255)
    ImageButton_clear.Parent = Frame

    local ImageButton_close = Instance.new("ImageButton")
    ImageButton_close.Size = UDim2.new(0, 25, 0, 25)
    ImageButton_close.Position = UDim2.new(1, -30, 0, 0)
    ImageButton_close.BackgroundTransparency = 1
    ImageButton_close.BorderSizePixel = 0
    ImageButton_close.Image = "rbxassetid://12942585305"
    ImageButton_close.ImageColor3 = Color3.fromRGB(120, 120, 255)
    ImageButton_close.Parent = Frame

    local ImageButton_global = Instance.new("ImageButton")
    ImageButton_global.Size = UDim2.new(0, 25, 0, 25)
    ImageButton_global.Position = UDim2.new(0.5, -42.5, 0, 0)
    ImageButton_global.BackgroundTransparency = 1
    ImageButton_global.BorderSizePixel = 0
    ImageButton_global.Image = "rbxassetid://14672671455"
    ImageButton_global.ImageColor3 = Color3.fromRGB(190, 190, 255)
    ImageButton_global.Parent = Frame

    local ImageButton_group = Instance.new("ImageButton")
    ImageButton_group.Size = UDim2.new(0, 25, 0, 25)
    ImageButton_group.Position = UDim2.new(0.5, -12.5, 0, 0)
    ImageButton_group.BackgroundTransparency = 1
    ImageButton_group.BorderSizePixel = 0
    ImageButton_group.Image = "rbxassetid://12899886897"
    ImageButton_group.ImageColor3 = Color3.fromRGB(190, 190, 255)
    ImageButton_group.Parent = Frame

    local ImageButton_none = Instance.new("ImageButton")
    ImageButton_none.Size = UDim2.new(0, 25, 0, 25)
    ImageButton_none.Position = UDim2.new(0.5, 17.5, 0, 0)
    ImageButton_none.BackgroundTransparency = 1
    ImageButton_none.BorderSizePixel = 0
    ImageButton_none.Image = "rbxassetid://14672679300"
    ImageButton_none.ImageColor3 = Color3.fromRGB(70, 70, 200)
    ImageButton_none.Parent = Frame

    local ScrollingFrame = Instance.new("ScrollingFrame")
    ScrollingFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    ScrollingFrame.BackgroundTransparency = 0.2
    ScrollingFrame.BorderSizePixel = 0
    ScrollingFrame.Position = UDim2.new(0, 0, 0, 25)
    ScrollingFrame.Size = UDim2.new(1, 0, 1, -25)
    ScrollingFrame.ScrollBarImageColor3 = Color3.fromRGB(90, 90, 255)
    ScrollingFrame.ScrollBarThickness = 5
    ScrollingFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
    ScrollingFrame.Parent = Frame

    --( Function Assets
    local ChatL_Frame = Instance.new("Frame")
    ChatL_Frame.Name = "ChatLog_Frame"
    ChatL_Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ChatL_Frame.BackgroundTransparency = 1
    ChatL_Frame.BorderSizePixel = 0
    ChatL_Frame.Position = UDim2.new(0, 0, 0, 0)
    ChatL_Frame.Size = UDim2.new(1, 0, 0, 20)
    ChatL_Frame.Parent = ScrollingFrame

    local ChatL_Label = Instance.new("TextLabel")
    ChatL_Label.Name = "ChatLog_Label"
    ChatL_Label.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
    ChatL_Label.BackgroundTransparency = 1
    ChatL_Label.BorderColor3 = Color3.fromRGB(110, 172, 216)
    ChatL_Label.BorderSizePixel = 0
    ChatL_Label.Size = UDim2.new(1, -100, 0, ChatL_Frame.Size.Y.Offset)
    ChatL_Label.TextColor3 = Color3.fromRGB(255, 255, 255)
    ChatL_Label.TextSize = 20
    ChatL_Label.Visible = false
    ChatL_Label.TextScaled = true
    ChatL_Label.Parent = ChatL_Frame

    local ChatL_Name = Instance.new("TextLabel")
    ChatL_Name.Name = "ChatLog_Name"
    ChatL_Name.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
    ChatL_Name.BackgroundTransparency = 1
    ChatL_Name.BorderColor3 = Color3.fromRGB(110, 172, 216)
    ChatL_Name.BorderSizePixel = 0
    ChatL_Name.Size = UDim2.new(0, -90, 0, ChatL_Frame.Size.Y.Offset)
    ChatL_Name.TextColor3 = Color3.fromRGB(255, 255, 255)
    ChatL_Name.TextXAlignment = "Left"
    ChatL_Name.TextSize = 20
    ChatL_Name.Visible = false
    ChatL_Name.TextScaled = true
    ChatL_Name.Parent = ChatL_Label
    --)
    Display_ChatL = function(Boolean)
        Frame.Visible = Boolean
        Frame.Active = Boolean
        Frame.Selectable = Boolean
    end

    Create_ChatLNote = function(Text, Text2, ShouldLog)
        if not table.find(LogType, ShouldLog) then return end

        for i, v in pairs(ScrollingFrame:GetChildren()) do if (v ~= ChatL_Label and v ~= ChatL_Name) then
            v.Position = UDim2.new(0, 90, 0, 20*(#ScrollingFrame:GetChildren()-((i)-1)))
        end end

        local Label = ChatL_Label:Clone()
        Label.Visible = true
        Label.Parent = ScrollingFrame
        Label.Position = UDim2.new(0, 0, 0, 0)
        Label.Text = Text

        local Name = ChatL_Name:Clone()
        Name.Visible = true
        Name.Parent = Label
        Name.TextColor3 = Color3.fromRGB(math.random(60, 254), math.random(60, 254), math.random(60, 254))
        Name.Position = UDim2.new(0, 0, 0, 0)
        Name.Text = Text2

        spawn(function()
            for i, v in pairs(ScrollingFrame:GetChildren()) do
                if (v ~= ChatL_Label and v ~= ChatL_Name) then 
                    v.Position = UDim2.new(0, 90, 0, 20*(#ScrollingFrame:GetChildren()-(i)))
                end
            end
        end)
    end
    ImageButton_group.MouseButton1Click:Connect(function()
        if ImageButton_group.ImageColor3 == Color3.fromRGB(190, 190, 255) then
            for i, v in pairs(LogType) do if v.Name == "Group" then table.remove(LogType, i) break end end
            ImageButton_group.ImageColor3 = Color3.fromRGB(120, 120, 255)
        else
            table.insert(LogType, "Group")
            ImageButton_group.ImageColor3 = Color3.fromRGB(190, 190, 255)
        end
    end)
    ImageButton_global.MouseButton1Click:Connect(function()
        if ImageButton_global.ImageColor3 == Color3.fromRGB(190, 190, 255) then
            for i, v in pairs(LogType) do if v.Name == "Global" then table.remove(LogType, i) break end end
            for i, v in pairs(LogType) do table.remove(LogType, i) end
            ImageButton_global.ImageColor3 = Color3.fromRGB(120, 120, 255)
        else
            table.insert(LogType, "Global")
            ImageButton_global.ImageColor3 = Color3.fromRGB(190, 190, 255)
        end
    end)
    ImageButton_none.MouseButton1Click:Connect(function()
        for i, v in pairs(LogType) do table.remove(LogType, i) end
        ImageButton_group.ImageColor3 = Color3.fromRGB(120, 120, 255)
        ImageButton_global.ImageColor3 = Color3.fromRGB(120, 120, 255)
    end)
    ImageButton_clear.MouseButton1Click:Connect(function()
        for i, v in pairs(ScrollingFrame:GetChildren()) do
            if v.Name ~= "ChatL_Frame" then
                v:Destroy()
            end
        end
    end)
    ImageButton_save.MouseButton1Click:Connect(function()
        local ChatLogData = {}
        
        for _, Child in pairs(ScrollingFrame:GetChildren()) do
            if Child.Name ~= "ChatLog_Frame" then
                local Message = Child.Text
                local Name = nil for i, v in pairs(Child:GetChildren()) do if not v.TextColor3 == Color3.fromRGB(255, 255, 255) then Name = v.Text end end
                local Final = (Name .. ": " .. Message)
                table.insert(ChatLogData, Final)
            end
        end
        --[[
            angiounjgaw
                hsdr
                shrd
                hrd
                hdshdshsdhdsh
                sdrhdhd
            --]]
        local NewChatLogData = table.concat(ChatLogData, "\n")
        makefolder("Agony/Apoc/ChatLogs") task.wait(0.1)
        writefile("Agony/Apoc/ChatLogs/" .. tostring(os.time()) .. ".txt", NewChatLogData)
    end)
    ImageButton_close.MouseButton1Click:Connect(function()
        Frame.Visible = false
        Frame.Active = false
        Frame.Selectable = false
    end)
end)

