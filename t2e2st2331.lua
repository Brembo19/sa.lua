local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

-- Application Configuration
local name = "Slots Hub" -- Application Name
local ownerid = "weWIyWKA5z" -- Owner ID
local version = "1.0" -- Application Version

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
    KeySystem = false -- Key system disabled
})

-- Placeholder for KeyAuth System
local function initializeKeyAuth()
    -- Implement your KeyAuth logic here
    -- You can use `name`, `ownerid`, and `version` as needed
end

-- Call the KeyAuth initialization function (optional)
-- initializeKeyAuth()

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
