loadstring(game:HttpGet("https://raw.githubusercontent.com/daucobonhi/Ui-Redz-V2/refs/heads/main/UiREDzV2.lua"))()

local Window = MakeWindow({
    Hub = {
        Title = "Random Hub",
        Animation = "By: Dashh"
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

Toggle = AddToggle(Tab1o, {
    Name = "Auto Kill RipIndra(wait update)",
    Default = false,
    Callback = function(value)
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
     Name = "Auto Hop Dough King ",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/AnDepZaiHub/AnBeoDepTrai/refs/heads/main/Dough_King"))()
end
})

Dropdown = AddDropdown(Tab2o, {
    Name = "Select Tesst",
    Options = {"Melee", "Sword", "Blox Fruit"},
    Default = "Melee",
    Callback = function(value)
    end
})

Toggle = AddToggle(Tab2o, {
    Name = "Auto Turn On Buso",
    Default = true,
    Callback = function(value)
        local function AutoHaki()
            if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
            end
        end

        if value then
            while wait() and value do
                AutoHaki()
            end
        end
    end
})
