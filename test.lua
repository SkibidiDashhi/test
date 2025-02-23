loadstring(game:HttpGet(("https://raw.githubusercontent.com/daucobonhi/Ui-Redz-V2/refs/heads/main/UiREDzV2.lua")))()

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
      
------ Tab
     local Tab1o = MakeTab({Name = "Main"})
     local Tab2o = MakeTab({Name = "Setting"})
     
     
-------TOGGLE 

     Toggle = AddToggle(Tab1o, {
      Name = "Auto Kill RipIndra",
      Default = false,
      Callback = function()
     end
    })
    
------- BUTTON
    
    Name = "Auto Hop Rip_indra",
     AddButton(Tab1o, {
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
     Name = "Auto Hop DoughKing",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/AnDepZaiHub/AnBeoDepTrai/refs/heads/main/Dough_King"))()
end
})

-------TOGGLE 

     Toggle = AddToggle(Tab2o, {
    Name = "Auto Turn On Buso",
    Default = false,
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
