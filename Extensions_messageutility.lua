pcall(function()
  local Message_GUI = Instance.new("ScreenGui")
  Message_GUI.Name = "Agony_Extensions-MessagingUtility"
  Message_GUI.Parent = game:GetService("CoreGui")
  
  local MFrame = Instance.new("Frame")
  MFrame.Parent = Message_GUI
  MFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  MFrame.BackgroundTransparency = 1
  MFrame.BorderSizePixel = 0
  MFrame.Position = UDim2.new(1, -250, 0.05, 0)
  MFrame.Size = UDim2.new(0, 240, 0.9, 0)
  MFrame.Active = false
  MFrame.Selectable = false
  
  local Frame = Instance.new("Frame")
  Frame.Parent = MFrame
  Frame.Name = "MessageHolder"
  Frame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
  Frame.BackgroundTransparency = 1
  Frame.BorderSizePixel = 0
  Frame.Position = UDim2.new(0, 0, 0, 0)
  Frame.Size = UDim2.new(1, 0, 0, 60)
  Frame.Visible = false
  
  local Image = Instance.new("ImageLabel")
  Image.Size = UDim2.new(0, 60, 0, Frame.Size.Y.Offset)
  Image.Name = "MessageImage"
  Image.BackgroundTransparency = 1
  Image.BorderSizePixel = 0
  Image.Visible = false
  Image.Image = "rbxassetid://14982645221"
  Image.ImageColor3 = Color3.fromRGB(255, 255, 255)
  Image.Parent = Frame
  
  local PLabel = Instance.new("TextLabel")
  PLabel.Parent = Frame
  PLabel.Name = "PTextLabel"
  PLabel.BackgroundTransparency = 1
  PLabel.BorderSizePixel = 0
  PLabel.Size = UDim2.new(1, -65, 0, Frame.Size.Y.Offset-45)
  PLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
  PLabel.Font = Enum.Font.SourceSansBold
  PLabel.TextSize = 15
  PLabel.TextWrapped = true
  PLabel.Visible = false
  PLabel.TextXAlignment = "Center"
  
  local Label = Instance.new("TextLabel")
  Label.Parent = Frame
  Label.Name = "TextLabel"
  Label.BackgroundTransparency = 1
  Label.BorderSizePixel = 0
  Label.Size = UDim2.new(1, -65, 0, Frame.Size.Y.Offset+15)
  Label.TextColor3 = Color3.fromRGB(255, 255, 255)
  Label.TextSize = 14
  Label.TextWrapped = true
  Label.Visible = false
  Label.TextXAlignment = "Center"
  
  Notify = function(Text, Text2, Time)
    for i, v in pairs(MFrame:GetChildren()) do if v ~= Frame then
      v.Position = UDim2.new(0, 0, 0, 60*(#MFrame:GetChildren()-((i)-1)))
    end end
    
    local Holder = Frame:Clone()
    Holder.Visible = true
    Holder.Parent = MFrame
    Holder.Position = UDim2.new(0, math.floor(Frame.Size.X.Offset*2), 0, 0)
    
    local Image = PLabel:Clone()
    Image.Visible = true
    Image.Parent = Holder
    
    local HeadLabel = PLabel:Clone()
    HeadLabel.Visible = true
    HeadLabel.Parent = Holder
    HeadLabel.Text = Text
    
    local Label = ChatL_Name:Clone()
    Label.Visible = true
    Label.Parent = Holder
    Label.Text = Text2
    
    if not tonumber(Time) or Time < 3 then
      Time = 3
    end

    Holder:TweenPosition(UDim2.new(0, 0, 0, 0),Enum.EasingDirection.Out,Enum.EasingStyle.Quart,0.5,true)
    spawn(function()
      wait(Time)
      for i, v in pairs(MFrame:GetChildren()) do
        if v ~= Frame then 
          v.Position = UDim2.new(0, 0, 0, 60*(#MFrame:GetChildren()-(i)))
          Holder:TweenPosition(UDim2.new(0, math.floor(Holder.Size.X.Offset*2), 0, 60*(#MFrame:GetChildren()-(i))),Enum.EasingDirection.Out,Enum.EasingStyle.Quart,0.5,true)
        end
      end
      wait(0.5)
      Holder:Remove()
    end)
  end
end)
