local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

-- KeyAuth Configuration
local name = "Slots Hub" -- Application Name
local ownerid = "weWIyWKA5z" -- Owner ID
local version = "1.0" -- Application Version

-- Initialize KeyAuth
local KeyAuth = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Rayfield/main/keyauth"))()
KeyAuth:init(name, ownerid, version)

-- Create Window
local Window = Rayfield:CreateWindow({
    Name = "Slots Hub v3",
    LoadingTitle = "Slots Hub UI",
    LoadingSubtitle = "Brembo.py",
    ConfigurationSaving = {
        Enabled = true,
        FolderName = "Rayfield Interface Suite",
        FileName = "Big Hub"
    },
    KeySystem = true, -- Key system enabled
    KeySettings = {
        Title = "Slots Hub",
        Subtitle = "Key System",
        Note = "Please enter your key below.",
        SaveKey = true
    }
})

-- Creating a Tab
local Tab = Window:CreateTab("Main Tab", 4483362458) -- Title, Image

-- Creating a Toggle
local Toggle = Tab:CreateToggle({
    Name = "Toggle Example",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file
    Callback = function(Value)
        -- The function that takes place when the toggle is pressed
        -- The variable (Value) is a boolean on whether the toggle is true or false
    end,
})

-- Creating a Slider
local Slider = Tab:CreateSlider({
    Name = "Slider Example",
    Range = {0, 100},
    Increment = 10,
    Suffix = "Bananas",
    CurrentValue = 10,
    Flag = "Slider1", -- A flag is the identifier for the configuration file
    Callback = function(Value)
        -- The function that takes place when the slider changes
        -- The variable (Value) is a number which correlates to the value the slider is currently at
    end,
})
