loadstring(game:HttpGet(("https://raw.githubusercontent.com/daucobonhi/Ui-Redz-V2/refs/heads/main/UiREDzV2.lua")))()

local Window = MakeWindow({
    Hub = {
        Title = "Random Hub",
        Animation = "YTB: Dashh"
    },
    Key = {
        KeySystem = false,
        Title = "Get Key",
        Description = "Random Hub Auto Hop (FREE)",
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

local Tab1o = MakeTab({Name = "Main"})
local Tab2o = MakeTab({Name = "Settings"})

function AutoRipIndra()
    if StartTeleportSafe() then 
        return 
    end
    local v = CheckNameBoss("rip_indra True Form [Lv. 5000] [Raid Boss]")
    if v then 
        repeat task.wait()
            sizepart(v)
            toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position, v.HumanoidRootPart.Position, v.HumanoidRootPart.CFrame * CFrame.new(7, 20, 0))
            if (plr.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude < 50 then
                DetectFastAttack()
            end
            equiptool(NameWeapon(OrionLib.Flags["Select Weapon"].Value))
        until not v or not v.Parent or v.Humanoid.Health == 0 or not OrionLib.Flags["Auto Rip Indra"].Value
    else
        if OrionLib.Flags["Auto Spawn Rip Indra"].Value and (plr.Backpack:FindFirstChild("God's Chalice") or plr.Character:FindFirstChild("God's Chalice")) then
            if not DetectButtons() then 
                equiptool("God's Chalice", true)
                toTarget(plr.Character.HumanoidRootPart.Position, game:GetService("Workspace").Map["Boat Castle"].Summoner.Detection.Position, game:GetService("Workspace").Map["Boat Castle"].Summoner.Detection.CFrame)
            else
                if DetectButtons().BrickColor.Name == "Hot pink" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor", "Winter Sky")
                    toTarget(plr.Character.HumanoidRootPart.Position, DetectButtons().Position, DetectButtons().CFrame)
                elseif DetectButtons().BrickColor.Name == "Really red" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor", "Pure Red")
                    toTarget(plr.Character.HumanoidRootPart.Position, DetectButtons().Position, DetectButtons().CFrame)
                elseif DetectButtons().BrickColor.Name == "Oyster" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor", "Snow White")
                    toTarget(plr.Character.HumanoidRootPart.Position, DetectButtons().Position, DetectButtons().CFrame)
                end
            end
        end
    end
end

Toggle = AddToggle(Tab1o, {
    Name = "Auto Kill RipIndra(wait update)",
    Default = false,
    Callback = function(value)
        if value then
            while wait() and value do
                AutoRipIndra()
            end
        end
    end
})

AddButton(Tab1o, {
    Name = "Auto Hop Rip_indra",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AnDepZaiHub/AnBeoDepTrai/refs/heads/main/Rip_Indra"))()
    end
})

Toggle = AddToggle(Tab1o, {
    Name = "Auto Kill DoughKing(wait update)",
    Default = false,
    Callback = function(value)
    end
})

AddButton(Tab1o, {
    Name = "Auto Hop Dough King",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AnDepZaiHub/AnBeoDepTrai/refs/heads/main/Dough_King"))()
    end
})

Toggle = AddToggle(Tab2o, {
    Name = "Auto Turn On Buso",
    Default = true,
    Callback = function(value)
        local function EnableBuso()
            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
            end
        end

        if value then
            while wait() and value do
                EnableBuso()
            end
        end
    end
})
