--// Dịch vụ cần thiết
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")

--// UI Setup
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")

--// Khung chọn người chơi
local Dropdown = Instance.new("Frame")
Dropdown.Parent = ScreenGui
Dropdown.Size = UDim2.new(0, 200, 0, 120)
Dropdown.Position = UDim2.new(0.05, 0, 0.1, 0)
Dropdown.BackgroundColor3 = Color3.fromRGB(50, 50, 50)

local PlayerSelect = Instance.new("TextButton")
PlayerSelect.Parent = Dropdown
PlayerSelect.Size = UDim2.new(1, 0, 0, 40)
PlayerSelect.Text = "Chọn người chơi"
PlayerSelect.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
PlayerSelect.TextColor3 = Color3.fromRGB(255, 255, 255)
PlayerSelect.Font = Enum.Font.SourceSansBold
PlayerSelect.TextSize = 18

--// Danh sách người chơi
local PlayerList = Instance.new("ScrollingFrame")
PlayerList.Parent = Dropdown
PlayerList.Size = UDim2.new(1, 0, 1, -40)
PlayerList.Position = UDim2.new(0, 0, 0, 40)
PlayerList.BackgroundTransparency = 1
PlayerList.Visible = false
PlayerList.CanvasSize = UDim2.new(0, 0, 0, 200)

local UIListLayout = Instance.new("UIListLayout")
UIListLayout.Parent = PlayerList
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

--// Nút Fly
local FlyButton = Instance.new("TextButton")
FlyButton.Parent = ScreenGui
FlyButton.Size = UDim2.new(0, 200, 0, 40)
FlyButton.Position = UDim2.new(0.05, 0, 0.35, 0)
FlyButton.Text = "Fly to Player"
FlyButton.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
FlyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
FlyButton.Font = Enum.Font.SourceSansBold
FlyButton.TextSize = 18

--// Thanh chỉnh tốc độ
local SpeedSlider = Instance.new("TextBox")
SpeedSlider.Parent = ScreenGui
SpeedSlider.Size = UDim2.new(0, 200, 0, 40)
SpeedSlider.Position = UDim2.new(0.05, 0, 0.45, 0)
SpeedSlider.Text = "Speed: 3"
SpeedSlider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SpeedSlider.TextColor3 = Color3.fromRGB(0, 0, 0)
SpeedSlider.Font = Enum.Font.SourceSansBold
SpeedSlider.TextSize = 18

--// Biến lưu trữ
local selectedPlayer = nil
local flySpeed = 3
local flying = false
local heightOffset = 10  -- Độ cao giữ nguyên khi bay
local flyConnection = nil
local noClipConnection = nil
local aimbotEnabled = false  -- Biến trạng thái aimbot

--// Cập nhật danh sách người chơi
local function UpdatePlayerList()
    for _, child in pairs(PlayerList:GetChildren()) do
        if child:IsA("TextButton") then
            child:Destroy()
        end
    end

    for _, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer then
            local PlayerButton = Instance.new("TextButton")
            PlayerButton.Parent = PlayerList
            PlayerButton.Size = UDim2.new(1, 0, 0, 30)
            PlayerButton.Text = player.Name
            PlayerButton.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
            PlayerButton.TextColor3 = Color3.fromRGB(255, 255, 255)
            PlayerButton.Font = Enum.Font.SourceSans
            PlayerButton.TextSize = 16

            PlayerButton.MouseButton1Click:Connect(function()
                selectedPlayer = player
                PlayerSelect.Text = "▶ " .. player.Name
                PlayerList.Visible = false
            end)
        end
    end
end

--// Mở danh sách người chơi
PlayerSelect.MouseButton1Click:Connect(function()
    PlayerList.Visible = not PlayerList.Visible
    UpdatePlayerList()
end)

--// Cập nhật tốc độ từ thanh chỉnh
SpeedSlider.FocusLost:Connect(function()
    local newSpeed = tonumber(SpeedSlider.Text:match("%d+"))
    if newSpeed and newSpeed > 0 then
        flySpeed = newSpeed
        SpeedSlider.Text = "Speed: " .. flySpeed
    else
        SpeedSlider.Text = "Speed: " .. flySpeed
    end
end)

--// NoClip (chỉ hoạt động khi bay)
local function EnableNoClip()
    if noClipConnection then return end
    noClipConnection = RunService.Stepped:Connect(function()
        for _, part in pairs(Character:GetChildren()) do
            if part:IsA("BasePart") then
                part.CanCollide = false
            end
        end
    end)
end

local function DisableNoClip()
    if noClipConnection then
        noClipConnection:Disconnect()
        noClipConnection = nil
    end
end

--// Aimbot (nút bật/tắt aimbot camera)
local function AimbotCamera()
    if selectedPlayer and selectedPlayer.Character then
        local targetHRP = selectedPlayer.Character:FindFirstChild("HumanoidRootPart")
        if targetHRP then
            local lookAtPosition = targetHRP.Position
            local camera = game.Workspace.CurrentCamera
            if aimbotEnabled then
                camera.CFrame = CFrame.new(camera.CFrame.Position, lookAtPosition)
            end
        end
    end
end

--// Bay đến người chơi theo tốc độ chỉnh
local function FlyToPlayer()
    if flying then
        flying = false
        DisableNoClip()
        if flyConnection then
            flyConnection:Disconnect()
            flyConnection = nil
        end
        return
    end

    if selectedPlayer and selectedPlayer.Character then
        local targetHRP = selectedPlayer.Character:FindFirstChild("HumanoidRootPart")
        if targetHRP then
            flying = true
            EnableNoClip()

            flyConnection = RunService.RenderStepped:Connect(function(deltaTime)
                if not flying or not targetHRP or not HumanoidRootPart then return end
                
                local direction = (targetHRP.Position - HumanoidRootPart.Position).unit
                local moveDistance = flySpeed * deltaTime
                local newPosition = HumanoidRootPart.Position + direction * moveDistance
                newPosition = Vector3.new(newPosition.X, targetHRP.Position.Y + heightOffset, newPosition.Z)

                HumanoidRootPart.Velocity = Vector3.zero
                HumanoidRootPart.CFrame = CFrame.new(newPosition, targetHRP.Position)

                -- Cập nhật aimbot khi bay
                AimbotCamera()
            end)
        end
    end
end

--// Kích hoạt bay khi bấm nút
FlyButton.MouseButton1Click:Connect(FlyToPlayer)

--// Nút bật/tắt aimbot
local AimbotButton = Instance.new("TextButton")
AimbotButton.Parent = ScreenGui
AimbotButton.Size = UDim2.new(0, 200, 0, 40)
AimbotButton.Position = UDim2.new(0.05, 0, 0.55, 0)
AimbotButton.Text = "Toggle Aimbot"
AimbotButton.BackgroundColor3 = Color3.fromRGB(255, 100, 100)
AimbotButton.TextColor3 = Color3.fromRGB(255, 255, 255)
AimbotButton.Font = Enum.Font.SourceSansBold
AimbotButton.TextSize = 18

AimbotButton.MouseButton1Click:Connect(function()
    aimbotEnabled = not aimbotEnabled
    if aimbotEnabled then
        AimbotButton.Text = "Aimbot: ON"
    else
        AimbotButton.Text = "Aimbot: OFF"
    end
end)

--// Auto reset danh sách khi có người vào/ra
Players.PlayerAdded:Connect(UpdatePlayerList)
Players.PlayerRemoving:Connect(UpdatePlayerList)

--// Gọi cập nhật danh sách lần đầu
UpdatePlayerList()
