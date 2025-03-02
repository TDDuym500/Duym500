--// Dịch vụ cần thiết
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")

local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local Humanoid = Character:WaitForChild("Humanoid")
local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")

--// Biến lưu trữ
local isFlyingUp = false
local flightSpeed = 325 -- Tốc độ bay lên
local flyConnection = nil

--// Hàm bay lên vô hạn khi máu thấp
local function StartFlyingUp()
    if isFlyingUp then return end
    isFlyingUp = true

    flyConnection = RunService.RenderStepped:Connect(function()
        if isFlyingUp and Humanoid and HumanoidRootPart then
            -- Bay lên liên tục theo trục Y
            HumanoidRootPart.Velocity = Vector3.new(0, flightSpeed, 0)
        end
    end)
end

--// Hàm giữ nguyên độ cao khi máu hồi phục
local function StopFlyingUp()
    if not isFlyingUp then return end
    isFlyingUp = false

    if flyConnection then
        flyConnection:Disconnect()
        flyConnection = nil
    end

    -- Giữ nguyên độ cao, không rơi xuống
    HumanoidRootPart.Velocity = Vector3.zero
end

--// Khi máu thay đổi, kiểm tra và bay lên nếu cần
Humanoid.HealthChanged:Connect(function(health)
    local maxHealth = Humanoid.MaxHealth
    local healthPercentage = (health / maxHealth) * 100

    if healthPercentage <= 40 then
        StartFlyingUp()
    elseif healthPercentage >= 85 then
        StopFlyingUp()
    end
end)

--// Khi nhân vật respawn, đảm bảo hệ thống hoạt động lại
LocalPlayer.CharacterAdded:Connect(function(newCharacter)
    Character = newCharacter
    Humanoid = Character:WaitForChild("Humanoid")
    HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")

    -- Kiểm tra máu lại khi respawn
    Humanoid.HealthChanged:Connect(function(health)
        local maxHealth = Humanoid.MaxHealth
        local healthPercentage = (health / maxHealth) * 100

        if healthPercentage <= 40 then
            StartFlyingUp()
        elseif healthPercentage >= 100 then
            StopFlyingUp()
        end
    end)
end)
