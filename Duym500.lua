--Auto Gia Nhập Phe
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

-- 🔹 Kiểm tra nếu có chức năng chuyển team trong game
if ReplicatedStorage:FindFirstChild("Remotes") and ReplicatedStorage.Remotes:FindFirstChild("CommF_") then
    -- 🔹 Gửi yêu cầu chuyển sang Hải Quân (Marines)
    ReplicatedStorage.Remotes.CommF_:InvokeServer("SetTeam", "Marines")

    -- 🔹 Thông báo đã chuyển team
    print("✅ Đã tự động gia nhập Hải Quân!")
else
    print("⚠ Không tìm thấy Remote chuyển team, thử lại sau!")
end



wait(3) -- Dừng lại 3 giây

-- Hiển thị thông báo
game.StarterGui:SetCore("SendNotification", {
    Title = "By : NomDom",
    Text = "Địt mẹ thằng lồn",
    Duration = 1000000
})

local Notifications = game.ReplicatedStorage:WaitForChild("Notification")
for _, msg in pairs({
    "<Color=Red>NomDom On Top<Color=/>",
    "<Color=Green>Cảm ơn vì đã sử dụng<Color=/>",
    "<Color=Yellow>Địt mẹ mày<Color=/>"
}) do
    require(Notifications).new(msg):Display()
end
local AutoCollectRunning = false
local AutoCollectScript



wait(2) -- Dừng lại 3 giây



loadstring(game:HttpGet(("https://raw.githubusercontent.com/daucobonhi/Ui-Redz-V2/refs/heads/main/UiREDzV2.lua")))()

       local Window = MakeWindow({
         Hub = {
         Title = "NomDom Hub",
         Animation = "Địt mẹ thằng lồn"
         },
        Key = {
        KeySystem = false,
        Title = "Key System",
        Description = "",
        KeyLink = "",
        Keys = {"1234"},
        Notifi = {
        Notifications = true,
        CorrectKey = "Running the Script...",
       Incorrectkey = "The key is incorrect",
       CopyKeyLink = "Copied to Clipboard"
      }
    }
  })

       MinimizeButton({
       Image = "http://www.roblox.com/asset/?id=128933802535491",
       Size = {50, 50},
       Color = Color3.fromRGB(10, 10, 10),
       Corner = true,
       Stroke = false,
       StrokeColor = Color3.fromRGB(255, 0, 0)
      })
      
------ Tab
     local Tab1o = MakeTab({Name = "Main"})
     local Tab2o = MakeTab({Name = "Hack BF"})
     local Tab3o = MakeTab({Name = "KaitunBF"})
     local Tab4o = MakeTab({Name = "Hack blue lock"})
     local Tab5o = MakeTab({Name = "Fisching"})
     local Tab6o = MakeTab({Name = "Pet go"})
     
-------TOGGLE 
local AutoCollectRunning = false
local AutoCollectScript
Toggle = AddToggle(Tab1o, {
    Name = "Auto Rejoin",
    Default = false,
    Callback = function(state)
        AutoCollectRunning = state
        
        if AutoCollectRunning then
            -- Bật script
            loadstring(game:HttpGet("https://raw.githubusercontent.com/TDDuym500/Duym500/refs/heads/main/Auto%20Rejoin%20Game"))()
        else
            -- Tắt script bằng cách reset nhân vật
            game.Players.LocalPlayer.Character:BreakJoints()
        end

        print("Auto Collect:", AutoCollectRunning and "Bật" or "Tắt")
    end
})

