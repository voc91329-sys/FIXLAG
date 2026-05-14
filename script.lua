-- OPTIMIZER v1.0 (No GUI)
local Lighting = game:GetService("Lighting")
local Terrain = game:GetService("Workspace").Terrain
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")

-- 1. Tối ưu đồ họa & Xóa vật thể thừa
local function Optimize()
    -- Tắt hiệu ứng ánh sáng
    Lighting.GlobalShadows = false
    Lighting.FogEnd = 9e9
    Lighting.Brightness = 1
    
    -- Xóa effect/Sky/Clouds
    for _, child in pairs(Lighting:GetChildren()) do
        if child:IsA("PostProcessEffect") or child:IsA("Sky") or child:IsA("Clouds") then
            child:Destroy()
        end
    end
    
    -- Tắt vật liệu nước/trang trí
    Terrain.WaterWaveSize = 0
    Terrain.WaterWaveSpeed = 0
    Terrain.WaterReflectance = 0
    Terrain.WaterTransparency = 0
    
    -- Giảm chất lượng đồ họa
    settings().Rendering.QualityLevel = 1
    
    -- Quét và xóa vật thể rác/cây cối
    for _, obj in pairs(game:GetDescendants()) do
        if obj:IsA("BasePart") or obj:IsA("MeshPart") then
            obj.Material = Enum.Material.Plastic
            obj.Reflectance = 0
            
            local name = obj.Name:lower()
            if name:find("tree") or name:find("leaf") or name:find("bush") or name:find("grass") then
                obj:Destroy()
            end
        elseif obj:IsA("ParticleEmitter") or obj:IsA("Trail") or obj:IsA("Fire") or obj:IsA("Smoke") then
            obj.Enabled = false
        end
    end
end

-- 2. Unlock 120 FPS
if setfpscap then
    setfpscap(120)
end

-- 3. Camera Mượt (Sensitivity 200)
UserInputService.MouseDeltaSensitivity = 2.0
local camera = workspace.CurrentCamera
if camera then
    camera.FieldOfView = 80
end

-- Thực thi
Optimize()

print("Optimization complete: FPS unlocked, objects removed, settings optimized.")
