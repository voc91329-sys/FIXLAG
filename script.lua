-- FIX LAG MAX

local Lighting = game:GetService("Lighting")
local Terrain = workspace.Terrain

-- Tắt hiệu ứng ánh sáng
Lighting.GlobalShadows = false
Lighting.FogEnd = 9e9
Lighting.Brightness = 0
Lighting.EnvironmentDiffuseScale = 0
Lighting.EnvironmentSpecularScale = 0

-- Xóa hiệu ứng Lighting
for _,v in pairs(Lighting:GetChildren()) do
	if v:IsA("Sky")
	or v:IsA("BloomEffect")
	or v:IsA("SunRaysEffect")
	or v:IsA("ColorCorrectionEffect")
	or v:IsA("DepthOfFieldEffect")
	or v:IsA("BlurEffect")
	or v:IsA("Atmosphere") then
		v:Destroy()
	end
end

-- Xóa vật liệu và hiệu ứng
for _,v in pairs(workspace:GetDescendants()) do

	if v:IsA("BasePart") then
		v.Material = Enum.Material.Plastic
		v.Reflectance = 0
		v.CastShadow = false
	end

	if v:IsA("Decal")
	or v:IsA("Texture")
	or v:IsA("ParticleEmitter")
	or v:IsA("Trail")
	or v:IsA("Beam")
	or v:IsA("Smoke")
	or v:IsA("Fire")
	or v:IsA("Sparkles") then
		v:Destroy()
	end
end

-- Cỏ và nước
Terrain.WaterWaveSize = 0
Terrain.WaterWaveSpeed = 0
Terrain.WaterReflectance = 0
Terrain.WaterTransparency = 1

-- Camera vừa phải tránh chóng mặt
workspace.CurrentCamera.FieldOfView = 70

print("FIX LAG MAX ĐÃ BẬT")for _,v in ipairs(workspace:GetDescendants()) do
    if v:IsA("BasePart") then
        v.Material = Enum.Material.SmoothPlastic
        v.Reflectance = 0
        v.CastShadow = false
    end
end-- PHẦN CÒN LẠI (GỖ THỨ 3 - CẦN DÁN VÀO SAU PHẦN 2)
local function optimize(v)
	-- Hạt hiệu ứng
	if v:IsA("ParticleEmitter") then
		v.Rate = math.max(1, math.floor(v.Rate * 0.1))
		v.Speed = NumberRange.new(0.1,1)
		v.Lifetime = NumberRange.new(0.1,0.3)
	end

	-- Tia laser
	if v:IsA("Beam") then
		v.Transparency = NumberSequence.new(0.9)
	end

	-- Vệt kiếm
	if v:IsA("Trail") then
		v.Transparency = NumberSequence.new(0.9)
	end

	-- Đèn
	if v:IsA("PointLight")
	or v:IsA("SpotLight")
	or v:IsA("SurfaceLight") then
		v.Brightness = v.Brightness * 0.1
		v.Range = math.max(1,v.Range * 0.1)
	end

	-- Khói
	if v:IsA("Smoke") then
		v.Opacity = 0.1
	end

	-- Lửa
	if v:IsA("Fire") then
		v.Size = v.Size * 0.1
		v.Heat = 0
	end

	-- Tia lấp lánh
	if v:IsA("Sparkles") then
		v.Enabled = true
	end
end

for _,v in ipairs(workspace:GetDescendants()) do
	optimize(v)
end

workspace.DescendantAdded:Connect(optimize)
-- PHẦN 4: CHẾ ĐỘ QUẢN LÝ ÁNH SÁNG CHỦ ĐỘNG
local RunService = game:GetService("RunService")
local Lighting = game:GetService("Lighting")

-- Chế độ bảo vệ ánh sáng: Ép game không được bật lại hiệu ứng tối
RunService.RenderStepped:Connect(function()
    -- Luôn tắt bóng đổ (cái này gây lag nặng nhất)
    if Lighting.GlobalShadows then 
        Lighting.GlobalShadows = false 
    end
    
    -- Luôn giữ độ sáng ở mức cố định
    if Lighting.Brightness ~= 0 then 
        Lighting.Brightness = 0 
    end
    
    -- Đảm bảo không có hiệu ứng "tối màu" môi trường
    if Lighting.Ambient ~= Color3.fromRGB(255, 255, 255) then
        Lighting.Ambient = Color3.fromRGB(255, 255, 255)
    end
end)

print("FIX LAG MAX: CHẾ ĐỘ ÁNH SÁNG ĐÃ BẬT")
