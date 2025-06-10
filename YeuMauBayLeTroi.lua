----Skid con mẹ mày đi anh cho em đấy

--// Dịch vụ cần thiết
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")
local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local Humanoid = Character:WaitForChild("Humanoid")
local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
local player = game.Players.LocalPlayer
local runService = game:GetService("RunService")

-- 📌 Vị trí cần TP đến khi máu dưới 40%
local safePosition = Vector3.new(28286.275390625, 14896.150390625, 102.55219268798828)

-- 🛑 Trạng thái an toàn (Ngăn chặn TP liên tục)
local isSafe = false
local lastHealth = nil -- Lưu trữ máu trước đó để kiểm tra máu có tụt không

local function isAtSafePosition(character)
    if character and character:FindFirstChild("HumanoidRootPart") then
        local currentPos = character.HumanoidRootPart.Position
        return (currentPos - safePosition).Magnitude < 5 -- Kiểm tra xem có gần vị trí an toàn không
    end
    return false
end

local function teleportInstantly()
    local character = player.Character
    if character and character:FindFirstChild("HumanoidRootPart") then
        local rootPart = character.HumanoidRootPart
        rootPart.CFrame = CFrame.new(safePosition)
        print("🛑 Đang TP đến vị trí an toàn...")

        -- Chờ một chút để đảm bảo vị trí cập nhật
        task.wait(0.2)

        -- Kiểm tra nếu TP thất bại thì thử lại
        if not isAtSafePosition(character) then
            print("⚠️ TP thất bại, thử lại...")
            teleportInstantly()
        else
            print("✅ TP thành công! Theo dõi máu tiếp tục...")
            isSafe = true -- 🚀 Khi đã đến nơi, không TP nữa ngay lập tức
        end
    end
end

local function checkHealth()
    local character = player.Character
    if character and character:FindFirstChild("Humanoid") then
        local health = character.Humanoid.Health
        local maxHealth = character.Humanoid.MaxHealth
        local healthPercent = (health / maxHealth) * 100

        -- Lần đầu chạy, lưu giá trị máu ban đầu
        if lastHealth == nil then
            lastHealth = health
        end

        -- Nếu máu ≤ 40% và chưa TP hoặc máu tiếp tục giảm, thì TP
        if healthPercent <= 40 and (not isSafe or health < lastHealth) then
            teleportInstantly()
        elseif healthPercent > 40 then
            isSafe = false -- Khi máu hồi trên 40%, bật lại TP
        end

        -- Cập nhật giá trị máu để so sánh lần sau
        lastHealth = health
    end
end

-- ⏳ Kiểm tra máu liên tục
runService.RenderStepped:Connect(checkHealth)

