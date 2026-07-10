--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.9) ~  Much Love, Ferib 

]]--

local obf_stringchar = string.char;
local obf_stringbyte = string.byte;
local obf_stringsub = string.sub;
local obf_bitlib = bit32 or bit;
local obf_XOR = obf_bitlib.bxor;
local obf_tableconcat = table.concat;
local obf_tableinsert = table.insert;
local function LUAOBFUSACTOR_DECRYPT_STR_0(LUAOBFUSACTOR_STR, LUAOBFUSACTOR_KEY)
	local result = {};
	for i = 1, #LUAOBFUSACTOR_STR do
		obf_tableinsert(result, obf_stringchar(obf_XOR(obf_stringbyte(obf_stringsub(LUAOBFUSACTOR_STR, i, i + 1)), obf_stringbyte(obf_stringsub(LUAOBFUSACTOR_KEY, 1 + (i % #LUAOBFUSACTOR_KEY), 1 + (i % #LUAOBFUSACTOR_KEY) + 1))) % 256));
	end
	return obf_tableconcat(result);
end
local Lighting = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\253\202\220\45\242\178\201\25", "\126\177\163\187\69\134\219\167"));
local Workspace = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\20\194\56\206\239\51\204\41\192", "\156\67\173\74\165"));
local Players = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\4\187\72\15\185\52\85", "\38\84\215\41\118\220\70"));
local Terrain = Workspace.Terrain;
local Player = Players.LocalPlayer;
if (setfpscap or (4593 <= 2672)) then
	setfpscap(0);
end
settings().Rendering.QualityLevel = Enum.QualityLevel.Level01;
settings().Rendering.MeshPartDetailLevel = Enum.MeshPartDetailLevel.Level04;
local function FixLagMax()
	task.spawn(function()
		Lighting.FogEnd = 8999999488;
		Lighting.GlobalShadows = false;
		Lighting.Brightness = 1;
		for _, v in pairs(Lighting:GetChildren()) do
			if (v:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\114\26\55\0\219\86\16\39\17\234", "\158\48\118\66\114")) or v:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\152\49\30\4\114\188\232\142\34\22\51\112\177", "\155\203\68\112\86\19\197")) or v:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\101\210\58\243\82\91\234\234\84\216\53\232\73\119\235\221\64\219\51\255\84", "\152\38\189\86\156\32\24\133")) or v:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\222\91\168\73\241\114\161\64\249\84\179", "\38\156\55\199")) or v:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\140\120\108\60\27\91\252\101\161\120\112\44\54\114\252\70\171\105", "\35\200\29\28\72\115\20\154")) or v:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\42\180\200", "\84\121\223\177\191\237\76")) or v:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\154\66\196\175\41\64\56\196\169\83", "\161\219\54\169\192\90\48\80")) or v:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\106\78\15\48\77\81", "\69\41\34\96"))) then
				v:Destroy();
			end
		end
		Lighting.ClockTime = 12;
		Lighting:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\159\207\216\9\9\31\181\206\210", "\75\220\163\183\106\98")):Connect(function()
			Lighting.ClockTime = 12;
		end);
		Terrain.WaterWaveSize = 0;
		Terrain.WaterWaveSpeed = 0;
		Terrain.WaterReflectance = 0;
		Terrain.WaterTransparency = 1;
		local char = Player.Character or Player.CharacterAdded:Wait();
		local rootPart = char:WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\42\175\134\54\215\13\179\143\5\214\13\174\187\54\203\22", "\185\98\218\235\87"));
		local scanRadius = 1000;
		local count = 0;
		for _, obj in pairs(Workspace:GetDescendants()) do
			count = count + 1;
			if (((count % 200) == 0) or (1168 > 3156)) then
				task.wait();
			end
			if (obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\233\61\52\227\238\171\217\40", "\202\171\92\71\134\190")) or (572 > 4486)) then
				obj.Material = Enum.Material.SmoothPlastic;
				obj.Reflectance = 0;
				obj.CastShadow = false;
				if ((1404 == 1404) and (string.find(string.lower(obj.Name), LUAOBFUSACTOR_DECRYPT_STR_0("\62\192\56\141\59", "\232\73\161\76")) or string.find(string.lower(obj.Name), LUAOBFUSACTOR_DECRYPT_STR_0("\180\218\71\92\16", "\126\219\185\34\61")))) then
					obj.Transparency = 1;
				end
				if ((not obj.Anchored and (obj.Name ~= LUAOBFUSACTOR_DECRYPT_STR_0("\36\219\83\115\112\120\250\227\62\193\81\102\78\118\225\243", "\135\108\174\62\18\30\23\147")) and (obj.Name ~= LUAOBFUSACTOR_DECRYPT_STR_0("\158\232\36\207\20\171", "\167\214\137\74\171\120\206\83"))) or (3748 < 2212)) then
					local distance = (obj.Position - rootPart.Position).Magnitude;
					if (distance <= scanRadius) then
						obj:Destroy();
					end
				end
			elseif (obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\175\245\49\92\244", "\199\235\144\82\61\152")) or obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\51\19\161\63\18\4\188", "\75\103\118\217")) or obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\247\85\98\0\176\29\203\81\85\25\176\10\211\81\98", "\126\167\52\16\116\217")) or obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\252\60\33\137\184", "\156\168\78\64\224\212\121")) or obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\33\231\183\203", "\174\103\142\197")) or obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\101\37\80\51\32", "\152\54\72\63\88\69\62")) or obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\231\212\239\78\223\200\235\79", "\60\180\164\142"))) then
				obj:Destroy();
			end
		end
		local PlayerGui = Player:WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\104\82\4\48\34\255\53\77\87", "\114\56\62\101\73\71\141"));
		for _, guiObj in pairs(PlayerGui:GetDescendants()) do
			if (guiObj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\158\251\218\201\189", "\164\216\137\187")) or guiObj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\225\229\35\189\170\242\2\220\225\23\160\167\243\14", "\107\178\134\81\210\198\158")) or guiObj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\17\3\131\193\175\20\15\128\195\166", "\202\88\110\226\166")) or guiObj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\247\10\154\227\230\194\13\135\251", "\170\163\111\226\151")) or guiObj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\37\53\170\44\108\34\61\5\63\188", "\73\113\80\210\88\46\87")) or guiObj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\168\33\204\21\226\163\57\217\6\232\143", "\135\225\76\173\114"))) then
				if ((guiObj.BackgroundTransparency < 0.6) or (1180 == 2180)) then
					guiObj.BackgroundTransparency = 0.6;
				end
			elseif ((4090 < 4653) and (guiObj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\47\196\159\162\173\185\174\31\227\172", "\199\122\141\216\208\204\221")) or guiObj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\152\244\35\228\106\249\166\216", "\150\205\189\112\144\24")) or guiObj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\16\173\156\67\22\134\20\2", "\112\69\228\223\44\100\232\113")) or guiObj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\225\54\55\210\178\120\143\218\24", "\230\180\127\103\179\214\28")))) then
				guiObj:Destroy();
			elseif guiObj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\191\6\77\67\225\79\199\153\12", "\128\236\101\63\38\132\33")) then
				local uiScale = guiObj:FindFirstChildOfClass(LUAOBFUSACTOR_DECRYPT_STR_0("\153\128\34\71\183\231\202", "\175\204\201\113\36\214\139"));
				if (not uiScale or (2652 < 196)) then
					uiScale = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\114\229\6\223\5\75\201", "\100\39\172\85\188"));
					uiScale.Parent = guiObj;
				end
				uiScale.Scale = 1.15;
			end
		end
	end);
