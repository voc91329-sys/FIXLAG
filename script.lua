local Rayfield = loadstring(game:HttpGet("https://raw.githubusercontent.com/UI-Library/Rayfield/main/main.lua"))()
local Window = Rayfield:CreateWindow({Name = "KRP HUB | ĐÃ LÀM SẠCH", LoadingTitle = "ĐANG KHỞI TẠO...", LoadingSubtitle = "Tối ưu cho A11"})

local Tab1 = Window:CreateTab("HỆ THỐNG", nil)
local isNoHoldEnabled = false

Tab1:CreateToggle({Name = "KHÔNG CẦN GIỮ/TƯƠNG TÁC", Callback = function(v) isNoHoldEnabled = v end})
game:GetService("ProximityPromptService").PromptButtonHoldBegan:Connect(function(prompt)
    if isNoHoldEnabled then prompt.HoldDuration = 0 end
end)

Tab1:CreateButton({Name = "LƯU VỊ TRÍ", Callback = function()
    _G.SavedPos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    Rayfield:Notify({Title = "Đã lưu", Content = "Vị trí đã được lưu!", Duration = 3})
end})

Tab1:CreateButton({Name = "DỊCH CHUYỂN", Callback = function()
    if _G.SavedPos then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = _G.SavedPos end
end})

-- Tab Tối ưu
local Tab2 = Window:CreateTab("TỐI ƯU HÓA", nil)
Tab2:CreateButton({Name = "CLEAR MAP", Callback = function()
    for _, obj in pairs(workspace:GetDescendants()) do
        if obj:IsA("Decal") or obj:IsA("Texture") then obj:Destroy() end
    end
end})