------- BUTTON
   AddButton(Tab1o, {
     Name = "FastAttack",
    Callback = function()
         loadstring(game:HttpGet("https://raw.githubusercontent.com/TDDuym500/Duym500/refs/heads/main/FastAttack.lua"))()
  end
  })AddButton(Tab1o, {
     Name = "AutoChestFly",
    Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/TDDuym500/Duym500/refs/heads/main/AutoChestFly"))()
  end
  })AddButton(Tab1o, {
     Name = "AutoChestTP",
    Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/TDDuym500/Duym500/refs/heads/main/AutoChestTP"))()
  end
  })   AddButton(Tab1o, {
     Name = "Help Hunt For Bounty",
    Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/TDDuym500/Duym500/refs/heads/main/Duym5000.lua"))()
  end
  })  AddButton(Tab1o, {
     Name = "Super Fix Lag",
    Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/TDDuym500/Duym500/refs/heads/main/SuperFixLag.lua"))()
  end
  })  AddButton(Tab1o, {
     Name = "Hard To Kill",
    Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/TDDuym500/Duym500/refs/heads/main/YeuMauBayLeTroi.lua"))()
  end
  })  AddButton(Tab5o, {
     Name = "Auto Banned",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/TDDuym500/Duym500/refs/heads/main/KickKhoiGame.lua"))()
  end
  })   AddButton(Tab1o, {
     Name = "Auto Game Break",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/AnDepZaiHub/AnDepZaiHubBeta/refs/heads/main/Kaitun.txt"))()
  end
  })
    AddButton(Tab2o, {
     Name = "W azure",
    Callback = function()
	  getgenv().Team = "Marines" --Marines Pirates
getgenv().AutoLoad = true --Will Load Script On Server Hop
getgenv().SlowLoadUi  = false
getgenv().ForceUseSilentAimDashModifier = false --Force turn on silent aim , if error then executor problem
getgenv().ForceUseWalkSpeedModifier = true --Force turn on Walk Speed Modifier , if error then executor problem
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/3b2169cf53bc6104dabe8e19562e5cc2.lua"))()
  end
  })
     AddButton(Tab2o, {
     Name = "Redz Hub",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/realredz/BloxFruits/refs/heads/main/Source.lua"))()
  end
  })   AddButton(Tab2o, {
     Name = "Xero Hub(Need key)",
    Callback = function()
	  getgenv().Team = "Marines"
    getgenv().Hide_Menu = false
    getgenv().Auto_Execute = false
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Xero2409/XeroHub/refs/heads/main/main.lua"))()
  end
  })   AddButton(Tab2o, {
     Name = "Teddy hub",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/skibiditoiletgojo/Haidepzai/refs/heads/main/Teddy-Premium"))()
  end
  })   AddButton(Tab2o, {
     Name = "Script Fix lag",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/TurboLite/Script/main/FixLag.lua"))()
  end
  })   AddButton(Tab2o, {
     Name = "Bapred Hub",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/LuaCrack/BapRed/main/BapRedHub"))()
  end
  })   AddButton(Tab2o, {
     Name = "Astral hub",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/Overgustx2/Main/refs/heads/main/BloxFruits_%E2%80%8B25.html"))() 
  end
  })   AddButton(Tab2o, {
     Name = "Script Fly",
    Callback = function()
	  loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\40\39\104\116\116\112\115\58\47\47\103\105\115\116\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\109\101\111\122\111\110\101\89\84\47\98\102\48\51\55\100\102\102\57\102\48\97\55\48\48\49\55\51\48\52\100\100\100\54\55\102\100\99\100\51\55\48\47\114\97\119\47\101\49\52\101\55\52\102\52\50\53\98\48\54\48\100\102\53\50\51\51\52\51\99\102\51\48\98\55\56\55\48\55\52\101\98\51\99\53\100\50\47\97\114\99\101\117\115\37\50\53\50\48\120\37\50\53\50\48\102\108\121\37\50\53\50\48\50\37\50\53\50\48\111\98\102\108\117\99\97\116\111\114\39\41\44\116\114\117\101\41\41\40\41\10\10")()
  end
  })   AddButton(Tab4o, {
     Name = "Legend HandlesYT(cần key)",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/IAmJamal10/Scripts/refs/heads/main/BlueLocksNew"))()
  end
  })   AddButton(Tab2o, {
     Name = "Omg Hub (cần key)",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/Omgshit/Scripts/main/MainLoader.lua"))()
  end
  })   AddButton(Tab2o, {
     Name = "Teddy Hub(cần key)",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/skibiditoiletgojo/Haidepzai/refs/heads/main/Teddy-Premium"))()
  end
  })   AddButton(Tab2o, {
     Name = "Volcano Hub",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/wpisstestfprg/Volcano/refs/heads/main/VolcanoLocal.lua", true))()
  end
  })     AddButton(Tab4o, {
     Name = "Alchemy Hub(cần key)",
    Callback = function()
	  loadstring(game:HttpGet("https://scripts.alchemyhub.xyz"))()
  end
  })       AddButton(Tab3o, {
     Name = "Kaitun Xero Hub(cần key)",
    Callback = function()
	  -- Max level, godhuman, cdk, sgt
script_key = "" -- premium only, u can leave it blank if ur not
getgenv().Shutdown = false -- Turn on if u are farming bulk accounts
getgenv().Configs = {
    ["Team"] = "Marines",
    ["FPS Boost"] = {
        ["Enable"] = true,
        ["FPS Cap"] = 30,
    },
    ["Farm Boss Drops"] = {
        ["Enable"] = false,
        ["When x2 Exp Expired"] = false
    },
    ["Hop"] = { -- premium only
        ["Enable"] = true,
        ["Hop Find Tushita"] = true,
        ["Hop Find Valkyrie Helm"] = true,
        ["Hop Find Mirror Fractal"] = true,
        ["Hop Find Darkbeard"] = true, -- For skull guitar
        ["Hop Find Soul Reaper"] = true, -- For CDK
        ["Hop Find Mirage"] = true, -- For pull lever
        ["Find Fruit"] = true, -- Will find 1m+ fruit to unlock swan door to access third sea
    },
    ["Farm Mastery"] = {
        ["Enable"] = true,
        ["Farm Mastery Weapons"] = {"Sword", "Gun", "Blox Fruit"}, -- Blox Fruit, Gun (left -> right: High -> Low Priority)
        ["Swords To Farm"] = {"Cursed Dual Katana"},
        ["Guns To Farm"] = {"Skull Guitar"},
        ["Mastery Health (%)"] = 40 -- For Blox Fruit, Gun
    },
    ["Farm Config"] = {
        ["First Farm At Sky"] = true,
        ["Farm Bone Get x2 Exp"] = true
    },
    ["Trackstat"] = {
        ["Enable"] = false,
        ["Key"] = "", -- Get from xerohub.click
        ["Device"] = "test" -- u can put any name here
    },
    ["Auto Spawn rip_indra"] = true,
    ["Auto Spawn Dough King"] = true,
    ["Auto Pull Lever"] = true,
    ["Auto Collect Berry"] = true,
    ["Auto Evo Race"] = true,
    ["Awaken Fruit"] = true,
    ["Rainbow Haki"] = true,
    ["Hop Player Near"] = true,
    ["Skull Guitar"] = true,
    ["Cursed Dual Katana"] = true,
    ["Switch Melee"] = true,
    ["Eat Fruit"] = "", -- leave blank for none, put the fruit name like this example: Smoke Fruit, T-Rex Fruit, ...
    ["Snipe Fruit"] = "", -- leave blank for none, put the fruit name like this example: Smoke Fruit, T-Rex Fruit, ...
    ["Lock Fragment"] = 30000,
    ["Buy Stuffs"] = true -- buso, geppo, soru, ken haki, ...
}
repeat task.wait() pcall(function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Xero2409/XeroHub/refs/heads/main/kaitun.lua"))() end) until getgenv().Check_Execute
  end
  })    AddButton(Tab3o, {
     Name = "Kaitun RoyX Hub",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/TDDuym500/Duym500/refs/heads/main/RoyX%20Kaitun"))()
  end
  })    AddButton(Tab3o, {
     Name = "Kaitun Simple Hub",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/TDDuym500/Duym500/refs/heads/main/RoyX%20Kaitun"))()
  end
  })    AddButton(Tab2o, {
     Name = "HoHo Hub(cần key)",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))()
  end
  })
   AddButton(Tab2o, {
     Name = "Speed Hub",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))()
  end
  })   AddButton(Tab2o, {
     Name = "Zenith Hub",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/Efe0626/ZenithHub/refs/heads/main/Loader"))()
  end
  })   AddButton(Tab2o, {
     Name = "Alchemy Hub(cần key)",
    Callback = function()
	  loadstring(game:HttpGet("https://scripts.alchemyhub.xyz"))()
  end
  })   AddButton(Tab2o, {
     Name = "BlueX Hub",
    Callback = function()
	  _G.Team = "Pirates" 
_G.FixLag = false
loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-BlueX/BlueX-Hub/refs/heads/main/Main.lua"))()
  end
  })   AddButton(Tab5o, {
     Name = "Speed hub",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))()
  end
  })   AddButton(Tab5o, {
     Name = "Alchemy hub(cần key)",
    Callback = function()
	  loadstring(game:HttpGet("https://scripts.alchemyhub.xyz"))()
  end
  })   AddButton(Tab5o, {
     Name = "Ronix Hub",
    Callback = function()
	  loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/e4d72046eb884e9c01333d3e704fc2d7.lua"))()
  end
  })   AddButton(Tab5o, {
     Name = "Zenith Hub",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/Efe0626/ZenithHub/refs/heads/main/Loader"))()
  end
  })   AddButton(Tab4o, {
     Name = "NS Hub(Need key)",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/OhhMyGehlee/fo/refs/heads/main/ot"))()
  end
  })   AddButton(Tab6o, {
     Name = "NS Hub(Need Key)",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/OhhMyGehlee/go/refs/heads/main/is"))()
  end
  })   AddButton(Tab6o, {
     Name = "Zap Hub(need key)",
    Callback = function()
	  loadstring(game:HttpGet('https://zaphub.xyz/Exec'))()
  end
  })   AddButton(Tab6o, {
     Name = "Speed Hub",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))()
  end
  })

----- Dropdown 

  Dropdown = AddDropdown(Tab1o, {
     Name = "",
     Options = {"", "", "", ""},
     Default = "Melee",
     Callback = function()
     end
   })

----- Section 
   
   Section = AddSection(Tab1o, {"Wait Update"})          

----- Paragraph 
                    
   Paragraph = AddParagraph(Farm, {"", "Wait Update"})

