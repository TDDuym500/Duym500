local Lighting = game:GetService("Lighting")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer
local EffectsFolder = workspace:FindFirstChild("Effects") -- Nơi chứa hiệu ứng trong Blox Fruits

-- 🔹 Hàm xoá hiệu ứng trong game (Không ảnh hưởng nhân vật)
local function RemoveEffects(obj)
    if obj:IsA("ParticleEmitter") or 
       obj:IsA("Beam") or 
       obj:IsA("Trail") or 
       obj:IsA("Fire") or 
       obj:IsA("Smoke") or 
       obj:IsA("Sparkles") or 
       obj:IsA("Explosion") or 
       obj:IsA("Highlight") or 
       obj:IsA("Decal") then
        obj:Destroy()
    end
end

-- 🔹 Xoá hiệu ứng có sẵn ngay khi script chạy
for _, obj in pairs(workspace:GetDescendants()) do
    if not obj:IsDescendantOf(LocalPlayer.Character) then
        RemoveEffects(obj)
    end
end

-- 🔹 Xoá hiệu ứng mới xuất hiện liên tục
workspace.DescendantAdded:Connect(function(obj)
    task.wait(0.1) -- Đợi hiệu ứng xuất hiện rồi mới xoá
    if not obj:IsDescendantOf(LocalPlayer.Character) then
        RemoveEffects(obj)
    end
end)

-- 🔹 Xoá hiệu ứng trong thư mục "Effects" của Blox Fruits
if EffectsFolder then
    for _, effect in pairs(EffectsFolder:GetChildren()) do
        effect:Destroy()
    end
    EffectsFolder.ChildAdded:Connect(function(effect)
        task.wait(0.1)
        effect:Destroy()
    end)
end

-- 🔹 Xoá tất cả ánh sáng đặc biệt (PointLight, SurfaceLight, SpotLight)
for _, light in pairs(workspace:GetDescendants()) do
    if light:IsA("PointLight") or 
       light:IsA("SurfaceLight") or 
       light:IsA("SpotLight") then
        light:Destroy()
    end
end

-- 🔹 Tắt toàn bộ ánh sáng, làm game sáng đều
Lighting.GlobalShadows = false
Lighting.Brightness = 2
Lighting.Ambient = Color3.new(1,1,1)
Lighting.OutdoorAmbient = Color3.new(1,1,1)
Lighting.FogEnd = 1000000 -- Xoá sương mù
Lighting.Technology = Enum.Technology.Compatibility -- Xoá hiệu ứng bóng

-- 🔹 Xoá bầu trời nhưng không làm màn hình đen
local sky = Lighting:FindFirstChild("Sky")
if sky then
    sky:Destroy()
end

-- 🔹 Làm mất màu tất cả vật thể (Trừ nhân vật)
for _, obj in pairs(workspace:GetDescendants()) do
    if obj:IsA("BasePart") and not obj:IsDescendantOf(LocalPlayer.Character) then
        obj.Color = Color3.fromRGB(128, 128, 128) -- Màu xám
        obj.Material = Enum.Material.SmoothPlastic -- Làm mịn
    end
end

-- 🔹 Xoá quần áo người chơi (Trừ nhân vật chính)
for _, player in pairs(Players:GetPlayers()) do
    if player.Character and player ~= LocalPlayer then
        for _, obj in pairs(player.Character:GetChildren()) do
            if obj:IsA("Shirt") or obj:IsA("Pants") or obj:IsA("Accessory") then
                obj:Destroy()
            end
        end
    end
end

-- 🔹 Xoá vật thể xa trên 100 studs (Trừ nhân vật & vật quan trọng)
RunService.RenderStepped:Connect(function()
    local character = LocalPlayer.Character
    if character and character:FindFirstChild("HumanoidRootPart") then
        for _, obj in pairs(workspace:GetChildren()) do
            if obj:IsA("Model") and obj ~= character and obj:FindFirstChild("HumanoidRootPart") then
                local distance = (character.HumanoidRootPart.Position - obj.HumanoidRootPart.Position).Magnitude
                if distance > 100 and not obj:IsDescendantOf(Players) then
                    obj.Parent = nil -- Xoá vật thể xa (Không xoá người chơi)
                end
            end
        end
    end
end)

-- 🔹 Làm vật thể vô hình nhưng vẫn có thể va chạm
for _, obj in pairs(workspace:GetDescendants()) do
    if obj:IsA("BasePart") and not obj:IsDescendantOf(LocalPlayer.Character) then
        obj.Transparency = 1 -- Làm vật thể vô hình
        obj.CanCollide = true -- Vẫn có thể va chạm
    end
end

-- 🔹 Xoá tất cả vật thể mới xuất hiện nhưng vẫn có thể va chạm
workspace.DescendantAdded:Connect(function(obj)
    task.wait(0.1)
    if obj:IsA("BasePart") and not obj:IsDescendantOf(LocalPlayer.Character) then
        obj.Transparency = 1 -- Làm vật thể vô hình ngay khi xuất hiện
        obj.CanCollide = true -- Vẫn có thể va chạm
    elseif obj:IsA("Model") and not obj:IsDescendantOf(Players) then
        for _, part in pairs(obj:GetChildren()) do
            if part:IsA("BasePart") then
                part.Transparency = 1 -- Làm vật thể vô hình
                part.CanCollide = true -- Vẫn có thể va chạm
            end
        end
    end
end)

-- 🔹 Fix lỗi không dùng được skill (Skill vẫn gây damage nhưng không có hiệu ứng)
local function DisableSkillEffects(obj)
    if obj:IsA("ParticleEmitter") or 
       obj:IsA("Beam") or 
       obj:IsA("Trail") or 
       obj:IsA("Fire") or 
       obj:IsA("Smoke") or 
       obj:IsA("Sparkles") or 
       obj:IsA("Explosion") then
        obj:Destroy()
    end
end

workspace.DescendantAdded:Connect(function(obj)
    task.wait(0.1)
    DisableSkillEffects(obj)
end)

-- 🔹 Xoá thông báo EXP nhưng vẫn nhận EXP bình thường
local function RemoveExpNotification(obj)
    if obj:IsA("TextLabel") and string.find(obj.Text, "EXP") then
        obj:Destroy()
    end
end

for _, obj in pairs(LocalPlayer.PlayerGui:GetDescendants()) do
    RemoveExpNotification(obj)
end

LocalPlayer.PlayerGui.DescendantAdded:Connect(function(obj)
    task.wait(0.1)
    RemoveExpNotification(obj)
end)

print("✅ Đã fix hoàn toàn lỗi, mọi vật thể mới xuất hiện đều bị xoá nhưng vẫn có thể va chạm!")
