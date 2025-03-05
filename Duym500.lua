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

     Toggle = AddToggle(Tab1o, {
      Name = "Chế độ đẹp zai",
      Default = true,
      Callback = function()
      end
     })
------- BUTTON
   AddButton(Tab1o, {
     Name = "FastAttack",
    Callback = function()
         loadstring(game:HttpGet("https://raw.githubusercontent.com/TDDuym500/Duym500/refs/heads/main/FastAttack.lua"))()
  end
  })   AddButton(Tab5o, {
     Name = "Khiến acc bị band",
    Callback = function()
	  lloadstring(game:HttpGet("https://raw.githubusercontent.com/NewBetaLua/LilnhanHub/refs/heads/main/Script.lua", true))()
  end
  })    AddButton(Tab1o, {
     Name = "Auto Hop Server Rip Indra",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/AnDepZaiHub/AnBeoDepTrai/refs/heads/main/Rip_Indra"))()
  end
  })   AddButton(Tab1o, {
     Name = "Auto Hop Server Dough King",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/AnDepZaiHub/AnBeoDepTrai/refs/heads/main/Dough_King"))()
  end
  })   AddButton(Tab1o, {
     Name = "Auto Phá Acc",
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
	  getgenv().ConfigsKaitun = {
	["Safe Mode"] = false, -- Will be pass all anti cheat (but slow farm)
	
	["Melee"] = {
		["Death Step"] = true,
		["Electric Claw"] = true,
		["Dragon Talon"] = true,
		["Sharkman Karate"] = true,
		["Superhuman"] = true,
		["God Human"] = true,
	},

	["Sword"] = {
		-- : World 1
		["Saber"] = true,
		["Pole"] = false,
		-- : World 2
		["Midnight Blade"] = true,
		["Shisui"] = true,
		["Saddi"] = true,
		["Wando"] = true,
		["Rengoku"] = true,
		["True Triple Katana"] = true,
		-- : World 3
		["Yama"] = true,
		["Tushita"] = true,
		["Canvander"] = true,
		["Buddy Sword"] = true,
		["Twin Hooks"] = true,
		["Hallow Scythe"] = true,
		["Cursed Dual Katana"] = true,
	},

	["Gun"] = {
		-- : World 2
		["Kabucha"] = true,
		-- : World 3
		["Venom Bow"] = true,
		["Skull Guitar"] = true,
	},

	["Mastery"] = {
		["Melee"] = true,
		["Sword"] = true,
		["Devil Fruits"] = true,

		["Configs"] = {
			["Selected All Sword"] = true,
			["Select Sword"] = {"Saber","Cursed Dual Katana"},
		}
	},

	["Race"] = {
		["v2"] = true,
		["v3"] = true,
		["Locked"] = {
			["Mink"] = true,
			["Human"] = true,
			["Skypiea"] = true,
			["Fishman"] = true,
		},
	},

	["Fruit"] = {
		["Main Fruit"] = {"Dough-Dough"},
		["Sec Fruit"] = {"Flame-Flame", "Ice-Ice", "Quake-Quake", "Light-Light", "Dark-Dark", "Spider-Spider", "Rumble-Rumble", "Magma-Magma", "Buddha-Buddha"},
		["Safe Fruit"] = {
			"Dough-Dough",
			"Dragon-Dragon"
		},
	},

	["Quest"] = {
		["Rainbow Haki"] = true,
		["Pull Lever"] = true,
		["Musketeer Hat"] = true,
		["Dough Mirror"] = true,
		["Shark Anchor"] = {
			["Enable"] = true,
			["Money"] = 25_000_000,
		},
	},

	["Currency"] = {
		["Lock Fragment"] = 30_000,
	},

	["Performance"] = {
		["White Screen"] = false,
		["Booster FPS"] = false,
		["Lock FPS"] = 240,
		["AFK Timeout"] = 150,
	},
}
loadstring(game:HttpGet("https://api.realaya.xyz/v1/files/l/73mkp0aqyfo4ypy8hvl0nz10lq49fey5.lua"))()
  end
  })    AddButton(Tab3o, {
     Name = "Kaitun Simple Hub",
    Callback = function()
	  getgenv().simple_settings = {
    ["MASTERY"] = { -- Settings related to leveling up weapon or skill mastery
        ["ACTIVE"] = true, -- Enable or disable mastery leveling (true = enabled, false = disabled)
        ["METHOD"] = "Half", -- Method for gaining mastery, "Half"[350] or "Full"[600]
    },

    ["RAID"] = {
        ["MODE"] = "Legit", -- Legit / KillAura (Legit mode is Mob aura in raid)
    },

    ["OBJECTIVE"] = { -- Goals for farming and unlocking features
        ["GODHUMAN"] = true, -- Automatically unlock the "Godhuman" fighting style
        ["RACE-CONFIGURE"] = {
            ["RACE"] = {"Human", "Skypiea", "Fishman", "Mink"}, -- List -- "Human", "Skypiea", "Fishman", "Mink"
            ["RACE-LOCK"] = true, -- Automatically change the character race if not in the list
            ["RACE-V3"] = true, -- Automatically upgrade character race to V3 if possible Human, Mink, (Fishman, Ghoul, Cyborg) soon
        },
        ["FRAGMENT"] = 100000, -- Limit number of fragments to collect

        -- SWORD
        ["CANVANDER"] = true,
        ["BUDDY-SWORD"] = true,
        ["CURSED-DUAL-KATANA"] = true,
        ["SHARK-ANCHOR"] = true,

        --GUN
        ["ACIDUM-RIFLE"] = true,
        ["VENOM-BOW"] = true,
        ["SOUL-GUITAR"] = true,

        -- AURA
        ["COLOR-HAKI"] = {"Pure Red","Winter Sky","Snow White"}, -- Aura color to craft
    },

    ["FRUITPURCHASE"] = true, -- Automatically purchase fruits based on priority list
    ["PRIORITYFRUIT"] = { -- List of preferred fruits to purchase or eat in order of priority
        [1] = "Dragon-Dragon",
        [2] = "Dough-Dough",
        [3] = "Flame-Flame",
        [4] = "Rumble-Rumble",
        [5] = "Human-Human: Buddha",
        [6] = "Dark-Dark",
    },

    ["FPSCAP"] = 30, -- Limit the frame rate to optimize performance
    ["LOWTEXTURE"] = true -- Reduce graphic quality for better performance
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/simple-hubs/contents/refs/heads/main/bloxfruit-kaitan-main.lua"))()
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
