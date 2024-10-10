-- Създаваме ScreenGui за менюто
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "SlotsHubMenu"
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Създаваме Frame, който ще е контейнер за елементите
local MainFrame = Instance.new("Frame")
MainFrame.Size = UDim2.new(0.5, 0, 0.3, 0) -- Размер (50% от ширината и 30% от височината на екрана)
MainFrame.Position = UDim2.new(0.25, 0, 0.35, 0) -- Центрирано в екрана
MainFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 45) -- Тъмносив фон
MainFrame.BackgroundTransparency = 0.1 -- Лека прозрачност
MainFrame.BorderSizePixel = 0 -- Без рамки
MainFrame.Parent = ScreenGui
MainFrame.ClipsDescendants = true -- Заобляне на рамката

-- Заобляне на ъглите на MainFrame
local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 20) -- Радиус на заобляне
UICorner.Parent = MainFrame

-- Създаваме заглавие "Slots Hub"
local TitleLabel = Instance.new("TextLabel")
TitleLabel.Size = UDim2.new(1, 0, 0.3, 0) -- Заглавието заема 30% от Frame-а
TitleLabel.Position = UDim2.new(0, 0, 0, 0) -- Позиция на заглавието
TitleLabel.BackgroundTransparency = 1 -- Без фон
TitleLabel.Text = "Slots Hub"
TitleLabel.Font = Enum.Font.GothamBold -- Модерен стил на шрифта
TitleLabel.TextSize = 48 -- Голям размер на текста
TitleLabel.TextColor3 = Color3.fromRGB(255, 255, 255) -- Бял текст
TitleLabel.Parent = MainFrame

-- Добавяме сянка към заглавието за по-елегантен вид
local TextStroke = Instance.new("UIStroke")
TextStroke.Parent = TitleLabel
TextStroke.Thickness = 1 -- Дебелина на сенката
TextStroke.Color = Color3.fromRGB(0, 0, 0) -- Черна сянка

-- Добавяме визуален елемент (например лого или графика)
local DecorativeFrame = Instance.new("Frame")
DecorativeFrame.Size = UDim2.new(0.8, 0, 0.5, 0) -- Размер на декоративния елемент
DecorativeFrame.Position = UDim2.new(0.1, 0, 0.4, 0) -- Централизиране
DecorativeFrame.BackgroundColor3 = Color3.fromRGB(100, 100, 100) -- Лекосив фон
DecorativeFrame.BackgroundTransparency = 0.5 -- Прозрачен елемент
DecorativeFrame.Parent = MainFrame

-- Заобляне на ъглите на DecorativeFrame
local DecorativeCorner = Instance.new("UICorner")
DecorativeCorner.CornerRadius = UDim.new(0, 15) -- Заобляне на декоративния елемент
DecorativeCorner.Parent = DecorativeFrame

-- Добавяме плавни преходи за по-модерен вид
local UIGradient = Instance.new("UIGradient")
UIGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(200, 200, 200))
} -- Преход между два нюанса на сивото
UIGradient.Rotation = 45 -- Ротация на градиента
UIGradient.Parent = DecorativeFrame

-- Добавяме текстура или изображение като декоративен елемент (например лого)
local LogoImage = Instance.new("ImageLabel")
LogoImage.Size = UDim2.new(0.6, 0, 0.6, 0) -- Размер на изображението
LogoImage.Position = UDim2.new(0.2, 0, 0.2, 0) -- Централно разположено в рамката
LogoImage.BackgroundTransparency = 1 -- Без фон
LogoImage.Image = "rbxassetid://YOUR_IMAGE_ID" -- Задай изображение чрез asset ID
LogoImage.Parent = DecorativeFrame
