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
   AddButton(Tab1o, {
     Name = "Auto Hop Dough King ",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/AnDepZaiHub/AnBeoDepTrai/refs/heads/main/Dough_King"))()
end
})
