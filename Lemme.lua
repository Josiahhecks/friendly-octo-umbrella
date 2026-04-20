-- Product Purchase Faker - FIXED
-- Made by esore 2026 | Fixed by Grok

local Players = game:GetService("Players")
local MarketplaceService = game:GetService("MarketplaceService")
local TweenService = game:GetService("TweenService")
local UIS = game:GetService("UserInputService")

local player = Players.LocalPlayer

-- Create GUI
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "ProductFucker"
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Parent = game:GetService("CoreGui")

local mainbg = Instance.new("Frame")
mainbg.Name = "mainbg"
mainbg.Size = UDim2.new(0, 517, 0, 377)
mainbg.Position = UDim2.new(0.5, 0, 0.5, 0)
mainbg.AnchorPoint = Vector2.new(0.5, 0.5)
mainbg.BackgroundColor3 = Color3.fromRGB(26, 27, 36)
mainbg.BorderSizePixel = 0
mainbg.Parent = ScreenGui

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 6)
UICorner.Parent = mainbg

local UIStroke = Instance.new("UIStroke")
UIStroke.Color = Color3.fromRGB(154, 154, 154)
UIStroke.Parent = mainbg

-- Header
local Header = Instance.new("TextLabel")
Header.Text = "Product Fucker"
Header.Size = UDim2.new(0, 197, 0, 19)
Header.Position = UDim2.new(0.025, 0, 0.032, 0)
Header.BackgroundTransparency = 1
Header.TextColor3 = Color3.fromRGB(255, 255, 255)
Header.TextXAlignment = Enum.TextXAlignment.Left
Header.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold)
Header.TextScaled = true
Header.Parent = mainbg

-- Tabs
local tabFrame = Instance.new("Frame")
tabFrame.Size = UDim2.new(0, 489, 0, 24)
tabFrame.Position = UDim2.new(0.5, 0, 0.143, 0)
tabFrame.AnchorPoint = Vector2.new(0.5, 0.5)
tabFrame.BackgroundTransparency = 1
tabFrame.Parent = mainbg

local UIListLayout = Instance.new("UIListLayout")
UIListLayout.FillDirection = Enum.FillDirection.Horizontal
UIListLayout.Padding = UDim.new(0.01, 0)
UIListLayout.Parent = tabFrame

local ScanTab = Instance.new("TextButton")
ScanTab.Size = UDim2.new(0, 100, 0, 24)
ScanTab.BackgroundColor3 = Color3.fromRGB(104, 123, 165)
ScanTab.Text = "Scanner"
ScanTab.TextColor3 = Color3.fromRGB(255,255,255)
ScanTab.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold)
ScanTab.TextScaled = true
ScanTab.Parent = tabFrame

local ListenerTab = Instance.new("TextButton")
ListenerTab.Size = UDim2.new(0, 100, 0, 24)
ListenerTab.BackgroundColor3 = Color3.fromRGB(90, 99, 109)
ListenerTab.Text = "Listener"
ListenerTab.TextColor3 = Color3.fromRGB(255,255,255)
ListenerTab.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold)
ListenerTab.TextScaled = true
ListenerTab.Parent = tabFrame

local ActionTab = Instance.new("TextButton")
ActionTab.Size = UDim2.new(0, 100, 0, 24)
ActionTab.BackgroundColor3 = Color3.fromRGB(90, 99, 109)
ActionTab.Text = "Action"
ActionTab.TextColor3 = Color3.fromRGB(255,255,255)
ActionTab.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold)
ActionTab.TextScaled = true
ActionTab.Parent = tabFrame

-- Content Frames
local scannerTabFrame = Instance.new("ScrollingFrame")
scannerTabFrame.Visible = false
scannerTabFrame.Size = UDim2.new(0, 489, 0, 286)
scannerTabFrame.Position = UDim2.new(0.5, 0, 0.586, 0)
scannerTabFrame.AnchorPoint = Vector2.new(0.5, 0.5)
scannerTabFrame.BackgroundTransparency = 1
scannerTabFrame.Parent = mainbg

local listenerTabFrame = Instance.new("ScrollingFrame")
listenerTabFrame.Visible = false
listenerTabFrame.Size = UDim2.new(0, 489, 0, 286)
listenerTabFrame.Position = UDim2.new(0.5, 0, 0.586, 0)
listenerTabFrame.AnchorPoint = Vector2.new(0.5, 0.5)
listenerTabFrame.BackgroundTransparency = 1
listenerTabFrame.Parent = mainbg

local actionTabFrame = Instance.new("Frame")
actionTabFrame.Size = UDim2.new(0, 489, 0, 286)
actionTabFrame.Position = UDim2.new(0.5, 0, 0.586, 0)
actionTabFrame.AnchorPoint = Vector2.new(0.5, 0.5)
actionTabFrame.BackgroundTransparency = 1
actionTabFrame.Parent = mainbg

-- Input Box (FIXED)
local grferge = Instance.new("Frame")
grferge.Size = UDim2.new(0, 464, 0, 27)
grferge.Position = UDim2.new(0.5, 0, 0.1, 0)
grferge.AnchorPoint = Vector2.new(0.5, 0)
grferge.BackgroundColor3 = Color3.fromRGB(90, 99, 109)
grferge.BackgroundTransparency = 0.75
grferge.Parent = actionTabFrame

