local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "SlotsHubMenu"
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local MainFrame = Instance.new("Frame")
MainFrame.Size = UDim2.new(0.5, 0, 0.3, 0)
MainFrame.Position = UDim2.new(0.25, 0, 0.35, 0)
MainFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
MainFrame.BackgroundTransparency = 0.1
MainFrame.BorderSizePixel = 0
MainFrame.Parent = ScreenGui
MainFrame.ClipsDescendants = true

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 20)
UICorner.Parent = MainFrame

local TitleLabel = Instance.new("TextLabel")
TitleLabel.Size = UDim2.new(1, 0, 0.3, 0)
TitleLabel.Position = UDim2.new(0, 0, 0, 0)
TitleLabel.BackgroundTransparency = 1
TitleLabel.Text = "Slots Hub"
TitleLabel.Font = Enum.Font.GothamBold
TitleLabel.TextSize = 48
TitleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TitleLabel.Parent = MainFrame

local TextStroke = Instance.new("UIStroke")
TextStroke.Parent = TitleLabel
TextStroke.Thickness = 1
TextStroke.Color = Color3.fromRGB(0, 0, 0)

local DecorativeFrame = Instance.new("Frame")
DecorativeFrame.Size = UDim2.new(0.8, 0, 0.5, 0)
DecorativeFrame.Position = UDim2.new(0.1, 0, 0.4, 0)
DecorativeFrame.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
DecorativeFrame.BackgroundTransparency = 0.5
DecorativeFrame.Parent = MainFrame

local DecorativeCorner = Instance.new("UICorner")
DecorativeCorner.CornerRadius = UDim.new(0, 15)
DecorativeCorner.Parent = DecorativeFrame

local UIGradient = Instance.new("UIGradient")
UIGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(200, 200, 200))
}
UIGradient.Rotation = 45
UIGradient.Parent = DecorativeFrame

local LogoImage = Instance.new("ImageLabel")
LogoImage.Size = UDim2.new(0.6, 0, 0.6, 0)
LogoImage.Position = UDim2.new(0.2, 0, 0.2, 0)
LogoImage.BackgroundTransparency = 1
LogoImage.Image = "rbxassetid://8652665149"
LogoImage.Parent = DecorativeFrame

local ToggleButton = Instance.new("ImageButton")
ToggleButton.Size = UDim2.new(0.1, 0, 0.1, 0)
ToggleButton.Position = UDim2.new(0, 0, 0.5, -25)
ToggleButton.BackgroundTransparency = 1
ToggleButton.Image = "rbxassetid://8652665149"
ToggleButton.Parent = ScreenGui

local CloseButton = Instance.new("TextButton")
CloseButton.Size = UDim2.new(0.1, 0, 0.1, 0)
CloseButton.Position = UDim2.new(0.9, 0, 0, 0) 
CloseButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0) 
CloseButton.Text = "X"
CloseButton.Font = Enum.Font.GothamBold
CloseButton.TextSize = 24
CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.Parent = MainFrame

local isMenuVisible = true

local function toggleMenu()
    isMenuVisible = not isMenuVisible
    MainFrame.Visible = isMenuVisible
end

local function closeMenu()
    ScreenGui:Destroy()
end

ToggleButton.MouseButton1Click:Connect(toggleMenu)
CloseButton.MouseButton1Click:Connect(closeMenu)

MainFrame.Visible = isMenuVisible
