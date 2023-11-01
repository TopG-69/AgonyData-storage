local Button = 

Button.MouseButton1Click:Connect(function()
	spawn(function()
		if MapName == "Reborn" then local PosX = ((Mouse.X / Button.Size.X.Offset) * 19000) PosY = ((Mouse.Y / Button.Size.Y.Offset) * 19000)
		elseif MapName == "Reimagined" then local PosX = ((Mouse.X / Button.Size.X.Offset) * 19000) PosY = ((Mouse.Y / Button.Size.Y.Offset) * 19000) 
		else local PosX = ((Mouse.X / Button.Size.X.Offset) * 19000) PosY = ((Mouse.Y / Button.Size.Y.Offset) * 19000) end

		task.wait(.1)
		Teleport("Location", LocalPlayer, Vector3.new(PosX, 0, PosY))
	end)
end)
