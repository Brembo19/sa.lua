-- Създаване на основния ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "CustomUI"
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Първи панел (Console)
local consoleFrame = Instance.new("Frame")
consoleFrame.Size = UDim2.new(0, 250, 0, 200)
consoleFrame.Position = UDim2.new(0.1, 0, 0.1, 0)
consoleFrame.BackgroundColor3 = Color3.fromRGB(50, 40, 100)  -- Тъмно-лилав цвят
consoleFrame.BorderSizePixel = 2
consoleFrame.BorderColor3 = Color3.fromRGB(90, 70, 180)  -- Светло-лилав цвят
consoleFrame.Parent = screenGui

-- Текст за "Console" панела
local consoleTitle = Instance.new("TextLabel")
consoleTitle.Size = UDim2.new(1, 0, 0.15, 0)
consoleTitle.Position = UDim2.new(0, 0, 0, 0)
consoleTitle.BackgroundTransparency = 1
consoleTitle.Text = "Console"
consoleTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
consoleTitle.Font = Enum.Font.SourceSansBold
consoleTitle.TextSize = 20
consoleTitle.Parent = consoleFrame

-- Примерен текст за съдържание в "Console" панела
local consoleText = Instance.new("TextLabel")
consoleText.Size = UDim2.new(1, 0, 0.85, 0)
consoleText.Position = UDim2.new(0, 0, 0.15, 0)
consoleText.BackgroundTransparency = 1
consoleText.Text = "Stat: Going To mjw8035\nRun Time: 00:01:23\nCash Earned: $44,535\nCash Per Hour: $1,931,638\nKids Arrested: 4"
consoleText.TextColor3 = Color3.fromRGB(255, 255, 255)
consoleText.Font = Enum.Font.SourceSans
consoleText.TextSize = 16
consoleText.TextXAlignment = Enum.TextXAlignment.Left
consoleText.TextYAlignment = Enum.TextYAlignment.Top
consoleText.Parent = consoleFrame

-- Втори панел (Log)
local logFrame = Instance.new("Frame")
logFrame.Size = UDim2.new(0, 250, 0, 150)
logFrame.Position = UDim2.new(0.4, 0, 0.1, 0)
logFrame.BackgroundColor3 = Color3.fromRGB(50, 40, 100)  -- Тъмно-лилав цвят
logFrame.BorderSizePixel = 2
logFrame.BorderColor3 = Color3.fromRGB(90, 70, 180)  -- Светло-лилав цвят
logFrame.Parent = screenGui

-- Текст за "Log" панела
local logTitle = Instance.new("TextLabel")
logTitle.Size = UDim2.new(1, 0, 0.2, 0)
logTitle.Position = UDim2.new(0, 0, 0, 0)
logTitle.BackgroundTransparency = 1
logTitle.Text = "Log"
logTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
logTitle.Font = Enum.Font.SourceSansBold
logTitle.TextSize = 20
logTitle.Parent = logFrame

-- Примерен текст за съдържание в "Log" панела
local logText = Instance.new("TextLabel")
logText.Size = UDim2.new(1, 0, 0.8, 0)
logText.Position = UDim2.new(0, 0, 0.2, 0)
logText.BackgroundTransparency = 1
logText.Text = "Player Under Roof\nLoading Players"
logText.TextColor3 = Color3.fromRGB(255, 255, 255)
logText.Font = Enum.Font.SourceSans
logText.TextSize = 16
logText.TextXAlignment = Enum.TextXAlignment.Left
logText.TextYAlignment = Enum.TextYAlignment.Top
logText.Parent = logFrame