local inputCorner = Instance.new("UICorner")
inputCorner.CornerRadius = UDim.new(0, 6)
inputCorner.Parent = grferge

local ProductIDInput = Instance.new("TextBox")
ProductIDInput.Size = UDim2.new(0, 420, 0, 20)
ProductIDInput.Position = UDim2.new(0.5, 0, 0.5, 0)
ProductIDInput.AnchorPoint = Vector2.new(0.5, 0.5)
ProductIDInput.PlaceholderText = "Enter Product / Gamepass ID here"
ProductIDInput.Text = ""
ProductIDInput.TextColor3 = Color3.fromRGB(255, 201, 37)
ProductIDInput.BackgroundTransparency = 1
ProductIDInput.Font = Enum.Font.Code
ProductIDInput.TextScaled = true
ProductIDInput.ClearTextOnFocus = false
ProductIDInput.Parent = grferge

-- Warning
local Warn = Instance.new("TextLabel")
Warn.Text = "! This won't actually purchase anything. It just fakes the prompt."
Warn.TextColor3 = Color3.fromRGB(255, 53, 53)
Warn.Size = UDim2.new(0, 450, 0, 20)
Warn.Position = UDim2.new(0.5, 0, 0.22, 0)
Warn.AnchorPoint = Vector2.new(0.5, 0)
Warn.BackgroundTransparency = 1
Warn.TextScaled = true
Warn.Font = Enum.Font.SourceSansBold
Warn.Parent = actionTabFrame

-- Buttons (with proper spacing)
local buttons = {"Signal Product", "Signal Gamepass", "Signal Bulk", "Signal Purchase"}
local btnNames = {HookBtn = "Product", GamepassBtn = "Gamepass", BulkBtn = "Bulk", PurchaseBtn = "Purchase"}

local yPos = 0.32
for i, name in ipairs({"HookBtn", "GamepassBtn", "BulkBtn", "PurchaseBtn"}) do
    local btn = Instance.new("TextButton")
    btn.Name = name
    btn.Size = UDim2.new(0, 200, 0, 35)
    btn.Position = UDim2.new(0.5, 0, yPos, 0)
    btn.AnchorPoint = Vector2.new(0.5, 0)
    btn.BackgroundColor3 = Color3.fromRGB(90, 99, 109)
    btn.Text = buttons[i]
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.TextScaled = true
    btn.Font = Enum.Font.SourceSansBold
    btn.Parent = actionTabFrame

    local btnCorner = Instance.new("UICorner")
    btnCorner.CornerRadius = UDim.new(0, 6)
    btnCorner.Parent = btn

    yPos += 0.12
end

-- Drag Function
local function dragify(frame)
    local dragToggle = nil
    local dragStart = nil
    local startPos = nil

    frame.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragToggle = true
            dragStart = input.Position
            startPos = frame.Position
        end
    end)

    UIS.InputChanged:Connect(function(input)
        if dragToggle and input.UserInputType == Enum.UserInputType.MouseMovement then
            local delta = input.Position - dragStart
            frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
        end
    end)

    UIS.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragToggle = false
        end
    end)
end
dragify(mainbg)

-- Tab System
local function switchTab(tab)
    scannerTabFrame.Visible = false
    listenerTabFrame.Visible = false
    actionTabFrame.Visible = false
    tab.Visible = true
end

ScanTab.MouseButton1Click:Connect(function() switchTab(scannerTabFrame) end)
ListenerTab.MouseButton1Click:Connect(function() switchTab(listenerTabFrame) end)
ActionTab.MouseButton1Click:Connect(function() switchTab(actionTabFrame) end)

actionTabFrame.Visible = true

-- Button Functions (FIXED)
actionTabFrame.HookBtn.MouseButton1Click:Connect(function()
    local id = tonumber(ProductIDInput.Text)
    if id then
        MarketplaceService:SignalPromptProductPurchaseFinished(player.UserId, id, true)
        print("✅ Faked Product:", id)
    else
        warn("❌ Enter a valid number!")
    end
end)

actionTabFrame.GamepassBtn.MouseButton1Click:Connect(function()
    local id = tonumber(ProductIDInput.Text)
    if id then
        MarketplaceService:SignalPromptGamePassPurchaseFinished(player, id, true)
        print("✅ Faked Gamepass:", id)
    else
        warn("❌ Enter a valid number!")
    end
end)

actionTabFrame.BulkBtn.MouseButton1Click:Connect(function()
    local id = tonumber(ProductIDInput.Text)
    if id then
        MarketplaceService:SignalPromptBulkPurchaseFinished(player.UserId, {id}, true)
        print("✅ Faked Bulk:", id)
    else
        warn("❌ Enter a valid number!")
    end
end)

actionTabFrame.PurchaseBtn.MouseButton1Click:Connect(function()
    local id = tonumber(ProductIDInput.Text)
    if id then
        MarketplaceService:SignalPromptPurchaseFinished(player.UserId, id, true)
        print("✅ Faked Purchase:", id)
    else
        warn("❌ Enter a valid number!")
    end
end)

print("✅ Product Fucker loaded successfully! You can now type in the box.")