end
FixLagMax();
local Lighting = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\129\113\190\136\39\164\118\190", "\83\205\24\217\224"));
local Workspace = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\209\202\223\54\245\213\204\62\227", "\93\134\165\173"));
local Players = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\142\254\192\219\63\220\161", "\30\222\146\161\162\90\174\210"));
local Terrain = Workspace.Terrain;
if setfpscap then
	setfpscap(0);
end
settings().Rendering.QualityLevel = 1;
settings().Rendering.MeshPartDetailLevel = 4;
Lighting.GlobalShadows = false;
Lighting.FogEnd = 8999999488;
Lighting.Brightness = 1;
Lighting.EnvironmentDiffuseScale = 0;
Lighting.EnvironmentSpecularScale = 0;
Terrain.WaterWaveSize = 0;
Terrain.WaterWaveSpeed = 0;
Terrain.WaterReflectance = 0;
Terrain.WaterTransparency = 1;
Terrain.Decoration = false;
local function optimizePart(obj)
	if ((4135 < 4817) and obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\199\79\99\15\213\79\98\30", "\106\133\46\16"))) then
		obj.Material = Enum.Material.SmoothPlastic;
		obj.Reflectance = 0;
		obj.CastShadow = false;
		if ((obj.Size.X < 2) and (obj.Size.Y < 2) and (obj.Size.Z < 2)) then
			obj.CanCollide = false;
		end
	elseif (obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\124\37\112\253\86", "\32\56\64\19\156\58")) or obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\110\205\253\66\79\224\133", "\224\58\168\133\54\58\146")) or obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\105\87\89\233\124\133\139\14\124\91\66\233\97\131\149", "\107\57\54\43\157\21\230\231")) or obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\239\153\16\252\181", "\175\187\235\113\149\217\188")) or obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\26\166\147\73", "\24\92\207\225\44\131\25")) or obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\120\222\183\71\30", "\29\43\179\216\44\123")) or obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\142\201\33\94\182\213\37\95", "\44\221\185\64")) or obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\49\232\91\75\86\7\225\77\92\103", "\19\97\135\40\63"))) then
		obj:Destroy();
	elseif obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\131\89\32\51\31\48\188\72", "\81\206\60\83\91\79")) then
		obj.Material = Enum.Material.SmoothPlastic;
		obj.Reflectance = 0;
		obj.CastShadow = false;
		obj.TextureID = "";
	end
