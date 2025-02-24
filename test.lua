loadstring(game:HttpGet(("https://raw.githubusercontent.com/daucobonhi/Ui-Redz-V2/refs/heads/main/UiREDzV2.lua")))()

       local Window = MakeWindow({
         Hub = {
         Title = "Random Hub",
         Animation = "By: Dashh"
         },
        Key = {
        KeySystem = false,
        Title = "Get Key",
        Description = "Teddy Hub Auto Hop (FREE)",
        KeyLink = "https://link4m.com/21cId",
        Keys = {"teddyseetinkvaicut"},
        Notifi = {
        Notifications = true,
        CorrectKey = "Đang chạy script...",
       Incorrectkey = "Key sai",
       CopyKeyLink = "Đã sao chép"
      }
    }
  })

       MinimizeButton({
       Image = "http://www.roblox.com/asset/?id=76190632660322",
       Size = {50, 50},
       Color = Color3.fromRGB(10, 10, 10),
       Corner = true,
       Stroke = false,
       StrokeColor = Color3.fromRGB(255, 0, 0)
      })
      
------ Tab
     local Tab1o = MakeTab({Name = "Main"})
     local Tab2o = MakeTab({Name = "Settings"})
     
     
-------TOGGLE 

     Toggle = AddToggle(Tab1o, {
      Name = "Auto Kill RipIndra",
      Default = false,
      Callback = function()
     end
    })
    
------- BUTTON
    
    AddButton(Tab1o, {
     Name = "Auto Hop Rip_indra",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/AnDepZaiHub/AnBeoDepTrai/refs/heads/main/Rip_Indra"))()
end
})

-------TOGGLE 

     Toggle = AddToggle(Tab1o, {
      Name = "Auto Kill DoughKing",
      Default = false,
      Callback = function()
     end
    })
    
   AddButton(Tab1o, {
     Name = "Auto Hop Dough King ",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/AnDepZaiHub/AnBeoDepTrai/refs/heads/main/Dough_King"))()
end
})

--------------------------------------------------------------------------------------------------------------------------------------------
--Place Id Check
local id = game.PlaceId
if id == 2753915549 then First_Sea = true; elseif id == 4442272183 then Second_Sea = true; elseif id == 7449423635 then Third_Sea = true; else game:Shutdown() end;
--------------------------------------------------------------------------------------------------------------------------------------------
--Flag Player
function AntiBan()
    for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
        if v:IsA("LocalScript") then
            if v.Name == "General" or v.Name == "Shiftlock"  or v.Name == "FallDamage" or v.Name == "4444" or v.Name == "CamBob" or v.Name == "JumpCD" or v.Name == "Looking" or v.Name == "Run" then
                v:Destroy()
            end
        end
     end
     for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerScripts:GetDescendants()) do
        if v:IsA("LocalScript") then
            if v.Name == "RobloxMotor6DBugFix" or v.Name == "Clans"  or v.Name == "Codes" or v.Name == "CustomForceField" or v.Name == "MenuBloodSp"  or v.Name == "PlayerList" then
                v:Destroy()
            end
        end
     end
    end
    AntiBan()
--------------------------------------------------------------------------------------------------------------------------------------------
--Anti AFK
game:GetService("Players").LocalPlayer.Idled:connect(function()
	game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
	wait(1)
	game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

-------TOGGLE 

     Toggle = AddToggle(Tab2o, {
      Name = "Auto Turn On Busi",
      Default = true,
      Callback = function()
     end
    })

local function AutoHaki()
    if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
    end
end

Toggle = AddToggle(Tab2o, {
    Name = "Auto Turn On Buso",
    Default = true,
    Callback = function(value)
        if value then
            -- Start the AutoHaki loop if the toggle is enabled
            while wait() and value do
                AutoHaki()
            end
        end
    end
})