end
local count = 0;
for _, obj in pairs(Workspace:GetDescendants()) do
	count = count + 1;
	if ((count % 250) ~= 0) then
	else
		task.wait();
	end
	optimizePart(obj);
end
local function optimizeCharacter(character)
	for _, v in pairs(character:GetDescendants()) do
		if ((272 == 272) and (v:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\111\168\211\119\60\208\66\182\87", "\196\46\203\176\18\79\163\45")) or v:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\139\42\119\12\48", "\143\216\66\30\126\68\155")) or v:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\154\201\3\223\214", "\129\202\168\109\171\165\195\183")) or v:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\1\80\54\202\223\23\242\39\74\26\221\205\28", "\134\66\56\87\184\190\116")) or v:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\15\57\0\169\13\204\51\52\44\57\0\184", "\85\92\81\105\219\121\139\65")))) then
			v:Destroy();
		elseif ((100 <= 3123) and v:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\223\178\67\64\76\222\239\167", "\191\157\211\48\37\28"))) then
			v.Material = Enum.Material.SmoothPlastic;
			v.Reflectance = 0;
		end
	end
end
for _, player in pairs(Players:GetPlayers()) do
	if (player.Character or (1369 > 4987)) then
		optimizeCharacter(player.Character);
	end
	player.CharacterAdded:Connect(function(char)
		char:WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\247\10\249\29\52\208\22\240\46\53\208\11\196\29\40\203", "\90\191\127\148\124"));
		optimizeCharacter(char);
	end);
end
Workspace.DescendantAdded:Connect(function(obj)
	task.spawn(optimizePart, obj);
end);
local PlayerGui = Players.LocalPlayer:WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\72\139\47\14\125\149\9\2\113", "\119\24\231\78"));
for _, guiObj in pairs(PlayerGui:GetDescendants()) do
	if (guiObj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\164\63\164\71\217", "\113\226\77\197\42\188\32")) or guiObj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\9\21\230\186\54\26\253\187\61\48\230\180\55\19", "\213\90\118\148")) or guiObj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\114\35\181\81\72\119\47\182\83\65", "\45\59\78\212\54")) or guiObj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\36\83\155\159\170\47\175\245\28", "\144\112\54\227\235\230\78\205")) or guiObj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\135\45\23\232\242\78\167\60\0\242", "\59\211\72\111\156\176")) or guiObj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\103\138\226\42\75\165\246\57\90\136\237", "\77\46\231\131")) or (863 >= 4584)) then
		if (guiObj.BackgroundTransparency >= 0.6) then
		else
			guiObj.BackgroundTransparency = 0.6;
		end
	elseif (guiObj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\143\125\145\82\187\80\191\69\180\64", "\32\218\52\214")) or guiObj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\123\62\2\188\227\191\78\95", "\58\46\119\81\200\145\208\37")) or guiObj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\30\165\19\163\187\179\51\57", "\86\75\236\80\204\201\221")) or guiObj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\71\104\71\132\250\143\123\79\112", "\235\18\33\23\229\158"))) then
		guiObj:Destroy();
	elseif (guiObj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\99\185\211\190\85\180\230\174\89", "\219\48\218\161")) or (724 >= 1668)) then
		local uiScale = guiObj:FindFirstChildOfClass(LUAOBFUSACTOR_DECRYPT_STR_0("\209\88\79\74\218\67\229", "\128\132\17\28\41\187\47"));
		if not uiScale then
			uiScale = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\52\27\53\57\92\13\55", "\61\97\82\102\90"));
			uiScale.Parent = guiObj;
		end
		uiScale.Scale = 1.15;
	end
end
local NetworkSettings = settings():GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\130\43\191\92\200\69\21\58\169\58\191\66\201\80\13", "\105\204\78\203\43\167\55\126"));
local ScriptContext = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\150\169\49\23\3\16\228\94\171\190\38\6\7", "\49\197\202\67\126\115\100\167"));
local GuiService = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\16\78\214\26\133\68\72\62\88\218", "\62\87\59\191\73\224\54"));
pcall(function()
	NetworkSettings.IncomingReplicationLag = 0;
end);
pcall(function()
	ScriptContext:SetTimeout(0.1);
end);
pcall(function()
	settings().Network.PhysicsSend = Enum.PhysicsSendMethod.ErrorResilient;
end);
pcall(function()
	settings().Rendering.EagerBulkExecution = false;
end);
pcall(function()
	local sethidden = sethiddenproperty or set_hidden_property or set_hidden_prop;
	if ((428 < 1804) and sethidden) then
		sethidden(NetworkSettings, LUAOBFUSACTOR_DECRYPT_STR_0("\206\12\249\198\234\11\244\206\213\7\234\197\238\1\251\221\238\13\244\229\230\5", "\169\135\98\154"), 0);
		sethidden(NetworkSettings, LUAOBFUSACTOR_DECRYPT_STR_0("\251\101\45\90\233\22\222\206\121\48\71", "\168\171\23\68\52\157\83"), false);
	end
end);
pcall(function()
	GuiService.Localize = false;
end);
