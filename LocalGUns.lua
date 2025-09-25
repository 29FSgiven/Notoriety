
local v0 = game:GetService("RunService"):IsStudio() or false;
local v1 = {
    Enum.KeyCode.LeftShift, 
    Enum.KeyCode.ButtonL3
};
local v2 = {
    Enum.UserInputType.MouseButton2, 
    Enum.KeyCode.T, 
    Enum.KeyCode.ButtonL2
};
local v3 = {
    Enum.UserInputType.MouseButton1, 
    Enum.KeyCode.ButtonR2
};
local v4 = {
    Enum.KeyCode.Space, 
    Enum.KeyCode.ButtonA
};
local v5 = {
    Enum.KeyCode.E
};
local v6 = {
    Enum.KeyCode.Q
};
local v7 = {
    Enum.KeyCode.R, 
    Enum.KeyCode.ButtonX
};
local _ = {
    Enum.KeyCode.P
};
local v9 = {
    Enum.KeyCode.Y, 
    Enum.KeyCode.DPadRight
};
local v10 = {
    Enum.KeyCode.Four, 
    Enum.KeyCode.DPadLeft
};
local _ = {
    Enum.KeyCode.Four, 
    Enum.KeyCode.DPadLeft
};
local v12 = {
    Enum.KeyCode.B, 
    Enum.KeyCode.DPadDown
};
local v13 = {
    Enum.KeyCode.H
};
local v14 = {
    Enum.KeyCode.M
};
local l_CreateLaser_0 = game:GetService("ReplicatedStorage"):WaitForChild("RS_Package"):WaitForChild("Remotes"):WaitForChild("CreateLaser");
local l_CreateHitEffect_0 = game:GetService("ReplicatedStorage"):WaitForChild("RS_Package"):WaitForChild("Remotes"):WaitForChild("CreateHitEffect");
local _ = require(game:GetService("ReplicatedStorage"):WaitForChild("RS_Package"):WaitForChild("ReplicatedScripts"):WaitForChild("Projectile"));
local _ = require(game:GetService("ReplicatedStorage"):WaitForChild("RS_Package"):WaitForChild("ReplicatedScripts"):WaitForChild("EffectReplication"));
local l_DamageCalculation_0 = require(game:GetService("ReplicatedStorage"):WaitForChild("RS_Package"):WaitForChild("ReplicatedScripts"):WaitForChild("DamageCalculation"));
local l_PropDamage_0 = require(game:GetService("ReplicatedStorage"):WaitForChild("RS_Package"):WaitForChild("ReplicatedScripts"):WaitForChild("PropDamage"));
local v21 = {
    Enum.KeyCode.NumLock, 
    Enum.KeyCode.Equals
};
local v22 = {
    5283599, 
    16682398, 
    24421684, 
    46834375, 
    14551764
};
local v23 = false;
local v24 = 0;
local v25 = 0;
local v26 = 0;
local v27 = nil;
local v28 = false;
local v29 = false;
local v30 = false;
local l_GameSettings_0 = UserSettings().GameSettings;
local v32 = false;
local v33 = false;
local v34 = {};
local v35 = {};
local v36 = {};
local v37 = {};
local v38 = {};
local v39 = {};
local _ = {};
local v41 = {
    2088934656, 
    1549086835, 
    1419274802
};
game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, false);
game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Health, false);
local l_new_0 = CFrame.new;
local v43 = l_new_0();
local l_Angles_0 = CFrame.Angles;
local l_new_1 = Vector3.new;
local v46 = l_new_1();
local _ = math.rad;
local _ = math.deg;
local l_min_0 = math.min;
local l_max_0 = math.max;
local l_atan2_0 = math.atan2;
local l_sin_0 = math.sin;
local l_cos_0 = math.cos;
local _ = math.random;
local l_asin_0 = math.asin;
local l_acos_0 = math.acos;
local l_abs_0 = math.abs;
local _ = math.ceil;
local _ = CFrame.new().inverse;
local _ = CFrame.new().toObjectSpace;
local l_clamp_0 = math.clamp;
local _ = game.WaitForChild;
local _ = game.Clone;
local l_new_2 = Instance.new;
local l_toObjectSpace_1 = v43.toObjectSpace;
local _ = v43.vectorToWorldSpace;
local _ = v43.pointToObjectSpace;
local l_vectorToObjectSpace_0 = v43.vectorToObjectSpace;
local v69 = false;
local v70 = false;
local v71 = false;
local v72 = true;
local v73 = {
    {
        l_new_0(1.5, 0, 0), 
        l_Angles_0(-0.4363323129985824, 0, 0), 
        l_new_0(-1.5, 0, 0), 
        l_Angles_0(-0.4363323129985824, 0, 0) * l_Angles_0(0, 0, 1.5707963267948966), 
        1, 
        0, 
        "", 
        ""
    }, 
    {
        l_new_0(0.905, 0.6, 0.3), 
        l_Angles_0(0.5235987755982988, 0, 0), 
        l_new_0(-1.5, 0, 0), 
        l_Angles_0(-0.4363323129985824, 0, 0) * l_Angles_0(0, 0, 1.5707963267948966), 
        12, 
        0.2, 
        "", 
        ""
    }, 
    {
        l_new_0(0.905, 1, 1), 
        l_Angles_0(0, 0, 0), 
        l_new_0(-1.5, 0, 0), 
        l_Angles_0(-0.4363323129985824, 0, 0) * l_Angles_0(0, 0, 1.5707963267948966), 
        14, 
        0.3, 
        "", 
        ""
    }, 
    {
        l_new_0(0.905, 0.9, 2.2), 
        l_Angles_0(0, 0, 0), 
        l_new_0(-1.5, 0, 0), 
        l_Angles_0(-0.4363323129985824, 0, 0) * l_Angles_0(0, 0, 1.5707963267948966), 
        14, 
        0.3, 
        "FadeMask", 
        ""
    }, 
    {
        l_new_0(0.905, 0.8, 2.2), 
        l_Angles_0(0, 0, 0), 
        l_new_0(-1.5, 0, 0), 
        l_Angles_0(-0.4363323129985824, 0, 0) * l_Angles_0(0, 0, 1.5707963267948966), 
        7, 
        0.1, 
        "ApplyMask", 
        ""
    }
};
local l_UserInputService_0 = game:GetService("UserInputService");
local l_RunService_0 = game:GetService("RunService");
local _ = game:GetService("ContentProvider");
local _ = game:GetService("ContextActionService");
local l_TweenService_0 = game:GetService("TweenService");
local l_l_UserInputService_0_GamepadConnected_0 = l_UserInputService_0:GetGamepadConnected(Enum.UserInputType.Gamepad1);
local v80 = false;
l_UserInputService_0.LastInputTypeChanged:connect(function(v81) --[[ Line: 183 ]]
    if v81 == Enum.UserInputType.Gamepad1 then
        l_l_UserInputService_0_GamepadConnected_0 = true;
        return;
    else
        if v81 == Enum.UserInputType.MouseMovement or v81 == Enum.UserInputType.Keyboard then
            l_l_UserInputService_0_GamepadConnected_0 = false;
        end;
        return;
    end;
end);
l_UserInputService_0.GamepadConnected:connect(function(_) --[[ Line: 191 ]]
    l_l_UserInputService_0_GamepadConnected_0 = true;
end);
l_UserInputService_0.GamepadDisconnected:connect(function(_) --[[ Line: 195 ]]
    l_l_UserInputService_0_GamepadConnected_0 = false;
end);
l_UserInputService_0.TextBoxFocused:Connect(function() --[[ Line: 199 ]]
    v80 = true;
end);
l_UserInputService_0.TextBoxFocusReleased:Connect(function() --[[ Line: 203 ]]
    v80 = false;
end);
local l_LocalPlayer_0 = game.Players.LocalPlayer;
local v85 = game:GetService("ReplicatedStorage"):WaitForChild("PlayerData"):WaitForChild(l_LocalPlayer_0.Name):WaitForChild(l_LocalPlayer_0.Name .. "'s Data");
local v86 = nil;
local l_Backpack_0 = l_LocalPlayer_0:WaitForChild("Backpack");
local l_PlayerGui_0 = l_LocalPlayer_0:WaitForChild("PlayerGui");
local l_ReplicatedStorage_0 = game:GetService("ReplicatedStorage");
local l_RS_Package_0 = l_ReplicatedStorage_0:WaitForChild("RS_Package");
local l_ActiveMutators_0 = l_ReplicatedStorage_0:WaitForChild("RS_Package"):WaitForChild("ActiveMutators");
local l_GunInfo_0 = require(game:GetService("ReplicatedStorage"):WaitForChild("RS_Package"):WaitForChild("ReplicatedScripts"):WaitForChild("GunInfo"));
local _ = require(game:GetService("ReplicatedStorage"):WaitForChild("RS_Package"):WaitForChild("ReplicatedScripts"):WaitForChild("SoundSystem3D"));
local l_DecalService_0 = require(l_RS_Package_0:WaitForChild("Assets"):WaitForChild("Effects"):WaitForChild("DecalService"));
repeat
    wait();
until l_LocalPlayer_0.Character ~= nil;
local l_Character_0 = l_LocalPlayer_0.Character;
local l_HumanoidRootPart_0 = l_Character_0:WaitForChild("HumanoidRootPart");
local l_Humanoid_0 = l_Character_0:WaitForChild("Humanoid");
l_Humanoid_0:SetStateEnabled(Enum.HumanoidStateType.Jumping, false);
local l_BodyVelocity_0 = Instance.new("BodyVelocity");
l_BodyVelocity_0.Name = "JumpVel";
l_BodyVelocity_0.MaxForce = Vector3.new(0, 0, 0, 0);
l_BodyVelocity_0.Velocity = l_new_1();
l_BodyVelocity_0.Parent = l_HumanoidRootPart_0;
local l_Head_0 = l_Character_0:WaitForChild("Head");
local l_Stamina_0 = l_Character_0:FindFirstChild("Stamina");
local l_MaxStamina_0 = l_Character_0:FindFirstChild("MaxStamina");
if l_Stamina_0 == nil then
    local v102 = nil;
    do
        local l_v102_0 = v102;
        l_v102_0 = l_Character_0.ChildAdded:connect(function(v104) --[[ Line: 250 ]]
            if v104.Name == "Stamina" then
                l_Stamina_0 = v104;
                l_v102_0:Disconnect();
            end;
        end);
    end;
end;
if l_MaxStamina_0 == nil then
    local v105 = nil;
    do
        local l_v105_0 = v105;
        l_v105_0 = l_Character_0.ChildAdded:connect(function(v107) --[[ Line: 259 ]]
            if v107.Name == "MaxStamina" then
                l_MaxStamina_0 = v107;
                l_v105_0:Disconnect();
            end;
        end);
    end;
end;
local function v113(v108, v109) --[[ Line: 278 ]] --[[ Name: hasSkill ]]
    local v110 = game:GetService("ReplicatedStorage").PlayerData:WaitForChild(l_LocalPlayer_0.Name):WaitForChild(l_LocalPlayer_0.Name .. "'s Data");
    if v110 then
        local l_Using_0 = v110:WaitForChild("Classes"):FindFirstChild("Using");
        if l_Using_0 then
            local l_l_Using_0_FirstChild_0 = l_Using_0:FindFirstChild(v108 .. "Tree");
            if l_l_Using_0_FirstChild_0 and l_l_Using_0_FirstChild_0.Value:find(v109) then
                return true;
            end;
        end;
    end;
    return false;
end;
local l_CurrentCamera_0 = workspace.CurrentCamera;
local l_l_LocalPlayer_0_Mouse_0 = l_LocalPlayer_0:GetMouse();
local _ = game:GetService("ReplicatedStorage"):WaitForChild("RS_Package"):WaitForChild("ReplicatedGameStatus"):WaitForChild("Caught");
local l_Assets_0 = game.ReplicatedStorage:WaitForChild("RS_Package"):WaitForChild("Assets");
local l_Remotes_0 = l_Assets_0.Remotes;
local l_Damage_0 = l_Remotes_0.Damage;
l_Damage_0:FireServer("SendKey", (tostring(math.random(1, 100000000))));
local v120 = Instance.new("ScreenGui", l_PlayerGui_0);
v120.Name = "MouceIcon";
v120.Enabled = false;
local v121 = Instance.new("ImageLabel", v120);
v121.Name = "Icon";
v121.BackgroundTransparency = 1;
v121.Size = UDim2.new(0, 10, 0, 10);
v121.Position = UDim2.new(0.5, -v121.Size.X.Offset / 2, 0.5, -v121.Size.Y.Offset / 2);
v121.Image = "";
local v122 = Instance.new("Model", l_CurrentCamera_0);
v122.Name = "CameraModel";
local l_Options_0 = game:GetService("ReplicatedStorage"):WaitForChild("PlayerData"):WaitForChild(l_LocalPlayer_0.Name):WaitForChild(l_LocalPlayer_0.Name .. "'s Data"):WaitForChild("Options");
local _ = l_Options_0:WaitForChild("Graphics"):WaitForChild("Effects").Value;
local l_HitEvent_0 = script:WaitForChild("HitEvent");
local l_Value_1 = l_Options_0:WaitForChild("Graphics"):WaitForChild("HitIndicators").Value;
local l_Value_2 = l_Options_0:WaitForChild("Graphics"):WaitForChild("Hitmarker").Value;
local l_Options_1 = game:GetService("ReplicatedStorage"):WaitForChild("PlayerData"):WaitForChild(l_LocalPlayer_0.Name):WaitForChild(l_LocalPlayer_0.Name .. "'s Data"):WaitForChild("Options");
local l_Value_3 = l_Options_1:WaitForChild("Graphics"):WaitForChild("Effects").Value;
local l_Value_4 = l_Options_1:WaitForChild("Graphics"):WaitForChild("Blood").Value;
_G.BloodEnabled = not l_l_UserInputService_0_GamepadConnected_0 and l_Value_4 or 0;
local v131 = {};
local v132 = {};
local l_SFX_0 = l_PlayerGui_0:WaitForChild("SG_Package"):WaitForChild("SFX");
local l_Hitmark_0 = l_SFX_0:WaitForChild("Hitmark");
local l_MobileUI_0 = l_PlayerGui_0:WaitForChild("SG_Package"):WaitForChild("MainGui"):WaitForChild("MobileUI");
local l_HeartWatch_0 = l_PlayerGui_0:WaitForChild("SG_Package"):WaitForChild("HeartWatch");
local l_dot_0 = l_PlayerGui_0:WaitForChild("SG_Package"):WaitForChild("MainGui"):WaitForChild("frame_crosshairs"):WaitForChild("dot");
local v138 = l_dot_0 and l_dot_0:FindFirstChild("UIStroke");
local l_Value_5 = l_Options_1:WaitForChild("Gameplay"):WaitForChild("Crosshair").Value;
local l_hitmark_0 = l_dot_0.Parent:WaitForChild("hitmark");
local function v149(v141, v142) --[[ Line: 348 ]] --[[ Name: hitmarkanim ]]
    local v143 = l_hitmark_0:Clone();
    v143.Parent = l_hitmark_0.Parent;
    v143.Size = UDim2.new(0, 0, 0, 0);
    v143.Rotation = 45 + math.random(-2, 2) * 25;
    v143.ZIndex = v143.ZIndex + (v142 and 2 or 0);
    l_TweenService_0:Create(v143, TweenInfo.new(0.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out, 0, true), {
        Size = UDim2.new(0, v142 and 45 or 40, 0, v142 and 45 or 40), 
        Rotation = 45 + math.random(-2, 2)
    }):Play();
    for _, v145 in v143:GetChildren() do
        for _, v147 in v145:GetChildren() do
            v147.BackgroundTransparency = 0;
            if v141 then
                v147.BackgroundColor3 = v141;
            end;
            l_TweenService_0:Create(v147, TweenInfo.new(v142 and 0.3 or 0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0.1), {
                BackgroundTransparency = 1
            }):Play();
        end;
    end;
    l_Hitmark_0 = v142 and l_SFX_0:FindFirstChild("CritHitmark") or l_SFX_0:FindFirstChild("Hitmark");
    if l_Hitmark_0 then
        local v148 = l_Hitmark_0:Clone();
        v148.Parent = l_dot_0;
        v148.PlaybackSpeed = v148.PlaybackSpeed + math.random(95, 110) / 100;
        v148.PlayOnRemove = true;
        game.Debris:AddItem(v148, l_Hitmark_0:GetAttribute("Delay") or 0);
    end;
    game.Debris:AddItem(v143, 0.4);
end;
local function v153(v150, v151, v152) --[[ Line: 400 ]] --[[ Name: updateCrosshair ]]
    l_dot_0.BackgroundColor3 = v150;
    l_TweenService_0:Create(l_dot_0, TweenInfo.new(2, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
        BackgroundColor3 = Color3.new(1, 1, 1)
    }):Play();
    if v151 and l_Value_2 then
        v149(v150, v152);
    end;
end;
local function v156(v154, v155) --[[ Line: 411 ]] --[[ Name: fadeCrosshair ]]
    l_TweenService_0:Create(l_dot_0, TweenInfo.new(v155, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
        BackgroundTransparency = v154
    }):Play();
    if v138 then
        l_TweenService_0:Create(v138, TweenInfo.new(v155, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
            Transparency = math.clamp(v154, 0.5, 1)
        }):Play();
    end;
end;
if not l_Value_5 then
    l_dot_0.Visible = false;
end;
game.ReplicatedStorage:WaitForChild("RS_Package"):WaitForChild("Remotes"):WaitForChild("ShowYellResult").OnClientEvent:Connect(function() --[[ Line: 424 ]]
    v153(Color3.fromRGB(0, 255, 0));
end);
lerp = function(v157, v158, v159) --[[ Line: 428 ]] --[[ Name: lerp ]]
    return v157 + (v158 - v157) * v159;
end;
MatchKeys = function(v160, v161) --[[ Line: 432 ]] --[[ Name: MatchKeys ]]
    for _, v163 in pairs(v161) do
        if v163 and (v160.KeyCode == v163 or v160.UserInputType == v163) then
            return true;
        end;
    end;
    return false;
end;
local v164 = {};
l_UserInputService_0.InputBegan:Connect(function(v165, _) --[[ Line: 445 ]]
    if v80 then
        return;
    else
        v164[v165.KeyCode] = v165;
        return;
    end;
end);
l_UserInputService_0.InputEnded:Connect(function(v167, _) --[[ Line: 450 ]]
    v164[v167.KeyCode] = false;
end);
v34.Spring = {};
v34.Spring = {};
v34.Spring.new = function(v169) --[[ Line: 461 ]] --[[ Name: new ]]
    local v170 = tick();
    local v171 = v169 or 0;
    local v172 = v169 and 0 * v169 or 0;
    local v173 = v169 or 0;
    local v174 = 1;
    local v175 = 1;
    local function v186(v176) --[[ Line: 469 ]] --[[ Name: positionvelocity ]]
        local v177 = v176 - v170;
        local v178 = v171 - v173;
        if v175 == 0 then
            return v171, 0;
        elseif v174 < 1 then
            local v179 = (1 - v174 * v174) ^ 0.5;
            local v180 = (v172 / v175 + v174 * v178) / v179;
            local v181 = l_cos_0(v179 * v175 * v177);
            local v182 = l_sin_0(v179 * v175 * v177);
            local v183 = 2.718281828459045 ^ (v174 * v175 * v177);
            return v173 + (v178 * v181 + v180 * v182) / v183, v175 * ((v179 * v180 - v174 * v178) * v181 - (v179 * v178 + v174 * v180) * v182) / v183;
        else
            local v184 = v172 / v175 + v178;
            local v185 = 2.718281828459045 ^ (v175 * v177);
            return v173 + (v178 + v184 * v175 * v177) / v185, v175 * (v184 - v178 - v184 * v175 * v177) / v185;
        end;
    end;
    return (setmetatable({
        accelerate = function(_, v188) --[[ Line: 491 ]] --[[ Name: accelerate ]]
            local v189 = tick();
            local v190, v191 = v186(v189);
            v171 = v190;
            v172 = v191 + v188;
            v170 = v189;
        end
    }, {
        __index = function(_, v193) --[[ Line: 499 ]] --[[ Name: __index ]]
            if v193 == "value" or v193 == "position" or v193 == "p" then
                local v194, _ = v186(tick());
                return v194;
            elseif v193 == "velocity" or v193 == "v" then
                local _, v197 = v186(tick());
                return v197;
            elseif v193 == "acceleration" or v193 == "a" then
                local v198 = tick() - v170;
                local v199 = v171 - v173;
                if v175 == 0 then
                    return 0;
                elseif v174 < 1 then
                    local v200 = (1 - v174 * v174) ^ 0.5;
                    local v201 = (v172 / v175 + v174 * v199) / v200;
                    return v175 * v175 * ((v174 * v174 * v199 - 2 * v200 * v174 * v201 - v200 * v200 * v199) * l_cos_0(v200 * v175 * v198) + (v174 * v174 * v201 + 2 * v200 * v174 * v199 - v200 * v200 * v201) * l_sin_0(v200 * v175 * v198)) / 2.718281828459045 ^ (v174 * v175 * v198);
                else
                    local v202 = v172 / v175 + v199;
                    return v175 * v175 * (v199 - 2 * v202 + v202 * v175 * v198) / 2.718281828459045 ^ (v175 * v198);
                end;
            elseif v193 == "target" or v193 == "t" then
                return v173;
            elseif v193 == "damper" or v193 == "d" then
                return v174;
            elseif v193 == "speed" or v193 == "s" then
                return v175;
            else
                error(v193 .. " is not a valid member of spring", 0);
                return;
            end;
        end, 
        __newindex = function(_, v204, v205) --[[ Line: 532 ]] --[[ Name: __newindex ]]
            local v206 = tick();
            if v204 == "value" or v204 == "position" or v204 == "p" then
                local _, v208 = v186(v206);
                v171 = v205;
                v172 = v208;
            elseif v204 == "velocity" or v204 == "v" then
                local v209, _ = v186(v206);
                v171 = v209;
                v172 = v205;
            elseif v204 == "acceleration" or v204 == "a" then
                local v211, v212 = v186(v206);
                local v213 = v212 + v205;
                v171 = v211;
                v172 = v213;
            elseif v204 == "target" or v204 == "t" then
                local v214, v215 = v186(v206);
                v171 = v214;
                v172 = v215;
                v173 = v205;
            elseif v204 == "damper" or v204 == "d" then
                local v216, v217 = v186(v206);
                v171 = v216;
                v172 = v217;
                v174 = v205 < 0 and 0 or v205 < 1 and v205 or 1;
            elseif v204 == "speed" or v204 == "s" then
                local v218, v219 = v186(v206);
                v171 = v218;
                v172 = v219;
                v175 = v205 < 0 and 0 or v205;
            else
                error(v204 .. " is not a valid member of spring", 0);
            end;
            v170 = v206;
        end
    }));
end;
local v220 = v34.Spring.new(Vector2.new());
v220.d = 1;
v220.s = 20;
local v221 = v34.Spring.new(Vector2.new());
v221.d = 3.5;
v221.s = 20;
v35.BindModel = function(v222, v223) --[[ Line: 572 ]] --[[ Name: BindModel ]]
    if not v223 or not v222 then
        return;
    else
        local v224 = v223.CFrame or v223:GetModelCFrame();
        for _, v226 in pairs(v222:GetChildren()) do
            if v226:IsA("BasePart") then
                local v227 = v226:FindFirstChild("Weld") or v226:FindFirstChildOfClass("Motor6D");
                if v227 then
                    v227:Destroy();
                end;
                local v228 = Instance.new("Motor6D", v223);
                v228.Name = v226.Name .. "Weld";
                v228.Part0 = v223;
                v228.Part1 = v226;
                v228.C0 = l_toObjectSpace_1(v224, v226.CFrame);
                v226.CanCollide = false;
                v226.Anchored = false;
            elseif v226:IsA("Model") or v226:IsA("Folder") then

            end;
        end;
        return;
    end;
end;
v35.GroupParts = function(_, v230, v231) --[[ Line: 599 ]] --[[ Name: GroupParts ]]
    local v232 = l_new_2("Model");
    v232.Parent = v231 or nil;
    v232.Name = "Model";
    for _, v234 in pairs(v230) do
        if v234 then
            v234:Clone().Parent = v232;
        end;
    end;
    return v232;
end;
v36.DefaultWalkSpeed = 12;
if v113("G", "j") then
    v36.DefaultWalkSpeed = v36.DefaultWalkSpeed * 1.1;
end;
v36.RunSpeed = v36.DefaultWalkSpeed * 5 / 3;
v36.CrouchSpeed = v36.DefaultWalkSpeed * 0.5;
if v113("G", "F") then
    v36.RunSpeed = v36.RunSpeed * 1.25;
end;
v36.JumpPower = 35;
v36.Crouching = false;
local v235 = v34.Spring.new((l_new_1()));
local v236 = v34.Spring.new(0);
local v237 = v34.Spring.new(v36.DefaultWalkSpeed);
local v238 = v34.Spring.new(0);
v235.s = 8.5;
v236.s = 6;
v237.s = 12;
v238.s = 16;
v235.d = 0.6;
v236.d = 0.65;
v237.d = 0.8;
v238.d = 0.8;
local v239 = 0;
local l_v237_0 = v237 --[[ copy: 136 -> 178 ]];
local function v241() --[[ Line: 650 ]] --[[ Name: updateBaseSpeed ]]
    v36.DefaultWalkSpeed = l_Character_0:FindFirstChild("BaseSpeed") and l_Character_0:FindFirstChild("BaseSpeed").Value or 12;
    v36.RunSpeed = v36.DefaultWalkSpeed * 1.66;
    v36.CrouchSpeed = v36.DefaultWalkSpeed * 0.5;
    if v113("G", "F") then
        v36.RunSpeed = v36.RunSpeed * 1.25;
    end;
    l_v237_0.t = v36.DefaultWalkSpeed;
    print("Walkspeed is now " .. v36.DefaultWalkSpeed);
    print("Runspeed is now " .. v36.RunSpeed);
end;
local l_BaseSpeed_0 = l_Character_0:FindFirstChild("BaseSpeed");
if l_BaseSpeed_0 then
    v241();
    local l_v241_0 = v241 --[[ copy: 139 -> 211 ]];
    l_BaseSpeed_0.Changed:Connect(function() --[[ Line: 667 ]]
        l_v241_0();
    end);
else
    local l_v241_1 = v241 --[[ copy: 139 -> 179 ]];
    spawn(function() --[[ Line: 671 ]]
        repeat
            wait();
        until l_Character_0:FindFirstChild("BaseSpeed");
        l_v241_1();
        l_Character_0:FindFirstChild("BaseSpeed").Changed:Connect(function() --[[ Line: 674 ]]
            l_v241_1();
        end);
    end);
end;
v36.Distance = 0;
v36.Speed = 0;
v36.Sprint = 0;
v36.Velocity = v46;
v36.Sprinting = false;
v36.ResetWalkSpeed = function(_) --[[ Line: 689 ]] --[[ Name: ResetWalkSpeed ]]
    local l_Value_6 = l_Character_0:WaitForChild("BagSpeed").Value;
    if v36.Crouching then
        v36:SetWalkSpeed((v36.DefaultWalkSpeed - v36.CrouchSpeed) * l_Value_6);
        return;
    else
        v36:SetWalkSpeed((v36.Sprinting and v36.RunSpeed or v36.DefaultWalkSpeed) * l_Value_6);
        return;
    end;
end;
local l_v237_1 = v237 --[[ copy: 136 -> 180 ]];
do
    local l_v239_0 = v239;
    v36.SetWalkSpeed = function(_, v250) --[[ Line: 699 ]] --[[ Name: SetWalkSpeed ]]
        local v251 = v113("E", "l") and v39.Current and v39.Current.data and v39.Current.data.WeaponType == "Melee" and 1.1 or 1;
        local v252 = v39.Current and v39.Current.shieldDeployed and 0.5 or 1;
        l_v237_1.t = v250 * v251 * v252 + 0 + l_v239_0;
    end;
    v36.SetLocalTransparency = function(_, v254, v255) --[[ Line: 710 ]] --[[ Name: SetLocalTransparency ]]
        local v256 = v255 or l_Character_0;
        for _, v258 in pairs(v256:GetDescendants()) do
            if v258 and (v258:IsA("BasePart") or v258:IsA("Decal") or v258:IsA("Texture")) and v258.LocalTransparencyModifier ~= v254 then
                v258.LocalTransparencyModifier = v254;
            end;
        end;
    end;
    local v259 = false;
    local v260 = 0;
    local v261 = tick();
    local v262 = tick();
    v36.IsOnGround = function(_) --[[ Line: 733 ]] --[[ Name: IsOnGround ]]
        if l_HumanoidRootPart_0.Velocity.Y > l_Humanoid_0.JumpPower / 2 then
            return false;
        else
            local l_Children_0 = workspace.MapZones:GetChildren();
            table.insert(l_Children_0, workspace.CurrentCamera);
            table.insert(l_Children_0, l_Character_0 or game.Players.LocalPlayer.Character);
            local l_CFrame_0 = l_HumanoidRootPart_0.CFrame;
            local v266 = l_new_1(0, -(3 + l_Humanoid_0.HipHeight), 0);
            local v267 = nil;
            local l_p_0 = l_CFrame_0.p;
            while true do
                local _ = l_p_0;
                local l_workspace_PartOnRayWithIgnoreList_0, v271 = workspace:FindPartOnRayWithIgnoreList(Ray.new(l_p_0 - Vector3.new(0, 0.05000000074505806, 0, 0), v266), l_Children_0);
                v267 = l_workspace_PartOnRayWithIgnoreList_0;
                l_p_0 = v271;
                if v267 then
                    if v267.CanCollide == false then
                        l_workspace_PartOnRayWithIgnoreList_0 = (l_CFrame_0.p - l_p_0).Magnitude;
                        v266 = l_new_1(0, -math.max(3 + l_Humanoid_0.HipHeight + l_workspace_PartOnRayWithIgnoreList_0, 0.05), 0);
                        v267 = nil;
                    end;
                    if v267 then
                        break;
                    end;
                else
                    break;
                end;
            end;
            if v267 then
                if v259 and l_BodyVelocity_0 then
                    v259 = false;
                    l_BodyVelocity_0.Velocity = l_new_1();
                    v260 = 0;
                    l_BodyVelocity_0.MaxForce = Vector3.new(0, 0, 0, 0);
                    v262 = tick();
                end;
                return true, v267.Material;
            else
                if v259 and l_BodyVelocity_0 and workspace:FindPartOnRayWithIgnoreList(Ray.new(l_CurrentCamera_0.CFrame.p, l_BodyVelocity_0.Velocity.Unit * 2), l_Children_0) then
                    v259 = false;
                    l_BodyVelocity_0.Velocity = l_new_1();
                    v260 = 0;
                    l_BodyVelocity_0.MaxForce = Vector3.new(0, 0, 0, 0);
                    v262 = tick();
                end;
                return false;
            end;
        end;
    end;
    v36.SetSprint = function(_, v273) --[[ Line: 775 ]] --[[ Name: SetSprint ]]
        if not v39.Current then
            if v36.Sprinting then
                v36.Sprinting = false;
                v36:ResetWalkSpeed();
            end;
            return;
        elseif not v69 then
            l_PlayerGui_0:WaitForChild("SG_Package"):WaitForChild("MainGui"):WaitForChild("Events").CasingError:Fire("You cannot sprint while in casing mode");
            return;
        else
            local l_Value_7 = l_Character_0:WaitForChild("BagSpeed").Value;
            if l_Stamina_0 and l_Stamina_0.Value / l_MaxStamina_0.Value < 0.25 then
                v273 = false;
            end;
            v273 = v273 and not v39.Current.aiming and (not v39.Current.reloading or v113("G", "J"));
            local _ = v273;
            v273 = v273 and not v36.Crouching;
            if not v36.Sprinting and v273 then
                game:GetService("ReplicatedStorage"):WaitForChild("RS_Package").Remotes.RunController:FireServer(v273, true);
            elseif v36.Sprinting and not v273 then
                game:GetService("ReplicatedStorage"):WaitForChild("RS_Package").Remotes.RunController:FireServer(v273, true);
            end;
            if v273 then
                if v39.Current.inspecting then
                    v39.Current:setinspecting(false);
                end;
                v36.Sprinting = true;
                v156(1, 0.1);
                v36:SetWalkSpeed(v36.RunSpeed * l_Value_7);
                return;
            else
                v36.Sprinting = false;
                if not v39.Current.aiming then
                    v156(0, 0.1);
                end;
                if not v36.Crouching then
                    v36:SetWalkSpeed(v36.DefaultWalkSpeed * l_Value_7);
                    return;
                else
                    v36:SetWalkSpeed((v36.DefaultWalkSpeed - v36.CrouchSpeed) * l_Value_7);
                    return;
                end;
            end;
        end;
    end;
    v36.Jump = function(_) --[[ Line: 820 ]] --[[ Name: Jump ]]
        if not v69 then
            l_PlayerGui_0:WaitForChild("SG_Package"):WaitForChild("MainGui"):WaitForChild("Events").CasingError:Fire("You cannot jump while in casing mode");
            return;
        elseif l_Humanoid_0.Sit then
            l_Humanoid_0:ChangeState(Enum.HumanoidStateType.Jumping);
            return;
        else
            if v36:IsOnGround() and tick() - v262 >= 0.1 then
                v259 = true;
                if l_BodyVelocity_0 then
                    local l_Children_1 = workspace.MapZones:GetChildren();
                    table.insert(l_Children_1, workspace.CurrentCamera);
                    table.insert(l_Children_1, l_Character_0 or game.Players.LocalPlayer.Character);
                    local v278 = l_new_1(l_Humanoid_0.MoveDirection.X, 0, l_Humanoid_0.MoveDirection.Z);
                    local l_workspace_PartOnRayWithIgnoreList_1 = workspace:FindPartOnRayWithIgnoreList(Ray.new(l_CurrentCamera_0.CFrame.p, v278.Unit * 2), l_Children_1);
                    local v280 = false;
                    if l_workspace_PartOnRayWithIgnoreList_1 == nil then
                        v280 = v36.Sprinting;
                    end;
                    v260 = l_Humanoid_0.WalkSpeed;
                    l_BodyVelocity_0.Velocity = v278 * v260;
                    l_BodyVelocity_0.MaxForce = if v280 then Vector3.new(1e999, 0, 1e999, 0) else l_new_1();
                end;
                l_HumanoidRootPart_0.Velocity = l_new_1(0, v36.JumpPower * 1.2, 0);
                v261 = tick();
            end;
            return;
        end;
    end;
    local v281 = false;
    local l_Value_8 = l_Options_1:WaitForChild("Gameplay"):WaitForChild("ToggleSprint").Value;
    local v283 = false;
    for _, v285 in pairs(v22) do
        if v285 == l_LocalPlayer_0.UserId then
            v283 = true;
        end;
    end;
    game:GetService("ReplicatedStorage"):WaitForChild("RS_Package"):WaitForChild("Remotes"):WaitForChild("BecomeGuard").OnClientEvent:Connect(function() --[[ Line: 860 ]]
        v32 = true;
        v36:SetSprint(false);
        v36:SetWalkSpeed(0);
        local l_Frame_0 = Instance.new("Frame");
        l_Frame_0.BackgroundColor3 = Color3.new(0, 0, 0);
        l_Frame_0.BorderSizePixel = 0;
        l_Frame_0.Size = UDim2.new(1, 0, 1, 0);
        l_Frame_0.BackgroundTransparency = 1;
        l_Frame_0.Parent = l_PlayerGui_0:WaitForChild("SG_Package"):WaitForChild("MainGui");
        l_TweenService_0:Create(l_Frame_0, TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
            BackgroundTransparency = 0
        }):Play();
        if v39.Current then
            v39.Current:putAway(true);
        end;
        wait(6);
        l_TweenService_0:Create(l_Frame_0, TweenInfo.new(5, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
            BackgroundTransparency = 1
        }):Play();
        if v39.Current then
            v39.Current:unequip();
        end;
        l_Humanoid_0:UnequipTools();
        v36:ResetWalkSpeed();
    end);
    local l_l_Value_8_0 = l_Value_8 --[[ copy: 146 -> 181 ]];
    l_UserInputService_0.InputBegan:Connect(function(v288, _) --[[ Line: 885 ]]
        if v80 then
            return;
        else
            if MatchKeys(v288, v1) then
                if l_l_Value_8_0 then
                    v36:SetSprint(not v36.Sprinting);
                else
                    v36:SetSprint(true);
                end;
            end;
            if MatchKeys(v288, v4) then
                v281 = true;
                while v281 do
                    v36:Jump();
                    wait();
                end;
            end;
            if MatchKeys(v288, v7) and v39.Current and (v39.Current.data.WeaponType == "Gun" or v39.Current.data.WeaponType == "Gadget") then
                v39.Current:setreloading(true);
            end;
            if MatchKeys(v288, v9) and v39.Current and v39.Current.data.WeaponType == "Gun" then
                v39.Current.altaim = not v39.Current.altaim;
                if v39.Current.aiming and v39.Current.altaimpart then
                    v39.Current:setaim(true, true);
                end;
            end;
            if v283 and MatchKeys(v288, v21) then
                l_Humanoid_0:UnequipTools();
                v23 = true;
            end;
            return;
        end;
    end);
    l_UserInputService_0.InputEnded:Connect(function(v290, _) --[[ Line: 923 ]]
        if v80 then
            return;
        else
            if not l_l_Value_8_0 and MatchKeys(v290, v1) then
                v36:SetSprint(false);
            end;
            if MatchKeys(v290, v4) then
                v281 = false;
            end;
            return;
        end;
    end);
    local v292 = 15;
    if v113("G", "f") then
        v292 = v292 * 1.25;
    end;
    spawn(function() --[[ Line: 940 ]]
        repeat
            task.wait();
        until l_Character_0:FindFirstChild("Armor");
        local l_Armor_0 = l_Character_0:WaitForChild("Armor");
        local v294 = v113("G", "b");
        local v295 = v113("G", "B");
        local v296 = 3;
        if v295 then
            v296 = 5;
        end;
        local v297 = false;
        l_Character_0:GetAttributeChangedSignal("SecondWind"):Connect(function() --[[ Line: 950 ]]
            local v298 = l_Character_0:GetAttribute("SecondWind") or false;
            if v298 and not v297 then
                v297 = true;
                l_v239_0 = v296;
                v36:ResetWalkSpeed();
                game.Players.LocalPlayer.PlayerGui:WaitForChild("SG_Package").SFX.SecondWind:Play();
                return;
            else
                if not v298 and v297 then
                    v297 = false;
                    l_v239_0 = 0;
                    v36:ResetWalkSpeed();
                end;
                return;
            end;
        end);
        l_Armor_0.Changed:connect(function(v299) --[[ Line: 964 ]]
            if v299 == 0 and v294 then
                l_Character_0:SetAttribute("SecondWind", 5);
            end;
        end);
    end);
    local v300 = false;
    local function v303(v301) --[[ Line: 973 ]] --[[ Name: charismaBoost ]]
        local v302 = l_Character_0:GetAttribute("CHARISMA") or false;
        if v302 and not v300 then
            v300 = true;
            l_v239_0 = v301;
            v36:ResetWalkSpeed();
            game.Players.LocalPlayer.PlayerGui:WaitForChild("SG_Package").SFX.SecondWind:Play();
            return;
        else
            if not v302 and v300 then
                v300 = false;
                l_v239_0 = 0;
                v36:ResetWalkSpeed();
            end;
            return;
        end;
    end;
    local l_v303_0 = v303 --[[ copy: 150 -> 182 ]];
    l_Character_0:GetAttributeChangedSignal("charisma"):Connect(function() --[[ Line: 987 ]]
        l_v303_0(3);
    end);
    l_Character_0:GetAttributeChangedSignal("charisma"):Connect(function() --[[ Line: 990 ]]
        l_v303_0(5);
    end);
    local v305 = tick();
    local l_v237_2 = v237 --[[ copy: 136 -> 183 ]];
    local l_v235_0 = v235 --[[ copy: 134 -> 184 ]];
    local l_v238_0 = v238 --[[ copy: 137 -> 185 ]];
    local l_v236_0 = v236 --[[ copy: 135 -> 186 ]];
    Step = function(v310) --[[ Line: 995 ]] --[[ Name: Step ]]
        if v39.Current then
            v36:ResetWalkSpeed();
        end;
        local v311 = Vector3.new(1, 0, 1, 0) * l_vectorToObjectSpace_0(l_HumanoidRootPart_0.CFrame, l_HumanoidRootPart_0.Velocity);
        if v311.Magnitude > l_v237_2.t then
            l_v235_0.t = l_new_1();
        else
            l_v235_0.t = v311;
        end;
        if l_Humanoid_0.Sit then
            l_BodyVelocity_0.Velocity = Vector3.new(0, 0, 0, 0);
        elseif v259 and l_BodyVelocity_0 then
            l_BodyVelocity_0.Velocity = l_new_1(l_Humanoid_0.MoveDirection.X, 0, l_Humanoid_0.MoveDirection.Z) * v260;
        end;
        l_v238_0.t = (not v36.Sprinting or l_Character_0:GetAttribute("CarryingBody") or v39.Current and v39.Current.reloading) and 0 or 1;
        if v36:IsOnGround() then
            l_v236_0.t = v311.magnitude;
        else
            l_v236_0.t = 0;
        end;
        if l_Character_0:FindFirstChild("Health") and l_Character_0:FindFirstChild("Health").Value <= 0 or l_Character_0.Parent == nil then
            l_v235_0.t = l_new_1();
            l_v236_0.t = 0;
        end;
        if l_Stamina_0 and l_Character_0:FindFirstChild("INFSTAM") == nil then
            if v36.Sprinting and l_Stamina_0.Value > 0 and v311.Magnitude > l_v237_2.t / 2 then
                l_Stamina_0.Value = l_Stamina_0.Value - 25 * v310;
            elseif v36.Sprinting and l_Stamina_0.Value <= 0 then
                l_Stamina_0.Value = 0;
                v36:SetSprint(false);
            elseif l_Stamina_0.Value < l_MaxStamina_0.Value then
                l_Stamina_0.Value = math.min(l_Stamina_0.Value + v292 * v310, l_MaxStamina_0.Value);
            end;
        end;
        v36.Velocity = l_v235_0.p;
        v36.Speed = l_v236_0.p;
        v36.Distance = v36.Distance + v310 * v36.Speed;
        l_Humanoid_0.WalkSpeed = l_v237_2.p;
        v36.Sprint = l_v238_0.p;
        if v37.Mode == "FirstPerson" and not l_Humanoid_0.Sit then
            local l_v37_CameraHeading_0, _ = v37:GetCameraHeading();
            l_HumanoidRootPart_0.CFrame = l_Angles_0(0, l_v37_CameraHeading_0, 0) + l_HumanoidRootPart_0.Position;
        end;
        if not v72 and l_LocalPlayer_0.Character and l_LocalPlayer_0.Character.Parent ~= nil then
            v122.Parent = l_CurrentCamera_0;
            v72 = true;
        elseif v72 and (l_LocalPlayer_0.Character == nil or l_LocalPlayer_0.Character.Parent == nil) then
            v122.Parent = game:GetService("ReplicatedStorage");
            v72 = false;
        end;
        if tick() >= v305 then
            v305 = tick() + 0.125;
            local l_Position_0 = (l_CurrentCamera_0.CFrame * CFrame.new(0, 0, -200)).Position;
            local v315 = v37.LeanValue or 0;
            game.ReplicatedStorage.RS_Package.Remotes.LookVector:FireServer(l_Position_0, v315);
        end;
    end;
    table.insert(v132, Step);
end;
v235 = l_new_0();
v236 = require(l_LocalPlayer_0:WaitForChild("PlayerScripts"):WaitForChild("CameraShaker"));
do
    local l_v235_1, l_v239_1, l_v241_2 = v235, v239, v241;
    v237 = v236.new(Enum.RenderPriority.Camera.Value, function(v319, v320) --[[ Line: 1082 ]]
        v320 = v320 or 0.016666666666666666;
        l_v235_1 = l_v235_1:Lerp(v319, 60 * v320);
    end);
    v237:Start();
    v37.Mode = "Normal";
    v37.LookDelta = v46;
    v37.ThumbstickDelta = v46;
    v37.SwayDelta = v46;
    v37.DefaultXSensitivity = 1;
    v37.DefaultYSensitivity = 1;
    v37.XSensitivity = v37.DefaultXSensitivity;
    v37.YSensitivity = v37.DefaultYSensitivity;
    v37.SniperAimSensitivityMultiplier = 0.075;
    v37.StandardAimSensitivityMultiplier = 0.75;
    v37.Offset = Vector3.new(1.75, 3, 0, 0);
    v37.Distance = 10;
    v238 = -1.3089969389957472;
    l_v239_1 = 1.3089969389957472;
    v37.LookMin = v238;
    v37.LookMax = l_v239_1;
    v37.AimScale = 0.4;
    v37.DefaultFOV = 90;
    v37.YInvertValue = UserSettings().GameSettings:GetCameraYInvertValue() or 1;
    v238 = workspace:FindFirstChild("SpawnLocation");
    if v238 then
        v37.LookDelta = v46 + Vector3.new(math.rad(v238.Orientation.Y), 0, 0);
    end;
    l_v239_1 = true;
    l_v241_2 = true;
    l_BaseSpeed_0 = v34.Spring.new(v37.DefaultFOV);
    l_BaseSpeed_0.s = 18;
    l_BaseSpeed_0.d = 0.9;
    local v321 = v34.Spring.new(v37.Distance);
    v321.s = 18;
    v321.d = 0.9;
    local v322 = v34.Spring.new(0);
    v322.s = 15;
    v322.d = 1;
    local v323 = v34.Spring.new(0);
    v323.s = 8;
    v323.d = 1;
    v323.t = 0;
    CheckIfCanLean = function() --[[ Line: 1131 ]] --[[ Name: CheckIfCanLean ]]
        return l_v239_1;
    end;
    v37.ResetSensitivity = function(_) --[[ Line: 1135 ]] --[[ Name: ResetSensitivity ]]
        v37:SetSensitivity(1, 1);
    end;
    v37.SetSensitivity = function(_, v326, v327) --[[ Line: 1140 ]] --[[ Name: SetSensitivity ]]
        v37.XSensitivity = v326 or v37.XSensitivity;
        v37.YSensitivity = v327 or v37.YSensitivity;
    end;
    v37.GetCameraHeading = function(_) --[[ Line: 1145 ]] --[[ Name: GetCameraHeading ]]
        local l_lookVector_0 = l_CurrentCamera_0.CFrame.lookVector;
        return l_atan2_0(-l_lookVector_0.x, -l_lookVector_0.z), (l_asin_0((l_CurrentCamera_0.CoordinateFrame.p - l_CurrentCamera_0.Focus.p).Unit.Y));
    end;
    v37.SwapMode = function(_) --[[ Line: 1150 ]] --[[ Name: SwapMode ]]
        if v37.Mode == "Normal" then
            return;
        elseif v37.Mode == "FirstPerson" then
            v37.Mode = "Shoulder";
            return;
        elseif v37.Mode == "Shoulder" then
            v37.Mode = "FirstPerson";
            return;
        else
            v37.Mode = "Shoulder";
            return;
        end;
    end;
    local l_v322_0 = v322 --[[ copy: 142 -> 187 ]];
    v37.Lean = function(v332, v333) --[[ Line: 1161 ]] --[[ Name: Lean ]]
        l_v322_0.t = v333;
        l_v239_1 = v333 < 0.1;
        v332.LeanValue = v333;
    end;
    local l_v237_3 = v237 --[[ copy: 136 -> 188 ]];
    v37.SetShake = function(_, v336, v337, v338, v339, v340, v341) --[[ Line: 1168 ]] --[[ Name: SetShake ]]
        l_v237_3:ShakeOnce(v336, v337, v338, v339, v340, v341);
    end;
    l_PlayerGui_0:WaitForChild("SG_Package"):WaitForChild("MainGui"):WaitForChild("Events"):WaitForChild("CameraShake").Event:Connect(function(...) --[[ Line: 1172 ]]
        v37:SetShake(...);
    end);
    local v342 = nil;
    local l_v236_1 = v236 --[[ copy: 135 -> 189 ]];
    game:GetService("ReplicatedStorage"):WaitForChild("RS_Package"):WaitForChild("Remotes"):WaitForChild("TazeChanged").OnClientEvent:Connect(function(v344) --[[ Line: 1178 ]]
        if v344 and v342 == nil then
            v342 = l_v237_3:ShakeSustain(l_v236_1.Presets.Earthquake);
            return;
        else
            if not v344 and v342 then
                v342:StartFadeOut(1);
                v342 = nil;
            end;
            return;
        end;
    end);
    local v345 = false;
	local function OnDynamicThumbstickDisabled() --[[ Line: 1208 ]] --[[ Name: OnDynamicThumbstickEnabled ]]
        if l_UserInputService_0.TouchEnabled then
            v345 = true;
        end;
    end;
	local function IdkWhattonamethis() --[[ Line: 1214 ]] --[[ Name: OnDynamicThumbstickDisabled ]]
        v345 = false;
    end;
    local function _() --[[ Line: 1218 ]] --[[ Name: OnGameSettingsTouchMovementModeChanged ]]
        if l_LocalPlayer_0.DevTouchMovementMode == Enum.DevTouchMovementMode.UserChoice then
            if l_GameSettings_0.TouchMovementMode.Name == "DynamicThumbstick" then
                if l_UserInputService_0.TouchEnabled then
                    v345 = true;
                    return;
                end;
            else
                v345 = false;
            end;
        end;
    end;
	local function OnDevTouchMovementModeChanged() --[[ Line: 1228 ]] --[[ Name: OnDevTouchMovementModeChanged ]]
        if l_LocalPlayer_0.DevTouchMovementMode.Name == "DynamicThumbstick" then
            if l_UserInputService_0.TouchEnabled then
                v345 = true;
                return;
            end;
        elseif l_LocalPlayer_0.DevTouchMovementMode == Enum.DevTouchMovementMode.UserChoice then
            if l_GameSettings_0.TouchMovementMode.Name == "DynamicThumbstick" then
                if l_UserInputService_0.TouchEnabled then
                    v345 = true;
                    return;
                end;
            else
                v345 = false;
            end;
        end;
    end;
    l_GameSettings_0.Changed:Connect(function(v350) --[[ Line: 1237 ]]
        if v350 == "TouchMovementMode" and l_LocalPlayer_0.DevTouchMovementMode == Enum.DevTouchMovementMode.UserChoice then
            if l_GameSettings_0.TouchMovementMode.Name == "DynamicThumbstick" then
                if l_UserInputService_0.TouchEnabled then
                    v345 = true;
                    return;
                end;
            else
                v345 = false;
            end;
        end;
    end);
    local v351 = nil;
    local v352 = nil;
    local v353 = nil;
	local function getDynamicThumbstickFrame() --[[ Line: 1247 ]] --[[ Name: getDynamicThumbstickFrame ]]
        if v351 and v351:IsDescendantOf(game) then
            return v351;
        else
            local l_TouchGui_0 = l_PlayerGui_0:FindFirstChild("TouchGui");
            if not l_TouchGui_0 then
                return nil;
            else
                local l_TouchControlFrame_0 = l_TouchGui_0:FindFirstChild("TouchControlFrame");
                if not l_TouchControlFrame_0 then
                    return nil;
                else
                    v351 = l_TouchControlFrame_0:FindFirstChild("DynamicThumbstickFrame");
                    return v351;
                end;
            end;
        end;
    end;
    local v357 = Vector2.new(12.566370614359172, 5.969026041820607);
    local v358 = Vector2.new(7.0685834705770345, 6.283185307179586);
    ViewSizeX = function() --[[ Line: 1266 ]] --[[ Name: ViewSizeX ]]
        local v359 = 1024;
        local l_CurrentCamera_1 = workspace.CurrentCamera;
        if l_CurrentCamera_1 then
            v359 = l_CurrentCamera_1.ViewportSize.X;
        end;
        return v359;
    end;
    ViewSizeY = function() --[[ Line: 1275 ]] --[[ Name: ViewSizeY ]]
        local v361 = 768;
        local l_CurrentCamera_2 = workspace.CurrentCamera;
        if l_CurrentCamera_2 then
            v361 = l_CurrentCamera_2.ViewportSize.Y;
        end;
        return v361;
    end;
	local function mouseTranslationToAngle(v363) --[[ Line: 1284 ]] --[[ Name: mouseTranslationToAngle ]]
        local v364 = v363.x / 1920;
        local v365 = v363.y / 1200;
        return Vector2.new(v364, v365);
    end;
    screenTranslationToAngle = function(v367) --[[ Line: 1289 ]] --[[ Name: screenTranslationToAngle ]]
        local v368 = ViewSizeX();
        local v369 = ViewSizeY();
        local v370 = v367.x / v368;
        local v371 = v367.y / v369;
        return Vector2.new(v370, v371);
    end;
    local l_CameraScript_0 = l_LocalPlayer_0:WaitForChild("PlayerScripts"):WaitForChild("CameraScript");
    local v373 = false;
    local l_GameStarted_0 = game:GetService("ReplicatedStorage"):WaitForChild("RS_Package"):WaitForChild("ReplicatedGameStatus"):WaitForChild("GameStarted");
    local v375 = {};
    local l_l_GameStarted_0_0 = l_GameStarted_0 --[[ copy: 159 -> 190 ]];
    local l_v375_0 = v375 --[[ copy: 160 -> 191 ]];
    l_UserInputService_0.InputBegan:Connect(function(v378, v379) --[[ Line: 1305 ]]
        if v378.UserInputType == Enum.UserInputType.Touch then
            v33 = true;
        end;
        l_MobileUI_0.Visible = l_l_GameStarted_0_0.Value and v33;
        if v33 then
            local v380;
            if v351 and v351:IsDescendantOf(game) then
                v380 = v351;
            else
                local l_TouchGui_1 = l_PlayerGui_0:FindFirstChild("TouchGui");
                if not l_TouchGui_1 then
                    v380 = nil;
                else
                    local l_TouchControlFrame_1 = l_TouchGui_1:FindFirstChild("TouchControlFrame");
                    if not l_TouchControlFrame_1 then
                        v380 = nil;
                    else
                        v351 = l_TouchControlFrame_1:FindFirstChild("DynamicThumbstickFrame");
                        v380 = v351;
                    end;
                end;
            end;
            v351 = v380;
            if v351 and v351:IsDescendantOf(game) then
                v380 = v351;
            else
                local l_TouchGui_2 = l_PlayerGui_0:FindFirstChild("TouchGui");
                if not l_TouchGui_2 then
                    v380 = nil;
                else
                    local l_TouchControlFrame_2 = l_TouchGui_2:FindFirstChild("TouchControlFrame");
                    if not l_TouchControlFrame_2 then
                        v380 = nil;
                    else
                        v351 = l_TouchControlFrame_2:FindFirstChild("DynamicThumbstickFrame");
                        v380 = v351;
                    end;
                end;
            end;
            local v385 = false;
            v373 = v385;
            if not v385 then
                l_v375_0[v378] = v379;
            end;
        end;
    end);
    local l_Police_0 = workspace:FindFirstChild("Police");
    local v387 = nil;
    local v388 = RaycastParams.new();
    v388.FilterDescendantsInstances = {
        workspace:FindFirstChild("Map")
    };
    local l_v388_0 = v388 --[[ copy: 163 -> 192 ]];
    local _ = function() --[[ Line: 1352 ]] --[[ Name: getAssistFocus ]]
        local v390 = nil;
        local v391 = 999;
        local v392 = 999;
        for _, v394 in l_Police_0:GetChildren() do
            local v395 = v394:FindFirstChild("Head") or v394.PrimaryPart;
            local l_Magnitude_0 = (v395.Position - l_CurrentCamera_0.CFrame.Position).Magnitude;
            local v397 = l_acos_0((l_clamp_0(l_CurrentCamera_0.CFrame.LookVector:Dot((v395.Position - l_CurrentCamera_0.CFrame.Position).Unit), -1, 1)));
            if v397 <= 0.3490658503988659 and v397 < v391 and l_Magnitude_0 < v392 then
                l_v388_0.FilterDescendantsInstances = {
                    workspace:FindFirstChild("Map"), 
                    l_Police_0
                };
                l_v388_0.FilterType = Enum.RaycastFilterType.Include;
                local v398 = workspace:Raycast(l_CurrentCamera_0.CFrame.Position, (v395.Position - l_CurrentCamera_0.CFrame.Position).unit * (l_Magnitude_0 + 2), l_v388_0) or {};
                if v398 and v398.Instance:IsDescendantOf(v394) then
                    v390 = v395;
                    v391 = v397;
                    v392 = l_Magnitude_0;
                end;
            end;
        end;
        return v390;
    end;
    local l_l_CameraScript_0_0 = l_CameraScript_0 --[[ copy: 157 -> 193 ]];
    local l_v358_0 = v358 --[[ copy: 155 -> 194 ]];
    local l_v357_0 = v357 --[[ copy: 154 -> 195 ]];
    l_UserInputService_0.InputChanged:Connect(function(v403, v404) --[[ Line: 1394 ]]
        local v405 = false;
        if v403.UserInputType == Enum.UserInputType.Touch then
            v33 = true;
        else
            v33 = false;
        end;
        if v404 and not l_l_UserInputService_0_GamepadConnected_0 then
            return;
        else
            if l_v375_0[v403] == nil and v33 then
                l_v375_0[v403] = v404;
            end;
            if not l_v241_2 then
                return;
            else
                if v33 then
                    local v406;
                    if v351 and v351:IsDescendantOf(game) then
                        v406 = v351;
                    else
                        local l_TouchGui_3 = l_PlayerGui_0:FindFirstChild("TouchGui");
                        if not l_TouchGui_3 then
                            v406 = nil;
                        else
                            local l_TouchControlFrame_3 = l_TouchGui_3:FindFirstChild("TouchControlFrame");
                            if not l_TouchControlFrame_3 then
                                v406 = nil;
                            else
                                v351 = l_TouchControlFrame_3:FindFirstChild("DynamicThumbstickFrame");
                                v406 = v351;
                            end;
                        end;
                    end;
                    v351 = v406;
                    if v351 and v351:IsDescendantOf(game) then
                        v406 = v351;
                    else
                        local l_TouchGui_4 = l_PlayerGui_0:FindFirstChild("TouchGui");
                        if not l_TouchGui_4 then
                            v406 = nil;
                        else
                            local l_TouchControlFrame_4 = l_TouchGui_4:FindFirstChild("TouchControlFrame");
                            if not l_TouchControlFrame_4 then
                                v406 = nil;
                            else
                                v351 = l_TouchControlFrame_4:FindFirstChild("DynamicThumbstickFrame");
                                v406 = v351;
                            end;
                        end;
                    end;
                    local v411 = false;
                    local l_ControlScript_0 = l_l_CameraScript_0_0.Parent:FindFirstChild("ControlScript");
                    if l_ControlScript_0 then
                        local l_MasterControl_0 = l_ControlScript_0:FindFirstChild("MasterControl");
                        if l_MasterControl_0 then
                            local l_DynamicThumbstick_0 = l_MasterControl_0:FindFirstChild("DynamicThumbstick");
                            if l_DynamicThumbstick_0 then
                                v411 = require(l_DynamicThumbstick_0):GetInputObject() == v403;
                            end;
                        end;
                    end;
                    v373 = v411;
                end;
                if v373 then
                    return;
                else
                    local v415 = v33 and l_v358_0 or l_v357_0;
                    if v403.UserInputType == Enum.UserInputType.MouseMovement or v403.UserInputType == Enum.UserInputType.Touch and l_v375_0[v403] == false then
                        local l_Delta_0 = v403.Delta;
                        local v417, v418, v419;
                        if v33 then
                            v419 = screenTranslationToAngle(l_Delta_0 * 2);
                            v405 = v419;
                        end;
                        if not v405 then
                            v417 = l_Delta_0.x / 1920;
                            v418 = l_Delta_0.y / 1200;
                            v419 = Vector2.new(v417, v418);
                        end;
                        v405 = false;
                        local v420 = v419 * v415;
                        v419 = l_new_1(v37.XSensitivity, v37.YSensitivity, 1);
                        v417 = l_new_1(-v420.X, -v420.Y * v37.YInvertValue, v403.Delta.Z) * v419;
                        v418 = v37;
                        v418.SwayDelta = v418.SwayDelta + v417;
                        v418 = v37;
                        v418.LookDelta = v418.LookDelta + v417;
                    end;
                    if v403.UserInputType == Enum.UserInputType.Gamepad1 and v403.KeyCode == Enum.KeyCode.Thumbstick2 then
                        local l_Position_1 = v403.Position;
                        if l_Position_1.magnitude > 0 then
                            local _ = v39.Current and v39.Current.aiming == true or false;
                            v37.SwayDelta = v403.Delta * 0.05;
                            v37.ThumbstickDelta = l_new_1(-l_Position_1.x, l_Position_1.y, l_Position_1.z);
                            return;
                        else
                            v387 = nil;
                            v37.ThumbstickDelta = v46;
                        end;
                    end;
                    return;
                end;
            end;
        end;
    end);
    l_UserInputService_0.InputEnded:Connect(function(v423, _) --[[ Line: 1500 ]]
        if v423.UserInputType == Enum.UserInputType.Touch then
            v352 = nil;
            v353 = nil;
        end;
    end);
    local l_Value_9 = l_Options_1:WaitForChild("Gameplay"):WaitForChild("ToggleLean").Value;
    l_UserInputService_0.InputBegan:Connect(function(v426, v427) --[[ Line: 1509 ]]
        if v427 then
            return;
        else
            if MatchKeys(v426, v5) then
                if not l_Value_9 and CheckIfCanLean() then
                    v26 = -1;
                    v37:Lean(-0.65);
                elseif l_Value_9 then
                    if v26 == -1 then
                        v26 = 0;
                        v37:Lean(0);
                    else
                        v26 = -1;
                        v37:Lean(-0.65);
                    end;
                end;
            end;
            if MatchKeys(v426, v6) then
                if not l_Value_9 and CheckIfCanLean() then
                    v26 = 1;
                    v37:Lean(0.65);
                    return;
                elseif l_Value_9 then
                    if v26 == 1 then
                        v26 = 0;
                        v37:Lean(0);
                        return;
                    else
                        v26 = 1;
                        v37:Lean(0.65);
                    end;
                end;
            end;
            return;
        end;
    end);
    if not l_Value_9 then
        l_UserInputService_0.InputEnded:Connect(function(v428) --[[ Line: 1542 ]]
            if MatchKeys(v428, v5) then
                v37:Lean(0);
            end;
            if MatchKeys(v428, v6) then
                v37:Lean(0);
            end;
        end);
    end;
    l_GameSettings_0.Changed:Connect(function(v429) --[[ Line: 1554 ]] --[[ Name: onGameSettingChanged ]]
        local l_status_0, l_result_0 = pcall(function() --[[ Line: 1557 ]]
            return l_GameSettings_0[v429];
        end);
        v37.YInvertValue = UserSettings().GameSettings:GetCameraYInvertValue();
        if l_status_0 then
            print("Your " .. v429 .. " has changed to: " .. tostring(l_result_0));
            if v429 == "MouseSensitivity" then
                v37.DefaultXSensitivity = 1;
                v37.DefaultYSensitivity = 1;
                v37:ResetSensitivity();
            end;
        end;
    end);
    local l_GameStarted_1 = game:GetService("ReplicatedStorage"):WaitForChild("RS_Package"):WaitForChild("ReplicatedGameStatus"):WaitForChild("GameStarted");
    HStep = function(_) --[[ Line: 1582 ]] --[[ Name: HStep ]]
        if v23 or l_GameStarted_1.Value == false then
            return;
        else
            if v37.Mode == "Normal" then
                l_Humanoid_0.AutoRotate = true;
                l_CurrentCamera_0.CameraType = Enum.CameraType.Fixed;
                l_UserInputService_0.MouseBehavior = Enum.MouseBehavior.Default;
                if l_UserInputService_0.MouseIconEnabled ~= true then
                    l_UserInputService_0.MouseIconEnabled = true;
                    print("Enabled Mouse");
                    return;
                end;
            elseif v37.Mode == "Shoulder" then
                l_Humanoid_0.AutoRotate = true;
                if v121.Image ~= "http://www.roblox.com/asset/?id=" then
                    v121.Image = "http://www.roblox.com/asset/?id=";
                    v121.Size = UDim2.new(0, 20, 0, 20);
                    v121.Position = UDim2.new(0.5, -v121.AbsoluteSize.X / 2, 0.5, -v121.AbsoluteSize.Y / 2 - 15);
                end;
                l_CurrentCamera_0.CameraType = Enum.CameraType.Scriptable;
                l_UserInputService_0.MouseBehavior = v33 and Enum.MouseBehavior.LockCenter;
                return;
            elseif v37.Mode == "FirstPerson" then
                l_Humanoid_0.AutoRotate = false;
                if v121.Image ~= "rbxassetid://1673060051" then
                    v121.Image = "rbxassetid://1673060051";
                    v121.Size = UDim2.new(0, 40, 0, 40);
                    v121.Position = UDim2.new(0.5, -v121.AbsoluteSize.X / 2, 0.5, -v121.AbsoluteSize.Y / 2 - 15);
                end;
                l_CurrentCamera_0.CameraType = Enum.CameraType.Scriptable;
                l_UserInputService_0.MouseBehavior = v33 and Enum.MouseBehavior.Default or Enum.MouseBehavior.LockCenter;
                return;
            elseif v37.Mode == "Custody" then
                l_CurrentCamera_0.CameraType = Enum.CameraType.Custom;
                l_LocalPlayer_0.CameraMode = Enum.CameraMode.Classic;
                l_LocalPlayer_0.CameraMinZoomDistance = 6;
                l_LocalPlayer_0.CameraMaxZoomDistance = 6;
            end;
            return;
        end;
    end;
    v37.GetCameraCollision = function(_, v435) --[[ Line: 1620 ]] --[[ Name: GetCameraCollision ]]
        local v436 = l_HumanoidRootPart_0.CFrame.p + v37.Offset;
        local v437 = v435.p - v436;
        local v438 = Ray.new(v436, v437);
        local l_workspace_PartOnRayWithIgnoreList_2, v440 = workspace:FindPartOnRayWithIgnoreList(v438, {
            l_Character_0
        });
        if l_workspace_PartOnRayWithIgnoreList_2 == nil or l_workspace_PartOnRayWithIgnoreList_2.CanCollide == false or l_workspace_PartOnRayWithIgnoreList_2.Name ~= "Terrain" and l_workspace_PartOnRayWithIgnoreList_2.Locked == true then
            return v435;
        else
            return v435 - v435.p + v440 - v437.Unit * 0.2;
        end;
    end;
    local l_l_BaseSpeed_0_0 = l_BaseSpeed_0 --[[ copy: 140 -> 196 ]];
    v37.ResetFOV = function(_) --[[ Line: 1633 ]] --[[ Name: ResetFOV ]]
        l_l_BaseSpeed_0_0.t = v37.DefaultFOV;
    end;
    v37.SetFOV = function(_, v444) --[[ Line: 1637 ]] --[[ Name: SetFOV ]]
        l_l_BaseSpeed_0_0.t = v444;
    end;
    v37.UpdateSensitivity = function(_, v446) --[[ Line: 1641 ]] --[[ Name: UpdateSensitivity ]]
        local v447 = math.clamp((v446 or 90) / v37.DefaultFOV or 90, 0.1, 1);
        local v448 = v37.DefaultXSensitivity * v447;
        local v449 = v37.DefaultYSensitivity * v447;
        v37:SetSensitivity(v448, v449);
    end;
    v37.LookDelta2 = v46;
    v37.Distance2 = v37.Distance;
    v37.Offset2 = v37.Offset;
    v37.GetShoulderCFrame = function(_) --[[ Line: 1661 ]] --[[ Name: GetShoulderCFrame ]]
        return l_Angles_0(0, v37.LookDelta2.X, 0) * l_new_0(v37.Offset2) * l_Angles_0(v37.LookDelta2.y, 0, 0) * l_new_0(0, 0, v37.Distance2);
    end;
    v37.GetFirstPersonCFrame = function(_) --[[ Line: 1665 ]] --[[ Name: GetFirstPersonCFrame ]]
        return l_Angles_0(0, v37.LookDelta2.X, 0) * l_Angles_0(v37.LookDelta2.y, 0, 0) + Vector3.new(0, 2, 0, 0);
    end;
    v37.ThumbstickDelta2 = v37.ThumbstickDelta;
    local v452 = l_new_0();
    local v453 = l_new_0();
    local v454 = nil;
    local v455 = nil;
    local l_rad_1 = math.rad;
	local function clampOrientation(v457) --[[ Line: 1678 ]] --[[ Name: clampOrientation ]]
        local v458 = math.deg(v457);
        if v458 >= 180 then
            v458 = -180 - (180 - v458);
        elseif v458 <= 180 then
            v458 = 180 + (v458 + 180);
        end;
        return (l_rad_1(v458));
    end;
    local l_v321_0 = v321 --[[ copy: 141 -> 197 ]];
    local l_v322_1 = v322 --[[ copy: 142 -> 198 ]];
    local l_v323_0 = v323 --[[ copy: 143 -> 199 ]];
    Step = function(v463) --[[ Line: 1695 ]] --[[ Name: Step ]]
        if v23 or l_GameStarted_1.Value == false then
            return;
        else
            v37.LookDelta = l_new_1(v37.LookDelta.X, l_clamp_0(v37.LookDelta.y, v37.LookMin, v37.LookMax), v37.LookDelta.z);
            v37.ThumbstickDelta = l_new_1(v37.ThumbstickDelta.x, l_clamp_0(v37.ThumbstickDelta.y, v37.LookMin, v37.LookMax), v37.ThumbstickDelta.z);
            if not l_l_UserInputService_0_GamepadConnected_0 then
                v37.LookDelta2 = v37.LookDelta2:Lerp(v37.LookDelta, 1);
            else
                local v464 = 0.05;
                if v39.Current and v39.Current.aiming and (l_l_UserInputService_0_GamepadConnected_0 or v33) then
                    v464 = 0.02;
                end;
                local v465 = v37.ThumbstickDelta * l_new_1(v37.XSensitivity * v464, v37.YSensitivity * v464, 1);
                v465 = v37.LookDelta2 + v465;
                v465 = l_new_1(v465.X, l_clamp_0(v465.Y, v37.LookMin, v37.LookMax), v465.Z);
                v37.LookDelta2 = v37.LookDelta2:Lerp(v465, 1);
            end;
            l_v321_0.t = v37.Distance;
            v37.Distance2 = l_v321_0.p;
            v37.Offset2 = lerp(v37.Offset2, v37.Offset, v463 * 20);
            l_CurrentCamera_0.FieldOfView = l_l_BaseSpeed_0_0.p;
            if v37.Mode == "Normal" then
                return;
            elseif v37.Mode == "Shoulder" then
                v36:SetLocalTransparency(0);
                local v466 = l_new_0(l_HumanoidRootPart_0.CFrame.p) * v37:GetShoulderCFrame();
                l_CurrentCamera_0.CFrame = v37:GetCameraCollision(v466);
                return;
            elseif v37.Mode == "FirstPerson" then
                v36:SetLocalTransparency(1);
                local v467 = false;
                if v39.Equipped and v39.Current then
                    v467 = v39.Current.aiming;
                end;
                local v468 = l_Angles_0(0, 0, l_rad_1(l_v322_1.p) * 40) * l_new_0(-l_v322_1.p, l_abs_0(-l_v322_1.p), 0);
                local v469 = l_new_0(0, v36.Crouching and -1.5, 0);
                if l_Character_0:FindFirstChild("Health") and l_Character_0:FindFirstChild("Health").Value <= 0 then
                    v469 = l_new_0(0, -2.5, 0);
                end;
                v452 = v452:lerp(v469, 0.4);
                local v470 = nil;
                local v471 = l_new_0();
                if v86 then
                    local l_Torso_0 = v86:FindFirstChild("Torso");
                    l_Torso_0 = l_Torso_0 and l_Torso_0:FindFirstChild("Neck");
                    local l_Focus_0 = v86:FindFirstChild("Focus");
                    if l_Focus_0 and l_Focus_0.Value then
                        v470 = l_Focus_0.Value:GetPivot() * (l_Focus_0:GetAttribute("FocusOffset") or CFrame.new());
                        l_v241_2 = false;
                        if not v455 then
                            v455 = script.DEBUG:Clone();
                            v455.Parent = workspace.Camera;
                            v455.Anchored = true;
                        end;
                        v455.CFrame = v470;
                        if l_Focus_0:GetAttribute("LookAt") then
                            l_v323_0.t = 1;
                            l_v323_0.s = 10;
                        else
                            l_v323_0.t = 0;
                            l_v323_0.s = 6;
                            l_v241_2 = true;
                        end;
                    elseif v455 then
                        v455:Destroy();
                        v455 = nil;
                    end;
                    if l_Torso_0 then
                        v471 = v471 * l_Torso_0.Transform:Inverse();
                    end;
                    v453 = v453:Lerp(v471, 1);
                else
                    v470 = if v387 then v387:GetPivot() else nil;
                    if v455 then
                        v455:Destroy();
                        v455 = nil;
                    end;
                    l_v241_2 = true;
                    l_v323_0.t = 0;
                    l_v323_0.s = 6;
                    v453 = v453:Lerp(l_new_0(), 0.3);
                end;
                local v474 = l_new_0(l_HumanoidRootPart_0.CFrame.p + v452.p) * v37:GetFirstPersonCFrame();
                local v475 = l_new_1(v474:ToOrientation());
                v37.LookDelta = l_new_1(v475.Y, v475.X, 0);
                local v476 = v474 * v453 * v468;
                if v470 then
                    local v477 = v476:Lerp(CFrame.lookAt(v476.Position, v470.Position), 1);
                    local v478 = Vector3.new(v477:ToOrientation());
                    v37.LookDelta = v37.LookDelta:Lerp(l_new_1(v478.Y, v478.X, 0), v387 and 0.3 or l_v323_0.p);
                    v37.ThumbstickDelta = v37.ThumbstickDelta:Lerp(l_new_1(v478.Y, v478.X, 0), v387 and 0.3 or l_v323_0.p);
                    l_CurrentCamera_0:SetAttribute("_GOAL", v477);
                    v454 = l_CurrentCamera_0.CFrame;
                else
                    l_CurrentCamera_0:SetAttribute("_GOAL", nil);
                    v454 = nil;
                end;
                l_CurrentCamera_0.CFrame = v476 * l_Angles_0(l_rad_1(v221.p.Y), l_rad_1(v221.p.X), 0) * l_v235_1;
                local v479 = Vector3.new(math.deg(v37.LookDelta.Y), math.deg(v37.LookDelta.X), (math.deg(v37.LookDelta.Z)));
                if not v470 then

                end;
                l_CurrentCamera_0:SetAttribute("LookDelta", v479);
                l_CurrentCamera_0:SetAttribute("Orientation", l_CurrentCamera_0.CFrame);
                return;
            else
                if v37.Mode == "Custody" then
                    l_CurrentCamera_0.CameraType = Enum.CameraType.Custom;
                end;
                return;
            end;
        end;
    end;
    table.insert(v131, HStep);
    table.insert(v132, Step);
    game:GetService("ReplicatedStorage"):WaitForChild("RS_Package"):WaitForChild("ReplicatedGameStatus"):WaitForChild("GameStarted").Changed:connect(function(v480) --[[ Line: 1882 ]]
        if v480 then
            v37.Mode = "FirstPerson";
            local l_SpawnLocation_0 = workspace:FindFirstChild("SpawnLocation");
            if l_SpawnLocation_0 then
                local l_Y_0 = l_SpawnLocation_0.Orientation.Y;
                v37.LookDelta = v46 + Vector3.new(math.rad(l_Y_0), 0, 0);
                return;
            end;
        else
            v37.Mode = "Normal";
        end;
    end);
    if game:GetService("ReplicatedStorage"):WaitForChild("RS_Package"):WaitForChild("ReplicatedGameStatus"):WaitForChild("GameStarted").Value then
        v37.Mode = "FirstPerson";
    else
        v37.Mode = "Normal";
    end;
    l_Character_0:WaitForChild("Crouching").Changed:connect(function(v483) --[[ Line: 1899 ]]
        local l_Value_10 = l_Character_0:WaitForChild("BagSpeed").Value;
        v36.Crouching = v483;
        v36:SetSprint(false);
        v36:ResetWalkSpeed();
        if v483 then
            v36:SetWalkSpeed((v36.DefaultWalkSpeed - v36.CrouchSpeed) * l_Value_10);
        end;
        l_Character_0:SetAttribute("Stance", v483 and "Crouch" or "Stand");
    end);
    repeat
        task.wait();
    until l_Character_0:FindFirstChild("BagSpeed");
    l_Character_0:WaitForChild("BagSpeed").Changed:connect(function(v485) --[[ Line: 1912 ]]
        v36:SetWalkSpeed(((v36.Sprinting and v36.RunSpeed or v36.DefaultWalkSpeed) - (v36.Crouching and v36.CrouchSpeed or 0)) * v485);
    end);
    local l_SecCamScreen_0 = l_PlayerGui_0:WaitForChild("SG_Package"):WaitForChild("MainGui"):WaitForChild("SecCamScreen");
    local l_Custody_0 = l_PlayerGui_0:WaitForChild("SG_Package"):WaitForChild("MainGui"):WaitForChild("Custody");
    local l_frame_heistResults_0 = l_PlayerGui_0:WaitForChild("SG_Package"):WaitForChild("MainGui"):WaitForChild("frame_heistResults");
    l_SecCamScreen_0:GetPropertyChangedSignal("Visible"):connect(function() --[[ Line: 1918 ]]
        if l_SecCamScreen_0.Visible then
            v37.Mode = "Normal";
            return;
        else
            if not l_Custody_0.Visible then
                v37.Mode = "FirstPerson";
            end;
            return;
        end;
    end);
    l_Custody_0:GetPropertyChangedSignal("Visible"):connect(function() --[[ Line: 1925 ]]
        if l_frame_heistResults_0.Visible then
            l_Custody_0.Visible = false;
        end;
        if l_Custody_0.Visible then
            v37.Mode = "Custody";
            return;
        else
            v37.Mode = "FirstPerson";
            return;
        end;
    end);
    l_frame_heistResults_0:GetPropertyChangedSignal("Visible"):connect(function() --[[ Line: 1935 ]]
        if l_frame_heistResults_0.Visible then
            v37.Mode = "Normal";
            return;
        else
            if not l_frame_heistResults_0.Visible then
                v37.Mode = "FirstPerson";
            end;
            return;
        end;
    end);
end;
v235 = workspace:FindFirstChild("InvisPart__");
if v235 == nil then
    v235 = Instance.new("Part", workspace);
    v235.Name = "InvisPart__";
    v235.Size = Vector3.new(0.05000000074505806, 0.05000000074505806, 0.05000000074505806, 0);
    v235.Anchored = true;
    v235.CanCollide = false;
    v235.Transparency = 1;
end;
v236 = function(v489, v490) --[[ Line: 1954 ]] --[[ Name: roundTo ]]
    return math.floor(v489 / v490 + 0.5) * v490;
end;
v237 = 0;
v238 = function(v491, v492, v493, v494, v495, _) --[[ Line: 1960 ]] --[[ Name: showDamage ]]
    if l_Value_1 then
        v493 = v493 or Color3.new(1, 1, 1);
        v495 = v495 or Color3.new();
        local _, _ = pcall(function() --[[ Line: 1964 ]]
            local v497 = Instance.new("Attachment", v235);
            local v498 = 2 * (v237 % 3 - 1);
            v497.WorldPosition = v491.PrimaryPart.Position + Vector3.new(v498, 2 + 2.5 * math.min(math.floor(v237 / 3), 3), v498);
            v237 = v237 + 1;
            local l_BillboardGui_0 = Instance.new("BillboardGui");
            l_BillboardGui_0.Name = "Damage__";
            l_BillboardGui_0.AlwaysOnTop = true;
            local l_TextLabel_0 = Instance.new("TextLabel");
            if v492:sub(#v492) == "0" then
                v492 = v492:sub(0, #v492 - 2);
            end;
            l_TextLabel_0.Text = v494 and "Armor" or v492;
            l_TextLabel_0.TextSize = 34;
            l_TextLabel_0.TextStrokeTransparency = 0.8;
            l_TextLabel_0.TextTransparency = 0.15;
            l_TextLabel_0.BackgroundTransparency = 1;
            l_TextLabel_0.TextColor3 = v493;
            if v494 then
                l_TextLabel_0.TextColor3 = Color3.new(v493.r / 2, v493.g / 2, v493.b / 2);
            end;
            l_TextLabel_0.TextStrokeColor3 = v495;
            l_TextLabel_0.Size = UDim2.new(1, 0, 1, 0);
            l_TextLabel_0.FontFace = Font.fromId(12187370747);
            l_TextLabel_0.Position = UDim2.new(0, 0, 0, 0);
            l_BillboardGui_0.Adornee = v497;
            l_BillboardGui_0.ClipsDescendants = false;
            l_BillboardGui_0.LightInfluence = 0;
            l_TextLabel_0.Parent = l_BillboardGui_0;
            l_BillboardGui_0.Size = UDim2.new(0, 200, 0, 50);
            l_BillboardGui_0.Parent = v497;
            local v501 = l_TweenService_0:Create(l_BillboardGui_0, TweenInfo.new(2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
                StudsOffset = Vector3.new(0, 2, 0, 0)
            });
            if v494 then
                local v502 = l_TweenService_0:Create(l_TextLabel_0, TweenInfo.new(1, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
                    TextTransparency = 1, 
                    TextStrokeTransparency = 1
                });
                local v503 = l_TweenService_0:Create(l_TextLabel_0, TweenInfo.new(0.1, Enum.EasingStyle.Circular, Enum.EasingDirection.InOut, 20, true), {
                    Rotation = 15
                });
                v502:Play();
                v503:Play();
            else
                l_TweenService_0:Create(l_TextLabel_0, TweenInfo.new(2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
                    TextTransparency = 1, 
                    TextStrokeTransparency = 1
                }):Play();
            end;
            v501:Play();
            v501.Completed:Connect(function() --[[ Line: 2006 ]]
                l_BillboardGui_0:Destroy();
                v497:Destroy();
                v237 = v237 - 1;
            end);
        end);
    end;
end;
v239 = {};
v241 = l_new_2("Part", l_CurrentCamera_0);
v241.Name = "BulletHandler";
v241.Anchored = true;
v241.CanCollide = false;
v241.Transparency = 1;
v241.Size = Vector3.new(0.10000000149011612, 0.10000000149011612, 0.10000000149011612, 0);
l_BaseSpeed_0 = l_Assets_0.Bullets.Trails;
local l_Bullet_0 = l_Remotes_0.Bullet;
local l_Debris_0 = l_Assets_0.Bullets.Debris;
local l_Parts_0 = l_Assets_0.Bullets.Parts;
local l_HitObject_0 = l_Remotes_0.HitObject;
local v510 = {
    1388469605, 
    1388469948, 
    1388470144, 
    1388470530, 
    1388470789
};
FindHumanoid = function(v511) --[[ Line: 2046 ]] --[[ Name: FindHumanoid ]]
    local l_Parent_0 = v511.Parent;
    if l_Parent_0 then
        local l_Humanoid_1 = l_Parent_0:FindFirstChildOfClass("Humanoid");
        if l_Humanoid_1 then
            return l_Humanoid_1;
        else
            l_Parent_0 = l_Parent_0.Parent;
        end;
    end;
    if l_Parent_0 then
        local l_Humanoid_2 = l_Parent_0:FindFirstChildOfClass("Humanoid");
        if l_Humanoid_2 then
            return l_Humanoid_2;
        else
            l_Parent_0 = l_Parent_0.Parent;
        end;
    end;
    if l_Parent_0 then
        local l_Humanoid_3 = l_Parent_0:FindFirstChildOfClass("Humanoid");
        if l_Humanoid_3 then
            return l_Humanoid_3;
        else
            l_Parent_0 = l_Parent_0.Parent;
        end;
    end;
end;
CollisionCFrame = function(v516, v517, v518) --[[ Line: 2060 ]] --[[ Name: CollisionCFrame ]]
    local v519 = v517 + Vector3.new(0, 0.10000000149011612, 0, 0);
    local v520 = Ray.new(v519, (Vector3.new(0, -1, 0, 0)));
    local _, _, v523 = workspace:FindPartOnRayWithIgnoreList(v520, v518);
    local v524 = Vector3.new(0, 1, 0, 0):Cross(v523);
    local v525 = l_asin_0(v524.magnitude);
    v516.CFrame = l_new_0(v517 + v523 * v516.Size.y / 2) * CFrame.fromAxisAngle(v524.magnitude == 0 and l_new_1(1) or v524.unit, v525);
end;
local v526 = Instance.new("Part", workspace.CurrentCamera);
v526.Name = "bullets";
v526.Anchored = true;
v526.Transparency = 1;
v526.Size = Vector3.new(0, 0, 0, 0);
local v527 = RaycastParams.new();
v527.FilterType = Enum.RaycastFilterType.Include;
local l_Effects_0 = game.ReplicatedStorage.RS_Package.Assets.Effects;
local v529 = {};
local l_v529_0 = v529 --[[ copy: 149 -> 200 ]];
game:GetService("CollectionService"):GetInstanceAddedSignal("BloodDecal"):Connect(function(_) --[[ Line: 2086 ]]
    if (l_Value_4 >= 2 and 20 or 10) < #l_v529_0 then
        local v532 = l_v529_0[1];
        if v532 then
            table.remove(l_v529_0, 1);
            v532:Destroy();
        end;
    end;
end);
local l_l_Effects_0_0 = l_Effects_0 --[[ copy: 148 -> 201 ]];
local function v566(v534, v535, v536, v537, v538, v539, v540, v541, v542, v543, _, v545, _, v547) --[[ Line: 2100 ]] --[[ Name: hiteffect ]]
    if v534 then
        if l_Character_0 then
            local _ = v534:IsDescendantOf(l_Character_0);
        end;
        local v549 = v540:match("Explosive");
        local v550 = true;
        if v534.Name ~= "Glass" then
            v550 = v534:IsDescendantOf(workspace.Glass);
        end;
        v540 = if not v550 and v539 then v541 and "Concrete" or v540:match("Flesh") and v540 or "Flesh" else v550 and "Glass" or v534.Material.Name or v540;
        v540 = v534:GetAttribute("HitType") or v540;
        v542 = (v542 and v540 ~= "Glass" and l_l_Effects_0_0.Decals.CustomHoles:FindFirstChild(v542) or l_l_Effects_0_0.Decals.Hole):Clone();
        v542.Parent = workspace.Tracers;
        v542.Name = "hole";
        local v551 = v540 == "Glass" and 1 or v540:match("Flesh") and 0.5 or 0.2;
        v542.Size = l_new_1(v551, v551, 0.01);
        v543 = "Front";
        v542.CFrame = l_new_0(v535, v535 + v536);
        local l_FirstChild_0 = l_l_Effects_0_0.Decals.HoleDecals:FindFirstChild(if v539 then _G.BloodEnabled > 0 and "Flesh" or "FleshFriendly" else v550 and "Glass" or "Hole");
        if not v540:match("Flesh") and not v541 then
            (l_FirstChild_0 and l_FirstChild_0:Clone()).Parent = v542;
        end;
        v542.Anchored = false;
        local l_WeldConstraint_0 = Instance.new("WeldConstraint");
        l_WeldConstraint_0.Parent = v542;
        l_WeldConstraint_0.Part0 = v534;
        l_WeldConstraint_0.Part1 = v542;
        l_WeldConstraint_0 = v542:FindFirstChild(v540) or v542.Generic;
        if l_Value_3 >= 1 and (not v540:match("Flesh") or _G.BloodEnabled > 0) then
            if l_WeldConstraint_0 then
                for _, v555 in pairs(l_WeldConstraint_0:GetChildren()) do
                    if v555:GetAttribute("ChangeColor") then
                        v555.Color = ColorSequence.new(v534.Color);
                    end;
                    v555:Emit(v555.Rate);
                end;
            end;
            if not v540:match("Flesh") and v540 ~= "Glass" then
                v542.Heat.Transparency = 0;
                l_TweenService_0:Create(v542.Heat, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0.5), {
                    Transparency = 1
                }):Play();
            end;
        end;
        local v556 = l_l_Effects_0_0.Decals.HoleSounds:FindFirstChild(v540) or l_l_Effects_0_0.Decals.HoleSounds.Concrete;
        local v557 = v556:GetChildren()[math.random(1, #v556:GetChildren())]:Clone();
        v557.Parent = v542;
        v557.Name = "Sound";
        v557.Pitch = math.random(90, 110) / 100;
        v557.RollOffMaxDistance = 1000;
        v557.RollOffMinDistance = 20;
        v557.Volume = v557.Volume * 0.5;
        v557:Play();
        game.Debris:AddItem(v542, 10);
        if v540 == "Flesh" and _G.BloodEnabled >= 2 then
            local v558 = "Medium";
            v558 = v538 >= 500 and "Heavy" or v538 >= 100 and "Medium" or "Small";
            local v559 = (v558:match("Heavy") and 120 or v558:match("Medium") and 110 or 100) + math.random(-20, 20);
            local v560 = RaycastParams.new();
            v560.FilterType = Enum.RaycastFilterType.Include;
            v560:AddToFilter(workspace.Map);
            local v561 = workspace:Raycast(v535, CFrame.new(v535, v535 + v537 + Vector3.new(0, -0.20000000298023224, 0, 0)).lookVector * 30, v560);
            if v561 and v561.Instance then
                local v562 = {
                    DecalGroup = v558, 
                    Scale = v559
                };
                local v563 = l_DecalService_0.createSurfaceGui(v561.Instance, v561.Position, v562);
                if v563 then
                    v563:AddTag("BloodDecal");
                    game.Debris:AddItem(v563, 30);
                end;
            end;
        end;
        if v549 and not v539 then
            v542:Destroy();
        end;
        if v545 == l_Character_0 and (v534:HasTag("Destructable") and v534 or v534.Parent:HasTag("Destructable") and v534.Parent) then
            local v564 = {
                Attacker = l_Character_0, 
                Hit = v534, 
                Source = v547, 
                Position = v535, 
                Normal = v536, 
                Direction = v537, 
                Damage = v538, 
                ClientEffects = {
                    v542, 
                    v557
                }
            };
            local _ = l_PropDamage_0.damageProp(v564);
        end;
    end;
end;
l_HitEvent_0.Event:Connect(v566);
l_CreateHitEffect_0.OnClientEvent:Connect(v566);
l_Damage_0.OnClientEvent:Connect(function(v567, v568) --[[ Line: 2310 ]]
    if v567 == "CriticalHit" then
        local v569 = Color3.new(1, 0.666667, 0);
        local l_Damage_1 = v568.Damage;
        local l_Hit_0 = v568.Hit;
        if l_Hit_0 then
            v238(l_Hit_0.Parent, "-" .. string.format("%.1f", l_Damage_1), v569, false);
            v153(v569, true, true);
            return;
        end;
    elseif v567 == "Bullseye" then
        v153(Color3.fromRGB(0, 170, 255), true, true);
        return;
    elseif v567 == "ExtraDamage" then
        local v572 = Color3.new(1, 0.65098, 0.25098);
        local l_Damage_2 = v568.Damage;
        local l_Hit_1 = v568.Hit;
        if l_Hit_1 then
            v238(l_Hit_1.Parent, "-" .. string.format("%.1f", l_Damage_2), v572, false);
        end;
    end;
end);
local v575 = {};
local function v584(v576, v577, _, _, _) --[[ Line: 2360 ]] --[[ Name: flinchAnimation ]]
    local l_Animations_0 = v576.Parent:FindFirstChild("Animations");
    local v582 = l_Animations_0 and l_Animations_0:FindFirstChild("Flinch");
    if v582 then
        local l_v582_FirstChild_0 = v582:FindFirstChild(v577.Name);
        if l_v582_FirstChild_0 then
            l_v582_FirstChild_0 = v576:LoadAnimation(l_v582_FirstChild_0);
            l_v582_FirstChild_0.Priority = Enum.AnimationPriority.Action4;
            l_v582_FirstChild_0:Play(0.02, math.random(10, 15) / 100, math.random(90, 110) / 100);
        end;
    end;
end;
local v585 = OverlapParams.new();
v585.FilterDescendantsInstances = {
    workspace:FindFirstChild("InvisibleParts"), 
    workspace:FindFirstChild("Tracers"), 
    workspace:FindFirstChild("Bodies")
};
local l_v241_3 = v241 --[[ copy: 139 -> 202 ]];
local l_l_BaseSpeed_0_1 = l_BaseSpeed_0 --[[ copy: 140 -> 203 ]];
local l_l_Parts_0_0 = l_Parts_0 --[[ copy: 143 -> 204 ]];
local l_v585_0 = v585 --[[ copy: 153 -> 205 ]];
local l_l_HitObject_0_0 = l_HitObject_0 --[[ copy: 144 -> 206 ]];
local l_v584_0 = v584 --[[ copy: 152 -> 207 ]];
local l_v566_0 = v566 --[[ copy: 150 -> 208 ]];
local l_v527_0 = v527 --[[ copy: 147 -> 209 ]];
local l_v239_2 = v239 --[[ copy: 138 -> 210 ]];
v38.new = function(v595) --[[ Line: 2378 ]] --[[ Name: new ]]
    local l_Player_0 = v595.Player;
    local v597 = l_Player_0 == l_LocalPlayer_0;
    local v598 = v595.Character or l_Player_0.Character or l_Character_0;
    local v599 = v595.Model or v39.Current.currentmodel;
    local v600 = v595.Model or v39.Current.tool;
    local v601 = v595.GunData or {};
    local l_StartPosition_0 = v595.StartPosition;
    local l_TargetPosition_0 = v595.TargetPosition;
    local v604 = v595.Direction or (l_TargetPosition_0 - l_StartPosition_0).unit;
    local v605 = v595.Speed or 10;
    local v606 = v595.Damage or 0;
    local v607 = v595.Knockback or v606;
    local v608 = v595.Explosive or v599.Name == "RPG-7";
    local v609 = v608 and "explosion" or v601.Flamethrower and "flamethrower" or v601.DamageType;
    local _ = v595.IsCrit;
    local v611 = v595.Piercing or 0;
    local v612 = v595.Duration or nil;
    local v613 = v595.HitboxInfo or {};
    if v612 then
        v612 = os.clock() + v612;
    end;
    local v614 = {
        v598, 
        v599, 
        l_CurrentCamera_0
    };
    local v615 = {};
    local _ = v595.Drop or 0;
    if l_Player_0 == l_LocalPlayer_0 then
        local l_Magnitude_1 = (l_StartPosition_0 - l_CurrentCamera_0.CFrame.p).Magnitude;
        l_StartPosition_0 = v605 < 15 and l_StartPosition_0 or l_StartPosition_0 - v604 * l_Magnitude_1;
    end;
    local v618 = v595.BulletType or "tracer";
    local v619 = l_new_2("Attachment", l_v241_3);
    v619.Name = "Attach0";
    v619.CFrame = l_new_0(l_StartPosition_0);
    local v620 = l_new_2("Attachment", l_v241_3);
    v620.Name = "Attach1";
    v620.CFrame = l_new_0(l_StartPosition_0);
    local v621 = (l_l_BaseSpeed_0_1:FindFirstChild(v618) or l_l_BaseSpeed_0_1.invisibleTracer):Clone();
    v621.Parent = l_v241_3;
    v621.Attachment0 = v619;
    v621.Attachment1 = v620;
    local v622 = nil;
    if l_l_Parts_0_0:FindFirstChild(v618) then
        v622 = l_l_Parts_0_0[v618]:Clone();
        v622.Anchored = true;
        v622.CanCollide = false;
        v622.Parent = workspace.Tracers;
    end;
    local v623 = {
        destroyed = false, 
        position = l_StartPosition_0
    };
    v623.oldpos = v623.position;
    v623.destroy = function(v624) --[[ Line: 2441 ]] --[[ Name: destroy ]]
        v619:Destroy();
        v620:Destroy();
        v621:Destroy();
        if v622 then
            for _, v626 in v622:GetDescendants() do
                if v626:IsA("Trail") then
                    v626.Enabled = false;
                end;
            end;
            v622.CFrame = CFrame.new(-100000, -100000, -10000);
            game.Debris:AddItem(v622, 3);
        end;
        v624.destroyed = true;
    end;
    v623.getHitboxCollision = function() --[[ Line: 2463 ]] --[[ Name: getHitboxCollision ]]
        local v627 = {};
        local l_position_0 = v623.position;
        local l_FriendlyFire_0 = l_ActiveMutators_0:FindFirstChild("FriendlyFire");
        if v613.Radius then
            v627 = workspace:GetPartBoundsInRadius(l_position_0, v613.Radius, l_v585_0);
        elseif v613.Box then
            v627 = workspace:GetPartBoundsInBox(l_position_0, v613.Box, l_v585_0);
        end;
        if v627 then
            for _, v631 in v627 do
                local l_Humanoid_4 = v631.Parent:FindFirstChildOfClass("Humanoid");
                local v633 = l_Humanoid_4 and l_Humanoid_4.Parent:FindFirstChild("Health");
                if l_Humanoid_4 and v633 and l_Humanoid_4.Parent ~= v598 then
                    local v634 = v631:IsDescendantOf(workspace.Criminals) and "Criminal" or v631:IsDescendantOf(workspace.Police) and "Police" or v631:IsDescendantOf(workspace.Citizens) and "Citizen" or "Unknown";
                    if v634 == "Criminal" and l_FriendlyFire_0 or v634 == "Police" then
                        local l_position_1 = v623.position;
                        local l_Unit_0 = CFrame.new(l_position_1, v631.Position).LookVector.Unit;
                        v623.onhit(v631, l_position_1, l_Unit_0, v623.direction, nil, v601);
                    elseif v634 == "Citizen" then
                        local l_position_2 = v623.position;
                        local l_Unit_1 = CFrame.new(l_position_2, v631.Position).LookVector.Unit;
                        v623.onhit(v631, l_position_2, l_Unit_1, v623.direction, nil, v601);
                    end;
                end;
            end;
        end;
        return false;
    end;
    v623.getcollision = function(v639, v640) --[[ Line: 2507 ]] --[[ Name: getcollision ]]
        if not v640 then
            local l_magnitude_0 = (v623.position - v623.oldpos).magnitude;
            v640 = Ray.new(v623.oldpos, (v623.oldpos - v623.position).unit * -l_magnitude_0);
        end;
        local v642 = v639 or {
            v598, 
            v599, 
            l_CurrentCamera_0
        };
        local l_workspace_PartOnRayWithIgnoreList_4, v644, v645 = workspace:FindPartOnRayWithIgnoreList(v640, v642);
        local v646 = l_workspace_PartOnRayWithIgnoreList_4 ~= nil;
        local l_FriendlyFire_1 = l_ActiveMutators_0:FindFirstChild("FriendlyFire");
        local v648 = l_workspace_PartOnRayWithIgnoreList_4 and l_workspace_PartOnRayWithIgnoreList_4.Parent and l_workspace_PartOnRayWithIgnoreList_4:IsDescendantOf(workspace.Criminals);
        local v649 = l_workspace_PartOnRayWithIgnoreList_4 and game:GetService("CollectionService"):HasTag(l_workspace_PartOnRayWithIgnoreList_4, "Ignore");
        local v650 = v113("E", "k");
        local v651 = l_workspace_PartOnRayWithIgnoreList_4 and l_workspace_PartOnRayWithIgnoreList_4.Parent and (l_workspace_PartOnRayWithIgnoreList_4.Parent.Name == "Invincible" and l_workspace_PartOnRayWithIgnoreList_4.Parent or l_workspace_PartOnRayWithIgnoreList_4.Parent.Parent.Name == "Invincible" and l_workspace_PartOnRayWithIgnoreList_4.Parent.Parent);
        if l_workspace_PartOnRayWithIgnoreList_4 and l_workspace_PartOnRayWithIgnoreList_4.Parent and (v649 or (l_workspace_PartOnRayWithIgnoreList_4.CanCollide == false or l_workspace_PartOnRayWithIgnoreList_4.Transparency == 1 and l_workspace_PartOnRayWithIgnoreList_4.Name ~= "Hitbox" and not l_workspace_PartOnRayWithIgnoreList_4.Name:match("Collision") or v649 or l_workspace_PartOnRayWithIgnoreList_4:IsDescendantOf(workspace.InvisibleParts) or l_workspace_PartOnRayWithIgnoreList_4:IsDescendantOf(workspace.Bodies)) and l_workspace_PartOnRayWithIgnoreList_4.Name ~= "Terrain" and (not l_workspace_PartOnRayWithIgnoreList_4:IsDescendantOf(workspace.Police) and not l_workspace_PartOnRayWithIgnoreList_4:IsDescendantOf(workspace.Citizens) and not v648 or l_workspace_PartOnRayWithIgnoreList_4.Parent:IsA("Tool")) and not l_workspace_PartOnRayWithIgnoreList_4.Parent:FindFirstChild("DoorModule") and not l_workspace_PartOnRayWithIgnoreList_4.Parent:FindFirstChild("SWATHealth") and not l_workspace_PartOnRayWithIgnoreList_4.Parent:HasTag("CanBeHit")) then
            table.insert(v642, l_workspace_PartOnRayWithIgnoreList_4);
            return v623.getcollision(v642, v640);
        elseif v651 and v650 then
            table.insert(v642, l_workspace_PartOnRayWithIgnoreList_4);
            return v623.getcollision(v642, v640);
        elseif v651 and not v650 then
            return l_workspace_PartOnRayWithIgnoreList_4, v644, v645, v646;
        elseif v648 and not l_FriendlyFire_1 then
            table.insert(v642, l_workspace_PartOnRayWithIgnoreList_4);
            return v623.getcollision(v642, v640);
        else
            if l_workspace_PartOnRayWithIgnoreList_4 and l_workspace_PartOnRayWithIgnoreList_4.Parent and l_workspace_PartOnRayWithIgnoreList_4.Parent:FindFirstChild("Humanoid") then
                table.insert(v642, l_workspace_PartOnRayWithIgnoreList_4.Parent);
            end;
            return l_workspace_PartOnRayWithIgnoreList_4, v644, v645, v646;
        end;
    end;
    if v595.BackBlast then
        l_l_HitObject_0_0:FireServer(v600, v598.PrimaryPart, false, v608 and v595.BackBlast[1] or nil, (CFrame.new(l_StartPosition_0, l_TargetPosition_0) * CFrame.new(0, 0, 3)).Position, nil, v595.BackBlast[1], "backblast");
    end;
    v623.onhit = function(v652, v653, v654, v655, _) --[[ Line: 2575 ]] --[[ Name: onhit ]]
        if v608 and v597 then
            l_Remotes_0.Bullet:FireServer({
                Model = v599, 
                Character = l_LocalPlayer_0.Character, 
                Explosive = true
            }, v653);
        end;
        if not v652 or not v653 then
            return;
        else
            local v657 = v652 and FindHumanoid(v652);
            local v658 = v657 and v657.Parent:FindFirstChild("Health");
            if v657 and v615[v657] then
                return;
            elseif v657 and not v658 then
                return;
            else
                local l_v618_0 = v618;
                local v660 = "Generic";
                local v661 = false;
                local v662 = false;
                local v663 = v657 and v657.Parent:FindFirstChild("Invincible");
                local l_Parent_1 = v652.Parent;
                if l_Parent_1 and l_Parent_1.Name == "Invincible" then
                    v661 = true;
                    v662 = true;
                else
                    l_Parent_1 = v652.Parent;
                    if l_Parent_1 and l_Parent_1.Name == "Invincible" then
                        v661 = true;
                        v662 = true;
                    else
                        l_Parent_1 = v652.Parent;
                        if l_Parent_1 and l_Parent_1.Name == "Invincible" then
                            v661 = true;
                            v662 = true;
                        else
                            l_Parent_1 = v652.Parent;
                        end;
                    end;
                end;
                if v663 and v652 and v652:IsDescendantOf(v663) then
                    v661 = true;
                    v662 = true;
                end;
                local v665 = v657 and true or false;
                if v662 then
                    v665 = false;
                end;
                if v657 and not v615[v657] and v665 and not v657:IsDescendantOf(workspace.Citizens) and not v657.Parent:HasTag("CanBeHit") and not v608 then
                    if l_Player_0 == l_LocalPlayer_0 then
                        v615[v657] = true;
                        local v666 = false;
                        local v667 = false;
                        local v668 = 0;
                        local v669 = Color3.new(1, 1, 1);
                        local v670 = Color3.new();
                        local _ = l_ActiveMutators_0:FindFirstChild("FriendlyFire");
                        local v672 = v657 and v657.Parent:FindFirstChild("Type");
                        local v673 = v672 and (v672.Value:match("Jugg") or v672.Value:match("SkullDozer")) and (v652.Parent.Name == "Visor" or v652.Parent.Name == "Faceplate");
                        if v652 and v652.Parent and v652.Parent:IsA("Accoutrement") and not v673 and (v595.IgnoreArmor or v113("T", "l")) and v652.Parent:FindFirstChild("Protects") and v657.Parent:FindFirstChild(v652.Parent:FindFirstChild("Protects").Value) then
                            v652 = v657.Parent:FindFirstChild(v652.Parent:FindFirstChild("Protects").Value);
                        end;
                        local v674, v675, v676, v677, v678 = l_DamageCalculation_0.calculate(l_LocalPlayer_0, v657, v668, v652, v599, v655);
                        v665 = v674;
                        v666 = v675;
                        v668 = v676;
                        v661 = v677;
                        v667 = v678;
                        if v666 and v665 then
                            v669 = Color3.new(1, 0, 0);
                        end;
                        if not v665 then
                            v670 = Color3.new(0.3, 0.3, 0.3);
                        end;
                        if v667 then
                            v670 = Color3.fromRGB(255, 170, 0);
                            v669 = Color3.fromRGB(0, 255, 0);
                        end;
                        if v665 then
                            v153(v669, true);
                            l_v584_0(v657, v652, v653, v654, v668);
                        end;
                        v674 = v655 * v607;
                        v238(v657.Parent, "-" .. string.format("%.1f", v668), v669, not v665);
                        l_Damage_0:FireServer("Damage", v600, v657, v668, v652, v599.Name, (Vector3.new(v674.X, v674.Y + v655.Y, v674.Z)));
                    end;
                elseif l_Player_0 == l_LocalPlayer_0 then
                    local v679 = v655 * v607;
                    l_l_HitObject_0_0:FireServer(v600, v652, false, v608 and v606 or nil, v608 and v653 or nil, Vector3.new(v679.X, v679.Y + v655.Y, v679.Z), v606, v609, v653);
                end;
                if not v601.Flamethrower then
                    local v680 = v608 and "Explosive" .. v660 or v660;
                    l_v566_0(v652, v653, v654, v655, v606, v665, v680, v661, l_v618_0, "Front", nil, v598, v595, true);
                end;
                if v608 then
                    v623:destroy();
                end;
                return;
            end;
        end;
    end;
    v623.step = function(v681) --[[ Line: 2725 ]] --[[ Name: step ]]
        if v612 and os.clock() >= v612 then
            v623:destroy();
        end;
        local v682 = 1 * v605;
        local v683 = -(v595.Drop or 0);
        v604 = v604 + Vector3.new(0, v683 * v681, 0);
        local v684 = v623.position + l_new_1(v604.x * (v681 * v682), v604.y * (v681 * v682), v604.z * (v681 * v682)) * v605;
        local l_position_3 = v623.position;
        v623.oldpos = l_position_3;
        v623.position = v684;
        v623.direction = v604;
        local v686, v687, v688, v689 = v623.getcollision(v614);
        local l_magnitude_1 = (v623.position - l_StartPosition_0).magnitude;
        if v613.Box or v613.Radius then
            local _ = v623.getHitboxCollision();
            local _ = (v623.position - l_StartPosition_0).magnitude;
        end;
        if not v689 and l_magnitude_1 <= 1000 then
            v619.CFrame = l_new_0(v684);
            v620.CFrame = l_new_0(v684) * l_new_0(0, -0.2, 0) * l_new_0(0, 0, 0);
            if v622 then
                v622.CFrame = l_new_0(v684 - v604 * 0.5, v684 + v604);
                return;
            end;
        elseif v689 and l_magnitude_1 <= 1000 then
            local v693 = v686:IsDescendantOf(workspace.Police) and v113("T", "L");
            if not v113("E", "k") then
                local _ = v611 >= 1;
            end;
            local v695 = v686.Parent.Name == "Invincible" and v686.Parent or v686.Parent.Parent.Name == "Invincible" and v686.Parent.Parent;
            if v695 or not v686:IsDescendantOf(workspace.Glass) and not v686:HasTag("Glass") and not v686:HasTag("PassThrough") and not v693 then
                if v611 > 0 then
                    local v696 = l_new_0(v687 + v604 * v611, v687 + v604 * (v611 + 0.5));
                    local v697 = (v687 - v696.Position).Unit * v611;
                    l_v527_0.FilterDescendantsInstances = {};
                    l_v527_0:AddToFilter(v686);
                    local v698 = workspace:Raycast(v696.Position, v697, l_v527_0);
                    if v698 then
                        local l_onhit_0 = v623.onhit;
                        local l_Instance_0 = v698.Instance;
                        local l_Position_2 = v698.Position;
                        local l_Normal_0 = v698.Normal;
                        local l_v604_0 = v604;
                        local v704 = false;
                        if v611 > 0 then
                            v704 = v687;
                        end;
                        l_onhit_0(l_Instance_0, l_Position_2, l_Normal_0, l_v604_0, v704, v601);
                        l_onhit_0 = (v698.Position - v687).Magnitude;
                        v611 = math.max(0, v611 - l_onhit_0);
                        if v611 > 0 then
                            v684 = l_new_0(v687 + v604 * l_onhit_0, v687 + v604 * l_onhit_0);
                            v619.CFrame = l_new_0(v684.Position);
                            v620.CFrame = l_new_0(v684.Position) * l_new_0(0, -0.2, 0) * l_new_0(0, 0, 0);
                            if v622 then
                                v622.CFrame = v684;
                            end;
                            v623.position = v684.Position;
                        end;
                    else
                        v611 = 0;
                    end;
                else
                    v623:destroy();
                end;
            else
                table.insert(v614, v686);
                v623.oldpos = l_position_3;
                v623.position = v687;
                v619.CFrame = l_new_0(v684);
                v620.CFrame = l_new_0(v684) * l_new_0(0, -0.2, 0) * l_new_0(0, 0, 0);
                if v622 then
                    v622.CFrame = l_new_0(v684 - v604 * 0.5, nil, v684 + v604);
                end;
            end;
            v623.onhit(v686, v687, v688, v604, v601);
            if v695 then
                v623:destroy();
                return;
            end;
        else
            v623:destroy();
        end;
    end;
    table.insert(l_v239_2, v623);
end;
Step = function(v705) --[[ Line: 2850 ]] --[[ Name: Step ]]
    for v706, v707 in pairs(l_v239_2) do
        if v707 and not v707.destroyed then
            v707.step(v705);
        else
            table.remove(l_v239_2, v706);
        end;
    end;
end;
table.insert(v132, Step);
v39.List = {};
v39.Current = nil;
v39.Equipped = false;
v239 = function() --[[ Line: 2872 ]] --[[ Name: CheckIfSprinting ]]
    for v708, v709 in pairs(v164) do
        if v708 and v709 and MatchKeys(v709, v1) then
            v36:SetSprint(true);
        end;
    end;
end;
v241 = v46;
do
    local l_v241_4, l_l_BaseSpeed_0_2, l_l_Bullet_0_0, l_v575_0, l_v584_1, l_v585_1 = v241, l_BaseSpeed_0, l_Bullet_0, v575, v584, v585;
    l_UserInputService_0.InputChanged:Connect(function(v716, _) --[[ Line: 2886 ]]
        if v716.UserInputType == Enum.UserInputType.MouseMovement or v716.UserInputType == Enum.UserInputType.Touch then
            l_v241_4 = l_new_1(v716.Delta.x * v37.XSensitivity, v716.Delta.y * v37.YSensitivity, v716.Delta.z);
        end;
        if v716.UserInputType == Enum.UserInputType.Gamepad1 and v716.KeyCode == Enum.KeyCode.Thumbstick2 then
            l_v241_4 = l_new_1(v716.Delta.x * v37.XSensitivity, v716.Delta.y * v37.YSensitivity, v716.Delta.z);
        end;
    end);
    l_l_BaseSpeed_0_2 = l_new_0();
    l_l_Bullet_0_0 = l_new_0();
    l_Debris_0 = function(v718) --[[ Line: 2907 ]] --[[ Name: loadData ]]
        v718 = v0 and v718:Clone() or v718;
        local v719 = require(v718);
        if v0 then
            v718:Destroy();
        end;
        return v719;
    end;
    l_Parts_0 = RaycastParams.new();
    l_Parts_0.FilterDescendantsInstances = {
        workspace:FindFirstChild("Glass"), 
        workspace.CurrentCamera, 
        workspace:FindFirstChild("InvisibleParts"), 
        workspace:FindFirstChild("MapZones"), 
        workspace:FindFirstChild("Nodes"), 
        workspace:FindFirstChild("Tracers"), 
        workspace:FindFirstChild("PoliceObjectives"), 
        workspace:FindFirstChild("NonPoliceObjectives")
    };
    v39.calculateBob = function(v720, v721, v722) --[[ Line: 2936 ]] --[[ Name: calculateBob ]]
        local v723 = v36.Distance * 6.283185307179586 * 3 / 6;
        local v724 = v36.Velocity / 1.8;
        local l_Speed_0 = v36.Speed;
        local v726 = l_Speed_0 / l_Humanoid_0.WalkSpeed;
        local v727 = l_new_1(v721 * l_sin_0(v723 / 4 + 0.5) / 200 / 2.5, v721 * l_sin_0(v723 / 8 - 0.5) / 200 / 1.5, -v724.x / 4000) * l_Speed_0 / 25 * 6.283185307179586;
        local v728 = l_new_1(v720 * (-v724.x / 4000), v720 * (v724.x / 4000) * 4, 0);
        local v729 = l_new_1(v721 * l_sin_0(v723 / 4 + 0.5) / 200 / 2, v721 * l_sin_0(v723 / 8 - 0.5) / 200 / 1, -v724.x / 1000) * l_Speed_0 / 25 * 6.283185307179586;
        local v730 = l_new_1(v720 * (-v724.x / 1000) * 0.7, v720 * (v724.x / 1000) * 0.7, 0);
        local v731 = (1 - v726) * v727 + v726 * v729;
        local v732 = (1 - v726) * v728 + v726 * v730;
        if v722 then
            v731 = v731:Lerp(Vector3.new(0, 0, 0, 0), v722);
        end;
        return l_new_0(v732) * l_Angles_0(v731.x, v731.y, v731.z);
    end;
    v39.new = function(v733) --[[ Line: 2978 ]] --[[ Name: new ]]
        print("LOADING " .. v733.Name);
        local l_Data_0 = v733:WaitForChild("Data");
        if not l_Data_0 then
            print("NO DATA");
            return;
        else
            local l_l_Data_0_0 = l_Data_0;
            l_l_Data_0_0 = v0 and l_l_Data_0_0:Clone() or l_l_Data_0_0;
            local v736 = require(l_l_Data_0_0);
            if v0 then
                l_l_Data_0_0:Destroy();
            end;
            local l_v736_0 = v736;
            l_l_Data_0_0 = {
                isrendering = false, 
                loaded = false, 
                tool = v733, 
                data = l_v736_0, 
                model = nil
            };
            v736 = nil;
            local v738 = nil;
            l_l_Data_0_0.rightarm = v736;
            l_l_Data_0_0.leftarm = v738;
            l_l_Data_0_0.armcenter = nil;
            v736 = nil;
            v738 = nil;
            l_l_Data_0_0.leftweld = v736;
            l_l_Data_0_0.rightweld = v738;
            l_l_Data_0_0.weaponweld = nil;
            l_l_Data_0_0.aim = 0;
            l_l_Data_0_0.pushdist = l_l_Data_0_0.data.PushBack;
            l_l_Data_0_0.aiming = false;
            l_l_Data_0_0.reloading = false;
            l_l_Data_0_0.shooting = false;
            l_l_Data_0_0.postshooting = false;
            l_l_Data_0_0.CancelReload = false;
            l_l_Data_0_0.CanCancelReload = l_l_Data_0_0.data.ReloadInterruption;
            l_l_Data_0_0.shootCameraOffset = l_l_Data_0_0.data.RecoilCameraDirection;
            l_l_Data_0_0.maxCameraOffset = l_l_Data_0_0.data.MaxCameraRecoil;
            l_l_Data_0_0.shootCameraPattern = l_l_Data_0_0.data.RecoilCameraDirectionPattern;
            v736 = l_l_Data_0_0.tool:FindFirstChild("Primary") or l_l_Data_0_0.tool:FindFirstChild("Secondary") or l_l_Data_0_0.tool:FindFirstChild("Gadget");
            l_l_Data_0_0.AmmoType = v736 and v736.Name or l_l_Data_0_0.data.AmmoClass;
            l_l_Data_0_0.ReloadType = l_l_Data_0_0.data.ReloadStyle;
            l_l_Data_0_0.Accuracy = math.clamp(l_l_Data_0_0.data.Accuracy or 95, 0, 100);
            l_l_Data_0_0.CancelCharge = false;
            l_l_Data_0_0.ChargeTime = 0;
            l_l_Data_0_0.ShakeMagnitude = l_l_Data_0_0.data.ShakeMagnitude and l_l_Data_0_0.data.ShakeMagnitude or 25;
            l_l_Data_0_0.ShakeRoughness = l_l_Data_0_0.data.ShakeRoughness and l_l_Data_0_0.data.ShakeRoughness or 25;
            l_l_Data_0_0.cameraModel = nil;
            l_l_Data_0_0.WeldList = {};
            v738 = l_l_Data_0_0.data.AimFOV;
            local v739 = nil;
            if not l_l_Data_0_0.data.RecoilDirectionPattern or not #l_l_Data_0_0.data.RecoilDirectionPattern then
                local _ = 1;
            end;
            if l_l_Data_0_0.shootCameraPattern then
                local _ = math.max(#l_l_Data_0_0.shootCameraPattern, #l_l_Data_0_0.data.RecoilDirectionPattern);
            end;
            local function _(v742, v743, v744) --[[ Line: 3030 ]] --[[ Name: walkbob ]]
                return v39.calculateBob(v742, v743, v744);
            end;
            local v746 = {};
            local v747 = {};
            local function v753(v748, v749) --[[ Line: 3039 ]] --[[ Name: loadAnimations ]]
                v748 = v748 or l_Humanoid_0;
                local v750 = {};
                for _, v752 in v749:GetChildren() do
                    if v752:IsA("Animation") then
                        v750[v752.Name] = v748:LoadAnimation(v752);
                    end;
                end;
                return v750;
            end;
            local l_TPAnimations_0 = v733:FindFirstChild("TPAnimations");
            if l_TPAnimations_0 then
                l_l_Data_0_0.toolAnimations = v753(l_Humanoid_0, l_TPAnimations_0);
            else
                l_l_Data_0_0.toolAnimations = {};
            end;
            local v755 = v34.Spring.new(0);
            v755.s = l_l_Data_0_0.data.PushBackSpeed or 50;
            v755.d = 0.5;
            local v756 = v34.Spring.new(0);
            v756.s = l_l_Data_0_0.data.AimSpeed or 10;
            v756.d = 0.8;
            local v757 = v34.Spring.new(v46);
            v757.s = 15;
            v757.d = 0.7;
            local v758 = -100 * l_l_Data_0_0.Accuracy + 10000;
            local v759 = true;
            local v760 = 1;
            local v761 = v34.Spring.new((l_new_1(l_l_Data_0_0.data.RightArmEquipOffset and l_l_Data_0_0.data.RightArmEquipOffset.p or 0.9, -2.75, -1.2)));
            local v762 = v34.Spring.new((l_new_1(l_l_Data_0_0.data.LeftArmEquipOffset and l_l_Data_0_0.data.LeftArmEquipOffset.p or -0.05, -3, -1)));
            v761.s = 15;
            v761.d = 1;
            v762.s = 15;
            v762.d = 1;
            local v763 = v34.Spring.new((l_new_1()));
            v763.s = 15;
            v763.d = 1;
            local v764 = v34.Spring.new((l_new_1()));
            v764.s = 15;
            v764.d = 1;
            local v765 = v34.Spring.new((l_new_1()));
            v765.s = 15;
            v765.d = 1;
            local v766 = v34.Spring.new((l_new_1()));
            v766.s = 15;
            v766.d = 1;
            local v767, v768, v769 = l_l_Data_0_0.data.LeftArmOffsetAngle:toEulerAnglesXYZ();
            local v770, v771, v772 = l_l_Data_0_0.data.RightArmOffsetAngle:toEulerAnglesXYZ();
            local v773 = l_new_1(v767, v768, v769);
            local v774 = l_new_1(v770, v771, v772);
            local l_RightArmEquipOffsetAngle_0 = l_l_Data_0_0.data.RightArmEquipOffsetAngle;
            local l_LeftArmEquipOffsetAngle_0 = l_l_Data_0_0.data.LeftArmEquipOffsetAngle;
            local v777 = l_RightArmEquipOffsetAngle_0 and l_new_1(l_RightArmEquipOffsetAngle_0:toEulerAnglesXYZ()) or Vector3.new(-1.3962633609771729, 0, 0, 0);
            local v778 = l_LeftArmEquipOffsetAngle_0 and l_new_1(l_LeftArmEquipOffsetAngle_0:toEulerAnglesXYZ()) or Vector3.new(-1.0471975803375244, 0, 0.027415568009018898, 0);
            local v779 = v34.Spring.new((Vector3.new(0, 0, 0, 0)));
            local v780 = v34.Spring.new((l_new_1(v777)));
            local v781 = v34.Spring.new((l_new_1(v778)));
            v780.s = 15;
            v780.d = 1;
            v781.s = 15;
            v781.d = 1;
            v779.s = 15;
            v779.d = 1;
            local l_ArmFix_0 = l_l_Data_0_0.data.ArmFix;
            local l_l_l_BaseSpeed_0_2_0 = l_l_BaseSpeed_0_2;
            local l_l_l_Bullet_0_0_0 = l_l_Bullet_0_0;
            local v785 = v34.Spring.new(l_l_Data_0_0.data.WeaponOffset.p);
            v785.s = 15;
            v785.d = 1;
            local v786, v787, v788 = (l_l_Data_0_0.data.WeaponOffsetAngle or l_Angles_0(0, 0, 0)):toEulerAnglesXYZ();
            local v789 = v34.Spring.new((l_new_1(v786, v787, v788)));
            v789.s = 15;
            v789.d = 1;
            local v790 = l_l_Data_0_0.data.WeaponOffset2 or l_l_Data_0_0.data.WeaponOffset;
            local v791 = v34.Spring.new(v790.p);
            v791.s = 15;
            v791.d = 1;
            local v792, v793, v794 = (l_l_Data_0_0.data.WeaponOffsetAngle2 or l_l_Data_0_0.data.WeaponOffsetAngle or l_Angles_0(0, 0, 0)):toEulerAnglesXYZ();
            local v795 = v34.Spring.new((l_new_1(v792, v793, v794)));
            v795.s = 15;
            v795.d = 1;
            local l_WeaponFix_0 = l_l_Data_0_0.data.WeaponFix;
            local l_SprintOffset_0 = l_l_Data_0_0.data.SprintOffset;
            local v798 = l_l_Data_0_0.data.AimOffset or l_WeaponFix_0;
            l_l_Data_0_0.firemodeT0 = tick();
            l_l_Data_0_0.switchFiremode = function(v799, v800) --[[ Line: 3158 ]] --[[ Name: switchFiremode ]]
                if not v800 and tick() < v799.firemodeT0 or v799.reloading or v799.attacking or v799.postshooting or v70 then
                    return;
                else
                    if v799.data.FireModeList then
                        v799.firemodeT0 = tick() + 0.2;
                        local v801 = v799.currentmodel and v799.currentmodel:FindFirstChild("Handle");
                        local v802 = v801 and v801:FindFirstChild("Firemode");
                        local v803 = (v799.FiremodeIndex or 1) + 1;
                        if v800 then
                            v803 = v800;
                        end;
                        if #v799.data.FireModeList < v803 then
                            v803 = 1;
                        end;
                        if v802 and not v800 then
                            v802:Play();
                        end;
                        v733:SetAttribute("FiremodeIndex", v803);
                        v799.data.FireMode = v799.data.FireModeList[v803];
                        v799.FiremodeIndex = v803;
                        local v804 = v733:FindFirstChild("Primary", true) and "primary" or v733:FindFirstChild("Secondary", true) and "secondary" or v733:FindFirstChild("Gadget", true) and "gadget";
                        if not v804 then
                            return;
                        else
                            local v805 = v799.data.FireMode:match("Auto") and "Auto" or "Semi";
                            l_PlayerGui_0:WaitForChild("SG_Package"):WaitForChild("MainGui").PlayerStats.LocalPlayerStats.info_weapons[v804 .. "Firemode"].Text = v799.data.HideFireMode and "" or string.format("[%s]", v805);
                        end;
                    end;
                    return;
                end;
            end;
            l_l_Data_0_0.playGunAnimation = function(v806, v807, v808, v809) --[[ Line: 3200 ]] --[[ Name: playGunAnimation ]]
                v806.playing = true;
                for _, v811 in pairs(v807) do
                    if v811[7] > 0 then
                        if not v806.puttingAway then
                            local v812, v813, v814 = v811[4]:toEulerAnglesXYZ();
                            local v815, v816, v817 = v811[2]:toEulerAnglesXYZ();
                            v761.t = v811[1].p;
                            v780.t = l_new_1(v815, v816, v817);
                            v762.t = v811[3].p;
                            v781.t = l_new_1(v812, v813, v814);
                            v785.t = v811[5].p;
                            v761.s = v811[6];
                            v781.s = v811[6];
                            v780.s = v811[6];
                            v762.s = v811[6];
                            v785.s = v811[6];
                            local v818 = v811[9];
                            if v818 and v818 ~= "" then
                                v806:playsound(v818);
                            end;
                            local v819 = v811[8];
                            if v819 then
                                v806:animationaction(v819, v811);
                            end;
                            local v820 = tick();
                            repeat
                                task.wait();
                            until (not v806.playing or v806.reloading or v806.attacking or v806.aiming or v806.postshooting or not v809 and v70 or v806.grenade) and not v808 or tick() - v820 >= v811[7] or not v806.playing;
                        else
                            break;
                        end;
                    end;
                end;
                v806.playing = false;
            end;
            l_l_Data_0_0.playAnimationOLD = function(v821, v822, v823) --[[ Line: 3248 ]] --[[ Name: playAnimationOLD ]]
                v821.playing = true;
                for _, v825 in pairs(v822) do
                    if v825[6] > 0 then
                        if v825[1] then
                            v763.t = v825[1].p;
                            v763.s = v825[5];
                        end;
                        if v825[2] then
                            local v826, v827, v828 = v825[2]:toEulerAnglesXYZ();
                            v764.t = l_new_1(v826, v827, v828);
                            v764.s = v825[5];
                        end;
                        local v829, v830, v831 = v825[4]:toEulerAnglesXYZ();
                        v762.t = v825[3].p;
                        v781.t = l_new_1(v829, v830, v831);
                        v781.s = v825[5];
                        v762.s = v825[5];
                        local v832 = v825[7];
                        if v832 and v832 == "ThrowGrenade" then
                            local l_CFrame_1 = workspace.CurrentCamera.CFrame;
                            local v834 = CFrame.new(l_CFrame_1.Position, l_CFrame_1.Position + l_CFrame_1.LookVector).LookVector * 999;
                            local v835 = v33 and v834 or l_l_LocalPlayer_0_Mouse_0.Hit.p;
                            l_RS_Package_0.Remotes.ThrowGrenade:FireServer(v835);
                        end;
                        local v836 = tick();
                        repeat
                            task.wait();
                        until (not v821.playing or v821.reloading or v821.attacking or v821.aiming or v821.postshooting or v70 or v821.grenade) and not v823 or tick() - v836 >= v825[6] or not v821.playing;
                    end;
                end;
                v821.playing = false;
            end;
            l_l_Data_0_0.playAnimation = function(v837, v838, v839, v840) --[[ Line: 3300 ]] --[[ Name: playAnimation ]]
                v837.playing = true;
                local v841 = nil;
                for _, v843 in pairs(v838) do
                    if v843[6] > 0 then
                        local v844 = typeof(v843[5]) == "number" and v843[5] or v843[6];
                        if v843[1] then
                            if v840 then
                                v761.t = v843[1].p;
                                v761.s = v844;
                            else
                                v763.t = v843[1].p;
                                v763.s = v844;
                            end;
                        end;
                        if v843[2] then
                            local v845, v846, v847 = v843[2]:toEulerAnglesXYZ();
                            if v840 then
                                v780.t = l_new_1(v845, v846, v847);
                                v780.s = v844;
                            else
                                v764.t = l_new_1(v845, v846, v847);
                                v764.s = v844;
                            end;
                        end;
                        local v848, v849, v850 = v843[4]:toEulerAnglesXYZ();
                        v762.t = v843[3].p;
                        v781.t = l_new_1(v848, v849, v850);
                        v781.s = v844;
                        v762.s = v844;
                        local v851 = v843[8];
                        if v851 and v851 ~= "" then
                            v837:playsound(v851);
                        end;
                        local v852 = v843[7];
                        if v852 and v852 ~= "" then
                            if v852 == "ThrowGrenade" then
                                local l_CFrame_2 = workspace.CurrentCamera.CFrame;
                                local l_p_1 = l_l_LocalPlayer_0_Mouse_0.Hit.p;
                                local v855 = Ray.new(l_CFrame_2.p, l_CFrame_2.lookVector * 999);
                                local _, v857 = workspace:FindPartOnRayWithWhitelist(v855, {});
                                l_p_1 = v857;
                                local _ = v837.toolAnimations.Start;
                                local l_Cook_0 = v837.toolAnimations.Cook;
                                local l_Attack_0 = v837.toolAnimations.Attack;
                                if l_Cook_0 then
                                    l_Cook_0:Stop();
                                end;
                                if l_Attack_0 then
                                    l_Attack_0:Play();
                                    l_Attack_0.Priority = Enum.AnimationPriority.Action3;
                                end;
                                v841 = v841 or tick();
                                local l_ThrowType_0 = v837.ThrowType;
                                l_RS_Package_0.Remotes.ThrowGrenade:FireServer(l_p_1, tick() - v841, l_ThrowType_0);
                            elseif v852 == "CookGrenade" and v837.cooking then
                                v841 = tick();
                                repeat
                                    task.wait();
                                until not v837.cooking or tick() - v841 + 0.1 >= (v837.data.FuseTime or 5);
                            else
                                v837:animationaction(v852, v843, v844);
                            end;
                        end;
                        local v862 = tick();
                        repeat
                            task.wait();
                        until (not v837.playing or v837.reloading or v837.attacking or v837.aiming or v837.postshooting or v70 or v837.grenade) and not v839 or tick() - v862 >= v843[6] or not v837.playing;
                    end;
                end;
                v837.playing = false;
            end;
            l_l_Data_0_0.cancelAnimation = function(v863) --[[ Line: 3398 ]] --[[ Name: cancelAnimation ]]
                v863.playing = false;
            end;
            l_l_Data_0_0.playGesture = function(v864, v865) --[[ Line: 3402 ]] --[[ Name: playGesture ]]
                if v864.reloading or v864.attacking or v864.aiming or v864.postshooting or v70 or v864.grenade or v864.gesturing or v864.shieldDeployed then
                    return;
                elseif not workspace:GetAttribute("MaskReady") then
                    return;
                else
                    if v864.inspecting then
                        v864:setinspecting(false);
                    end;
                    v864.gesturing = true;
                    local l_FirstChild_1 = script:WaitForChild("Gestures"):FindFirstChild(v865);
                    if l_FirstChild_1 then
                        l_FirstChild_1 = l_FirstChild_1:Clone();
                        v864:playAnimation(require(l_FirstChild_1));
                        l_FirstChild_1:Destroy();
                        if not v864.puttingAway then
                            v761.t = v864.data.RightArmOffset.p;
                            v762.t = v864.data.LeftArmOffset.p;
                            v785.t = v864.data.WeaponOffset.p;
                            v762.s = 50;
                            v781.s = 50;
                            v761.s = 50;
                            v780.s = 50;
                            v779.s = 50;
                            v785.s = 50;
                            v779.t = l_new_1();
                            v780.t = v774;
                            v781.t = v773;
                            wait(0.2);
                            v762.s = 1;
                            v781.s = 1;
                            v761.s = 1;
                            v780.s = 1;
                            v779.s = 1;
                            v785.s = 1;
                            v785.s = 1;
                        end;
                        v864.gesturing = false;
                    end;
                    return;
                end;
            end;
            l_l_Data_0_0.throwGrenade = function(v867) --[[ Line: 3455 ]] --[[ Name: throwGrenade ]]
                if v867.reloading or v867.attacking or v867.aiming or v867.postshooting or v70 then
                    return;
                else
                    if v867.inspecting then
                        v867:setinspecting(false);
                    end;
                    if v69 and l_Character_0:FindFirstChild("Throwables").Value > 0 then
                        v867.reloading = true;
                        v867.grenade = true;
                        local v868 = script:WaitForChild("GrenadeAnim"):Clone();
                        local v869 = require(v868);
                        local l_Start_1 = v867.toolAnimations.Start;
                        local l_Cook_1 = v867.toolAnimations.Cook;
                        local l_Attack_1 = v867.toolAnimations.Attack;
                        print(l_Start_1, l_Cook_1, l_Attack_1);
                        if l_Start_1 then
                            l_Start_1:Play();
                            l_Start_1.Priority = Enum.AnimationPriority.Action2;
                        end;
                        if l_Cook_1 then
                            l_Cook_1:Play();
                            l_Cook_1.Priority = Enum.AnimationPriority.Action;
                        end;
                        v867:playAnimation(v869, true);
                        v868:Destroy();
                        if not v867.puttingAway then
                            v761.t = v867.data.RightArmOffset.p;
                            v762.t = v867.data.LeftArmOffset.p;
                            v785.t = v867.data.WeaponOffset.p;
                            v762.s = 50;
                            v781.s = 50;
                            v761.s = 50;
                            v780.s = 50;
                            v779.s = 50;
                            v785.s = 50;
                            v779.t = l_new_1();
                            v780.t = v774;
                            v781.t = v773;
                            wait(0.2);
                            v762.s = 1;
                            v781.s = 1;
                            v761.s = 1;
                            v780.s = 1;
                            v779.s = 1;
                            v785.s = 1;
                        end;
                        v867.grenade = false;
                        v867.reloading = false;
                    end;
                    return;
                end;
            end;
            l_l_Data_0_0.updateshield = function(v873) --[[ Line: 3529 ]] --[[ Name: updateshield ]]
                local l_Attribute_0 = v873.tool:GetAttribute("Health");
                if v873.PreviousHealth and l_Attribute_0 < v873.PreviousHealth then
                    v755.t = math.clamp(v755.t + 0.1, 0, 1);
                    v37:SetShake(50, 50, 0, 0.15);
                end;
                local l_model2_0 = v873.model2;
                if l_model2_0 then
                    local v876 = math.clamp(l_Attribute_0 / (v873.tool:GetAttribute("MAX_HEALTH") or 100), 0, 1);
                    if v873.PreviousHealth and l_Attribute_0 < v873.PreviousHealth and l_Attribute_0 <= 0 and v873.shieldDeployed then
                        v873.PreviousHealth = l_Attribute_0;
                        (l_model2_0:FindFirstChild("Handle2") or l_model2_0.Model2:FindFirstChild("Handle2")).Break:Play();
                        v873:setshield(false);
                        local l_ShieldFragment_0 = l_model2_0:FindFirstChild("ShieldFragment");
                        if l_ShieldFragment_0 then
                            local v878 = l_ShieldFragment_0:Clone();
                            v878:PivotTo(l_ShieldFragment_0:GetPivot());
                            for _, v880 in v878:GetDescendants() do
                                if v880:IsA("BasePart") or v880:IsA("Texture") or v880:IsA("Decal") then
                                    v880.Transparency = v880.Transparency - 1;
                                    if v880:IsA("BasePart") then
                                        v880.CanCollide = true;
                                        v880.CollisionGroup = "Ammo";
                                    end;
                                end;
                            end;
                            v878.Parent = workspace;
                            v878:BreakJoints();
                            local l_Top_0 = v878:FindFirstChild("Top");
                            local l_Top_1 = v878:FindFirstChild("Top");
                            if l_Top_0 then
                                l_Top_0:ApplyImpulse(-v878.Top.CFrame.LookVector * 5 + v878.Top.CFrame.UpVector * 25);
                            end;
                            if l_Top_1 then
                                l_Top_1:ApplyImpulse(-v878.Top.CFrame.LookVector * 5 - v878.Top.CFrame.UpVector * 5);
                            end;
                            game:GetService("Debris"):AddItem(v878, 15);
                        end;
                    end;
                    for _, v884 in l_model2_0:GetDescendants() do
                        if v884.Name ~= "Handle2" and v884:IsA("BasePart") and v884:GetAttribute("Dynamic") then
                            v884.LocalTransparencyModifier = l_Attribute_0 <= 0 and 1 or 0;
                        elseif v884.Name == "Damage" and v884:IsA("Decal") then
                            v884.Transparency = l_Attribute_0 <= 0 and 1 or v876;
                        end;
                    end;
                end;
                v873.PreviousHealth = l_Attribute_0;
            end;
            l_l_Data_0_0.setvisible = function(v885, v886, v887) --[[ Line: 3598 ]] --[[ Name: setvisible ]]
                v886 = typeof(v886) == "number" and v886 or v886 and 0 or 1;
                local l_HideOnEmpty_0 = v885.data.HideOnEmpty;
                v887 = v887 or v885.model;
                local l_v887_Descendants_0 = v887:GetDescendants();
                table.insert(l_v887_Descendants_0, v887);
                for _, v891 in l_v887_Descendants_0 do
                    if (v891:IsA("BasePart") or v891:IsA("ParticleEmitter") or v891:IsA("Beam") or v891:IsA("Trail") or v891:IsA("Decal") or v891:IsA("Texture")) and (not l_HideOnEmpty_0 or l_HideOnEmpty_0 == "All" or v891.Name:match(l_HideOnEmpty_0)) then
                        v891.LocalTransparencyModifier = v886;
                    end;
                end;
            end;
            l_l_Data_0_0.setshield = function(v892, v893) --[[ Line: 3614 ]] --[[ Name: setshield ]]
                if not (v892.tool:GetAttribute("Health") > 0) then
                    v893 = false;
                end;
                if v893 and not v892.attacking and not v70 and not v892.reloading and not v892.shieldCooldown and not v892.meleeswing then
                    local l_ShieldOffset_0 = v892.data.ShieldOffset;
                    if l_ShieldOffset_0 then
                        l_Remotes_0.Shield:FireServer(true);
                        if v892.inspecting then
                            v892:setinspecting(false);
                        end;
                        v892.shieldDeployed = true;
                        local v895, v896, v897 = l_ShieldOffset_0[4]:toEulerAnglesXYZ();
                        local v898, v899, v900 = l_ShieldOffset_0[2]:toEulerAnglesXYZ();
                        v761.t = l_ShieldOffset_0[1].p;
                        v780.t = l_new_1(v898, v899, v900);
                        v762.t = l_ShieldOffset_0[3].p;
                        v781.t = l_new_1(v895, v896, v897);
                        v761.s = l_ShieldOffset_0[6];
                        v781.s = l_ShieldOffset_0[6] * 1;
                        v780.s = l_ShieldOffset_0[6] * 1;
                        v762.s = l_ShieldOffset_0[6] * 1;
                        local v901, v902, v903 = l_ShieldOffset_0[5]:toEulerAnglesXYZ();
                        v779.t = l_new_1(v901, v902, v903);
                        v779.s = l_ShieldOffset_0[6];
                        v785.t = l_ShieldOffset_0[5].p;
                        v785.s = l_ShieldOffset_0[6] * 1;
                        local _ = l_ShieldOffset_0[8];
                        local _ = l_ShieldOffset_0[9];
                        return;
                    end;
                elseif v892.shieldDeployed and not v892.shieldCooldown then
                    v892.shieldCooldown = true;
                    l_Remotes_0.Shield:FireServer(false);
                    v761.t = v892.data.RightArmOffset.p;
                    v762.t = v892.data.LeftArmOffset.p;
                    v785.t = v892.data.WeaponOffset.p;
                    v762.s = 75;
                    v781.s = 75;
                    v761.s = 75;
                    v780.s = 75;
                    v785.s = 75;
                    v779.s = 75;
                    v780.t = v774;
                    v781.t = v773;
                    v779.t = l_new_1();
                    task.delay(1, function() --[[ Line: 3671 ]]
                        v892.shieldCooldown = false;
                    end);
                    task.wait(0.2);
                    v762.s = 1;
                    v781.s = 1;
                    v761.s = 1;
                    v780.s = 1;
                    v779.s = 1;
                    v785.s = 1;
                    v892.shieldDeployed = false;
                end;
            end;
            l_l_Data_0_0.setaim = function(v906, v907, v908) --[[ Line: 3690 ]] --[[ Name: setaim ]]
                if l_v736_0.WeaponType == "Melee" and l_v736_0.Shield then
                    v906:setshield(v907);
                    return;
                elseif v907 and not v906.reloading and (l_v736_0.WeaponType == "Gun" or v906.aimpart) and not v70 then
                    if v906.inspecting then
                        v906:setinspecting(false);
                    end;
                    if v69 and not v908 then
                        l_LocalPlayer_0.PlayerGui.SG_Package.SFX.aimStart:Play();
                    end;
                    v121.Visible = false;
                    if v36.Sprinting then
                        v36:SetSprint(false);
                    end;
                    v906.aiming = true;
                    v156(1, 0.1);
                    v756.t = 1;
                    local l_Value_11 = l_Character_0:WaitForChild("BagSpeed").Value;
                    v738 = v906.altaim and v906.altaimfov or v906.aimfov or v738;
                    v37:SetFOV(v738);
                    v37:UpdateSensitivity(v738);
                    v36:SetWalkSpeed(v36.DefaultWalkSpeed / 2 * l_Value_11);
                    return;
                else
                    v121.Visible = true;
                    if v906.aiming and v69 then
                        l_LocalPlayer_0.PlayerGui.SG_Package.SFX.aimEnd:Play();
                    end;
                    v906.aiming = false;
                    v156(0, 0.1);
                    v756.t = 0;
                    v37:ResetFOV();
                    v37:ResetSensitivity();
                    v36:ResetWalkSpeed();
                    v239();
                    return;
                end;
            end;
            l_l_Data_0_0.postshoot = function(v910, v911) --[[ Line: 3748 ]] --[[ Name: postshoot ]]
                if v910.postshooting or v70 then
                    return;
                else
                    local v912 = v911 and v910.toolAnimations.Chamber or v910.toolAnimations.Postshoot;
                    if v912 then
                        v912:Play();
                        v912.Priority = Enum.AnimationPriority.Action3;
                    end;
                    v910.postshooting = true;
                    v910.waspostshooting = true;
                    local _ = v910.Ammo;
                    local l_Value_12 = l_Character_0:FindFirstChild(v910.AmmoType .. "Ammo").Value;
                    local v915 = v911 and v910.data.ChamberSequence or l_Value_12 - 1 <= 0 and v910.data.LastShootSequence or v910.data.PostShootSequence;
                    for _, v917 in pairs(v915) do
                        if v917[7] > 0 then
                            if not v910.puttingAway then
                                local v918, v919, v920 = v917[4]:toEulerAnglesXYZ();
                                local v921, v922, v923 = v917[2]:toEulerAnglesXYZ();
                                v761.t = v917[1].p;
                                v780.t = l_new_1(v921, v922, v923);
                                v762.t = v917[3].p;
                                v781.t = l_new_1(v918, v919, v920);
                                v785.t = v917[5].p;
                                v761.s = v917[6];
                                v781.s = v917[6];
                                v780.s = v917[6];
                                v762.s = v917[6];
                                v785.s = v917[6];
                                local v924 = v917[9];
                                if v924 and v924 ~= "" then
                                    v910:playsound(v924);
                                end;
                                local v925 = v917[8];
                                if v925 then
                                    v910:animationaction(v925, v917);
                                end;
                                task.wait(v917[7]);
                            else
                                break;
                            end;
                        end;
                    end;
                    v910.waspostshooting = false;
                    if not v910.puttingAway then
                        v761.t = v910.data.RightArmOffset.p;
                        v762.t = v910.data.LeftArmOffset.p;
                        v785.t = v910.data.WeaponOffset.p;
                        v762.s = 150;
                        v781.s = 150;
                        v761.s = 150;
                        v780.s = 150;
                        v785.s = 150;
                        v780.t = v774;
                        v781.t = v773;
                        task.wait(0.05);
                        v762.s = 1;
                        v781.s = 1;
                        v761.s = 1;
                        v780.s = 1;
                        v785.s = 1;
                    end;
                    v910.postshooting = false;
                    return;
                end;
            end;
            l_l_Data_0_0.shoot = function(v926, _) --[[ Line: 3824 ]] --[[ Name: shoot ]]
                if v926.postshooting or not v759 or v70 or v32 or v71 or v36.Sprint > 0.3 then
                    return;
                else
                    if v926.inspecitng then
                        v926:setinspecting(false);
                    end;
                    local l_Value_13 = l_Character_0:FindFirstChild(v926.AmmoType .. "Ammo").Value;
                    local _ = v926.model:FindFirstChild("Bullet_" .. l_Value_13 - 1);
                    if l_Value_13 <= 0 then
                        v926:setshooting(false);
                        if l_Options_1:WaitForChild("Gameplay"):WaitForChild("AutoReload").Value then
                            v926:setreloading(true);
                        end;
                        return true;
                    else
                        if l_Value_13 - 1 <= 0 and v926.data.HideOnEmpty then
                            v926:setvisible(false);
                        end;
                        if v926.data.HideBullets then
                            for _, v931 in v926.model:GetChildren() do
                                if v931.Name:match("Bullet_") then
                                    local v932 = v931.Name:match("%d+");
                                    v932 = v932 and tonumber(v932);
                                    if v932 and l_Value_13 - 1 < v932 then
                                        v926:setvisible(false, v931);
                                    end;
                                end;
                            end;
                        end;
                        if v926.toolAnimations.Attack then
                            local v933 = v926.toolAnimations.Attack:GetAttribute("Weight") or 1;
                            v926.toolAnimations.Attack:Play(0.05, v933);
                            v926.toolAnimations.Attack.Priority = Enum.AnimationPriority.Action2;
                        end;
                        local l_p_2 = l_l_LocalPlayer_0_Mouse_0.Hit.p;
                        local v935 = v926.aiming and v926.aimpart or workspace.CurrentCamera;
                        if v37.Mode == "FirstPerson" then
                            local v936 = Ray.new(l_Head_0.CFrame.p, v935.CFrame.lookVector * 999);
                            local _, v938 = workspace:FindPartOnRayWithWhitelist(v936, {});
                            l_p_2 = v938;
                        elseif v37.Mode == "Shoulder" then
                            local v939 = Ray.new(l_Head_0.CFrame.p, l_CurrentCamera_0.CFrame.lookVector * 999);
                            local _, v941 = workspace:FindPartOnRayWithWhitelist(v939, {});
                            l_p_2 = v941;
                        end;
                        local v942 = math.max(v758, 0);
                        local v943 = l_p_2 + Vector3.new(math.random(-v942, v942) / 100, math.random(-v942, v942) / 100, math.random(-v942, v942) / 100);
                        local v944 = Vector3.new();
                        local v945 = true;
                        if v926.data.BulletSpeed >= 10 then
                            v945 = v926.data.MuzzleOrigin;
                        end;
                        if v926.aiming then
                            local v946 = v926.altaim and v926.altaimpart or v926.aimpart;
                            local v947 = v946 and v946.Position or l_CurrentCamera_0.CFrame.Position;
                            v944 = if not (v26 == 0) or l_Character_0:FindFirstChild("Health") and l_Character_0:FindFirstChild("Health").Value <= 0 then v947 else v947;
                        else
                            v944 = l_CurrentCamera_0.CFrame.Position;
                        end;
                        if v945 then
                            v944 = v926.currentmodel.Muzzle.Position;
                        end;
                        local v948 = {
                            StartPosition = v944, 
                            TargetPosition = v943, 
                            Direction = (v943 - v944).unit, 
                            BulletType = v926.data.BulletType, 
                            Speed = v926.data.BulletSpeed, 
                            Damage = v926.data.Damage, 
                            Knockback = v926.data.Knockback or v926.data.Damage * (v926.data.BulletsPerBurstOrShotgun > 0 and v926.data.BulletsPerBurstOrShotgun or 1) / 10, 
                            BackBlast = v926.data.BackBlast and {
                                v926.data.Damage * v926.data.BackBlast, 
                                v926.data.BackBlastRadius or 10
                            }, 
                            Piercing = v926.data.Piercing or nil, 
                            Player = l_LocalPlayer_0, 
                            Character = l_LocalPlayer_0.Character, 
                            Model = v39.Current.tool, 
                            UseAmmo = true, 
                            IsCrit = v926.data.QuickdrawAced and v926.data.QuickdrawAced == 1, 
                            Explosive = v926.data.Explosive, 
                            Drop = v926.data.Drop or 0, 
                            Duration = v926.data.Duration or nil, 
                            IgnoreArmor = v926.data.IgnoreArmor or nil, 
                            HitboxInfo = v926.data.HitboxInfo or nil, 
                            GunData = v926.data
                        };
                        v24 = v24 + 1;
                        v25 = v25 + 1;
                        v220.t = v926.data.RecoilDirectionPattern[v24 % #v926.data.RecoilDirectionPattern + 1] * 1;
                        local v949 = nil;
                        v949 = if v926.shootCameraPattern then v926.shootCameraPattern[v24 % #v926.shootCameraPattern + 1] * 1 else v926.shootCameraOffset * 1;
                        v755.t = v755.t + v926.pushdist * 1;
                        v221.t = v949;
                        v37:SetShake(v926.ShakeMagnitude / 1, v926.ShakeRoughness / 1, 0, 0.25);
                        if v926.data.FireMode == "Shotgun" or v926.data.FireMode == "AutoShotgun" then
                            for v950 = 1, v926.data.BulletsPerBurstOrShotgun do
                                local v951 = l_p_2 + Vector3.new(math.random(-v942, v942) / 100, math.random(-v942, v942) / 100, math.random(-v942, v942) / 100);
                                local v952 = {
                                    StartPosition = v944, 
                                    TargetPosition = v951, 
                                    Direction = (v951 - v944).unit, 
                                    BulletType = v926.data.BulletType, 
                                    Speed = v926.data.BulletSpeed, 
                                    Damage = v926.data.Damage, 
                                    Knockback = v926.data.Knockback or v926.data.Damage * (v926.data.BulletsPerBurstOrShotgun > 0 and v926.data.BulletsPerBurstOrShotgun or 1) / 10, 
                                    Explosive = v926.data.Explosive, 
                                    Drop = v926.data.Drop or 0, 
                                    Player = l_LocalPlayer_0, 
                                    Character = l_LocalPlayer_0.Character, 
                                    Model = v39.Current.tool, 
                                    UseAmmo = v950 == 1, 
                                    IsCrit = v926.data.QuickdrawAced and v926.data.QuickdrawAced == 1, 
                                    Duration = v926.data.Duration or nil, 
                                    IgnoreArmor = v926.data.IgnoreArmor or nil, 
                                    HitboxInfo = v926.data.HitboxInfo or nil, 
                                    GunData = v926.data
                                };
                                v38.new(v952);
                                l_Remotes_0.Bullet:FireServer(v952);
                            end;
                        elseif v926.data.FireMode == "Burst" then
                            local v953 = {
                                StartPosition = v944, 
                                TargetPosition = v943, 
                                Direction = (v943 - v944).unit, 
                                BulletType = v926.data.BulletType, 
                                Speed = v926.data.BulletSpeed, 
                                Damage = v926.data.Damage, 
                                Knockback = v926.data.Knockback or v926.data.Damage * (v926.data.BulletsPerBurstOrShotgun > 0 and v926.data.BulletsPerBurstOrShotgun or 1) / 10, 
                                Explosive = v926.data.Explosive, 
                                Drop = v926.data.Drop or 0, 
                                Player = l_LocalPlayer_0, 
                                Character = l_LocalPlayer_0.Character, 
                                Model = v39.Current.tool, 
                                UseAmmo = true, 
                                IsCrit = v926.data.QuickdrawAced and v926.data.QuickdrawAced == 1, 
                                Duration = v926.data.Duration or nil, 
                                IgnoreArmor = v926.data.IgnoreArmor or nil, 
                                HitboxInfo = v926.data.HitboxInfo or nil, 
                                GunData = v926.data
                            };
                            v38.new(v953);
                            l_Remotes_0.Bullet:FireServer(v953);
                        elseif v926.data.FireMode:match("Saw") then
                            v755.t = v755.p + v926.pushdist;
                            local l_Children_2 = workspace.Map:GetChildren();
                            for _, v956 in pairs(workspace.Police:GetChildren()) do
                                table.insert(l_Children_2, v956);
                            end;
                            for _, v958 in pairs(workspace.Glass:GetChildren()) do
                                table.insert(l_Children_2, v958);
                            end;
                            for _, v960 in pairs(workspace.Citizens:GetChildren()) do
                                table.insert(l_Children_2, v960);
                            end;
                            if workspace:FindFirstChild("Cameras") then
                                for _, v962 in pairs(workspace.Cameras:GetChildren()) do
                                    table.insert(l_Children_2, v962);
                                end;
                            end;
                            local l_workspace_PartOnRayWithWhitelist_3, _ = workspace:FindPartOnRayWithWhitelist(Ray.new(l_CurrentCamera_0.CFrame.p, l_CurrentCamera_0.CFrame.LookVector * 7), l_Children_2);
                            local v965 = "None";
                            if l_workspace_PartOnRayWithWhitelist_3 then
                                local v966 = FindHumanoid(l_workspace_PartOnRayWithWhitelist_3);
                                if v966 and not l_workspace_PartOnRayWithWhitelist_3:IsDescendantOf(workspace.Citizens) then
                                    local l_Damage_3 = v926.data.Damage;
                                    local v968 = true;
                                    if l_workspace_PartOnRayWithWhitelist_3.Name ~= "Head" then
                                        v968 = false;
                                    end;
                                    local v969 = v966 and v966.Parent:FindFirstChild("Type");
                                    v969 = v969 and v969.Value or "";
                                    local v970 = v969:match("Jugg") or v969:match("Dozer");
                                    l_Damage_3 = l_Damage_3 * if v968 then v969:match("Cloaker") and 4 or v970 and 5 or 1 else v969:match("Jugg") and 3 or 1;
                                    local v971 = v968 and Color3.fromRGB(255, 0, 0) or Color3.fromRGB(255, 255, 255);
                                    v153(v971, true);
                                    v238(v966.Parent, "-" .. string.format("%.1f", l_Damage_3), v971);
                                    local v972 = v926.tool or v926.currentmodel;
                                    l_Damage_0:FireServer("Damage", v926.tool, v966, l_Damage_3, l_workspace_PartOnRayWithWhitelist_3, v972.Name, l_Character_0.PrimaryPart.CFrame.lookVector * l_Damage_3);
                                    local l_lookVector_1 = l_Character_0.PrimaryPart.CFrame.lookVector;
                                    local v974 = Vector3.new(math.random(-10, 10) / 10, -0.8, math.random(-10, 10) / 10);
                                    l_HitEvent_0:Fire(l_workspace_PartOnRayWithWhitelist_3, l_workspace_PartOnRayWithWhitelist_3.Position, -l_lookVector_1 + v974, -l_lookVector_1 + v974, 10, true, "Flesh", false, nil, "Front", nil);
                                    v965 = "Person";
                                else
                                    print(v926.tool);
                                    l_Remotes_0.HitObject:FireServer(v926.tool, l_workspace_PartOnRayWithWhitelist_3, false, nil, nil, l_Character_0.PrimaryPart.CFrame.lookVector * 56, 56);
                                    local v975 = false;
                                    if l_workspace_PartOnRayWithWhitelist_3.Parent.Name == "DepositBox" then
                                        v975 = "Deposit";
                                    end;
                                    v965 = v975;
                                    if l_workspace_PartOnRayWithWhitelist_3:IsDescendantOf(workspace.Citizens) then
                                        v965 = "Person";
                                    elseif l_workspace_PartOnRayWithWhitelist_3.Parent.Name == "Door" then
                                        v965 = "Door";
                                    end;
                                end;
                            end;
                            l_Remotes_0.Bullet:FireServer({
                                Model = v39.Current.tool, 
                                Character = l_LocalPlayer_0.Character, 
                                SawData = v965
                            });
                        else
                            v38.new(v948);
                            l_Remotes_0.Bullet:FireServer(v948);
                        end;
                        local l_Muzzle_0 = v926.currentmodel.Muzzle;
                        if l_Muzzle_0 then
                            for _, v978 in pairs(l_Muzzle_0:GetChildren()) do
                                if v978 then
                                    if v978:IsA("Attachment") and v978.Name == "FX" then
                                        for _, v980 in v978:GetChildren() do
                                            if v980:IsA("ParticleEmitter") then
                                                v980:Emit(v980.Rate);
                                            end;
                                        end;
                                    elseif l_Value_3 == 2 and v978:IsA("ParticleEmitter") then
                                        v978:Emit(v978.Rate);
                                    elseif l_Value_3 == 2 and (v978:IsA("PointLight") or v978:IsA("SpotLight")) then
                                        spawn(function() --[[ Line: 4106 ]]
                                            v978.Enabled = true;
                                            wait();
                                            v978.Enabled = false;
                                        end);
                                    elseif l_Value_3 == 2 and v978:IsA("Smoke") then
                                        spawn(function() --[[ Line: 4112 ]]
                                            v978.Enabled = true;
                                            wait(0.1);
                                            v978.Enabled = false;
                                        end);
                                    elseif v978:IsA("Sound") then
                                        if v978.Looped then
                                            local l_ShotEnd_0 = v978:FindFirstChild("ShotEnd");
                                            v978.Playing = true;
                                            if l_ShotEnd_0 then
                                                l_ShotEnd_0:Stop();
                                            end;
                                            v926.CurrentSound = v978;
                                        else
                                            local v982 = v978:Clone();
                                            v982.Parent = l_Muzzle_0;
                                            v982.PlayOnRemove = true;
                                            v982:Destroy();
                                        end;
                                    end;
                                end;
                            end;
                            if v926.data.Casing and not v926.data.ManualCasingEjection then
                                v926:dropcasing();
                            end;
                        end;
                        v759 = false;
                        if v926.data.QuickdrawAced and v926.data.QuickdrawAced == 1 then
                            v926.data.QuickdrawAced = 0;
                        end;
                        delay(v926.data.FireDelay + 0, function() --[[ Line: 4151 ]]
                            v759 = true;
                        end);
                        v926:updateBolt();
                        if #v926.data.PostShootSequence > 0 then
                            v926:postshoot();
                        end;
                        return;
                    end;
                end;
            end;
            l_l_Data_0_0.updateBolt = function(v983, v984) --[[ Line: 4162 ]] --[[ Name: updateBolt ]]
                local l_Value_14 = l_Character_0:FindFirstChild(v983.AmmoType .. "Ammo").Value;
                v983.BoltTweens = v983.BoltTweens or {};
                v983.BoltsPlaying = v983.BoltsPlaying or {};
                local v986 = v983.data.BoltList or {};
                if not v986.Bolt then
                    v986.Bolt = {
                        BoltOffset = v983.data.BoltOffset, 
                        BoltLoop = v983.data.BoltLoop, 
                        BoltLock = v983.data.BoltLock, 
                        BoltStay = v983.data.BoltStay, 
                        BoltInstaReturn = v983.data.BoltInstaReturn, 
                        BoltDuration = v983.data.BoltDuration, 
                        BoltStartCF = v983.data.BoltStartCF
                    };
                end;
                for v987, v988 in v986 do
                    local v989 = v983.WeldList[v987] or v983.model:FindFirstChild("Handle") and v983.model.Handle:FindFirstChild(v987 .. "_Weld");
                    if v989 then
                        local l_BoltOffset_0 = v988.BoltOffset;
                        local l_BoltLoop_0 = v988.BoltLoop;
                        local v992 = v988.BoltInstaReturn or false;
                        local v993 = l_Value_14 - 1 <= 0 and (v988.BoltLock or false);
                        local v994 = v984 or v988.BoltDuration or v983.data.FireDelay * 0.8;
                        v993 = v988.BoltStay or v993;
                        local v995 = v983.BoltTweens[v987];
                        if v995 and not l_BoltLoop_0 then
                            v995:Cancel();
                            v995:Destroy();
                            v983.BoltTweens[v987] = nil;
                        end;
                        if l_BoltOffset_0 and (not l_BoltLoop_0 or not v983.BoltsPlaying[v987]) then
                            v983.BoltsPlaying[v987] = l_BoltLoop_0;
                            if l_BoltLoop_0 then
                                v983.BoltPlaying = true;
                            end;
                            if v989 then
                                local l_v989_Attribute_0 = v989:GetAttribute("DefaultC1");
                                if not l_v989_Attribute_0 then
                                    v989:SetAttribute("DefaultC1", v989.C1);
                                    l_v989_Attribute_0 = v989.C1;
                                end;
                                v989.C1 = v988.BoltStartCF or l_v989_Attribute_0;
                                v983.BoltTweens[v987] = l_TweenService_0:Create(v989, TweenInfo.new(v994, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, l_BoltLoop_0 and -1 or 0, not v993 and not v992), {
                                    C1 = l_BoltOffset_0:Inverse()
                                });
                                v983.BoltTweens[v987]:Play();
                                do
                                    local l_l_v989_Attribute_0_0 = l_v989_Attribute_0;
                                    if v992 then
                                        local v998 = v983.BoltTweens[v987];
                                        v998.Completed:Once(function() --[[ Line: 4235 ]]
                                            if v983.BoltTweens[v987] == v998 then
                                                v989.C1 = l_l_v989_Attribute_0_0;
                                            end;
                                        end);
                                    end;
                                end;
                            end;
                        end;
                    end;
                end;
            end;
            l_l_Data_0_0.dropcasing = function(v999, v1000) --[[ Line: 4288 ]] --[[ Name: dropcasing ]]
                if not l_Options_1:WaitForChild("Graphics"):WaitForChild("Effects").Value then
                    return;
                else
                    local l_Casing_0 = v999.data.Casing;
                    local v1002 = v999.currentmodel and (v999.currentmodel:FindFirstChild("Chamber") or v999.currentmodel:FindFirstChild("Muzzle"));
                    if l_Casing_0 and v1002 then
                        v1000 = v1000 or l_Assets_0.Effects.Casings:FindFirstChild(l_Casing_0) or l_Assets_0.Effects.Casings:FindFirstChild("Default");
                        if v1000 then
                            v1000 = v1000:Clone();
                            v1000.CollisionGroup = "Ammo";
                            v1000.CanCollide = false;
                            v1000.Parent = workspace.CurrentCamera;
                            v1000:PivotTo(v1002:GetPivot() * (v999.data.CasingOffset or l_new_0()));
                            local v1003 = v999.data.CasingVelocity or 10;
                            local v1004 = typeof(v1003) == "NumberRange" and math.random(v1003.Min, v1003.Max) or v1003;
                            v1000.AssemblyLinearVelocity = v1000.CFrame.RightVector.Unit * v1004;
                            v1000.AssemblyAngularVelocity = v999.data.AngularVelocity or Vector3.new(0, 45, 0, 0);
                            local l_Sound_0 = v1000:FindFirstChild("Sound");
                            if l_Sound_0 then
                                task.delay(l_Sound_0:GetAttribute("Delay") or 0.4, function() --[[ Line: 4312 ]]
                                    l_Sound_0:Play();
                                    task.wait(2);
                                    v1000:Destroy();
                                end);
                            end;
                        end;
                    end;
                    return;
                end;
            end;
            local v1006 = tick();
            l_l_Data_0_0.setshooting = function(v1007, v1008) --[[ Line: 4328 ]] --[[ Name: setshooting ]]
                local v1009 = v1007.currentmodel or v1007.model;
                local v1010 = v1009 and v1009:FindFirstChild("Muzzle");
                local v1011 = v1010 and v1010:FindFirstChild("Sound");
                v1011 = v1007.CurrentSound or v1011;
                local v1012 = v1007.AmmoType and l_Character_0:FindFirstChild(v1007.AmmoType .. "Ammo");
                v1012 = v1012 and v1012.Value;
                if not v1008 and v1011 and v1011.Looped and v1011.Playing then
                    v1011:Stop();
                    v1007.CurrentSound = nil;
                    local v1013 = v1010 and v1010:FindFirstChild("ShotEnd", true);
                    if v1013 then
                        v1013:Play();
                    end;
                end;
                if not v1008 and v1007.BoltTweens and v1007.data.BoltLoop and v1007.BoltPlaying then
                    if v1007.BoltTweens then
                        for _, v1015 in v1007.BoltTweens do
                            v1015:Cancel();
                        end;
                    end;
                    v1007.BoltsPlaying = {};
                    v1007.BoltPlaying = false;
                    if v1007.data.BoltFade then
                        local v1016 = v1007.WeldList.Bolt and v1007.model:FindFirstChild("Handle") and v1007.model.Handle:FindFirstChild("Bolt_Weld");
                        local l_BoltOffset_1 = v1007.data.BoltOffset;
                        if v1016 then
                            v1007.BoltTweens.Bolt = l_TweenService_0:Create(v1016, TweenInfo.new(v1007.data.BoltFade, Enum.EasingStyle.Back, Enum.EasingDirection.Out, 0), {
                                C1 = v1016.C1 * l_BoltOffset_1:Inverse()
                            });
                            v1007.BoltTweens.Bolt:Play();
                        end;
                    end;
                end;
                if not v1007.reloading and not v1007.CancelReload and not v70 then
                    local v1018 = v1007.data.FireMode or "Semi";
                    if not v1008 then
                        v25 = 0;
                        v221.s = 20;
                        if v1007.data.WeaponType == "Gun" and (v1018 == "Semi" or v1018 == "Shotgun" or v1018 == "Saw") then
                            delay(v1007.data.FireDelay, function() --[[ Line: 4382 ]]
                                if tick() - v1006 >= v1007.data.FireDelay then
                                    v220.s = 15;
                                end;
                            end);
                        else
                            v220.s = 15;
                        end;
                    else
                        v1006 = tick();
                        v221.s = 5;
                    end;
                    if v1018:match("Auto") or v1018 == "AutoShotgun" then
                        if v1008 then
                            v1007.shooting = true;
                            v220.s = v1007.data.RecoilSpeed * 2.5;
                            return;
                        else
                            v1007.shooting = false;
                            v220.s = 20;
                            v239();
                            return;
                        end;
                    elseif v1018 == "Semi" or v1018 == "Shotgun" or v1018 == "Saw" then
                        if v1008 then
                            v1007:shoot();
                            v220.s = v1007.data.RecoilSpeed * 2.5;
                            return;
                        end;
                    elseif v1018 == "Burst" then
                        if v1008 and not v1007.shooting then
                            v1007.shooting = true;
                            v220.s = v1007.data.RecoilSpeed * 2.5;
                            for v1019 = 1, v1007.data.BulletsPerBurstOrShotgun do
                                if not v1007:shoot(v1019 > 1) then
                                    wait(0.1);
                                else
                                    break;
                                end;
                            end;
                            task.wait(v1007.data.FireDelay);
                            v1007.shooting = false;
                            return;
                        elseif not v1008 then
                            v220.s = 15;
                            return;
                        end;
                    end;
                elseif v1008 and v1007.reloading and not v1007.grenade and v1007.CanCancelReload and v1012 > 0 and not v1007.CancelReload then
                    v1007.CancelReload = true;
                    v1007:setshooting(false);
                end;
            end;
            l_l_Data_0_0.animationaction = function(v1020, v1021, v1022, v1023) --[[ Line: 4448 ]] --[[ Name: animationaction ]]
                v1023 = v1023 or 1;
                v1022 = v1022 or {};
                local v1024 = {};
                if typeof(v1021) == "table" then
                    v1024 = v1021;
                    v1021 = v1024.Action;
                end;
                if v1021 then
                    local l_Mag_0 = v1020.model:FindFirstChild("Mag");
                    local l_Handle_0 = v1020.model:FindFirstChild("Handle");
                    local l_Bolt_0 = v1020.model:FindFirstChild("Bolt");
                    local v1028 = nil;
                    v1028 = if v1020.WeldList then v1020.WeldList.Bolt else l_Bolt_0 and l_Bolt_0:FindFirstChild("Bolt_Weld") or l_Handle_0 and l_Handle_0:FindFirstChild("Bolt_Weld");
                    local v1029 = v1021:match("Recoil") and v1024;
                    if v1021:match("ModelRestore") or v1021:match("ModelHide") then
                        v1020:setvisible(v1021:match("Restore"));
                    elseif v1021:match("BulletRestore") or v1021:match("BulletHide") then
                        local v1030, v1031;
                        v1029, v1030, v1031 = v39.Current:getAmmo();
                        local v1032 = math.min(v1029 + v1030, v1031);
                        local v1033 = v1021:match("Restore") or false;
                        if v1020.data.HideBullets then
                            for _, v1035 in v1020.Bullets do
                                local v1036 = v1035.Name:match("%d+");
                                v1036 = v1036 and tonumber(v1036);
                                if v1036 and (v1033 and v1036 <= v1032 or not v1033) then
                                    if v1033 then

                                    end;
                                    v1020:setvisible(v1033, v1035);
                                end;
                            end;
                        end;
                    elseif v1021:match("Trail") then
                        v1029 = v1021:match("Enable") or false;
                        local l_FirstChild_3 = v1020.model:FindFirstChild("BladeTrail", true);
                        if l_FirstChild_3 then
                            l_FirstChild_3.Enabled = v1029;
                        end;
                    elseif v1021 == "ResetPostShooting" then
                        v1020.waspostshooting = false;
                    elseif v1021 == "Show" or v1021 == "Hide" then
                        v1029 = v1021 == "Show" and 0 or 1;
                        local l_Target_0 = v1024.Target;
                        if l_Target_0 then
                            if typeof(l_Target_0) == "string" then
                                l_Target_0 = {
                                    l_Target_0
                                };
                            end;
                            for _, v1040 in l_Target_0 do
                                local l_FirstChild_4 = v1020.model:FindFirstChild(v1040);
                                if l_FirstChild_4:IsA("BasePart") then
                                    local l_l_FirstChild_4_Descendants_0 = l_FirstChild_4:GetDescendants();
                                    table.insert(l_l_FirstChild_4_Descendants_0, l_FirstChild_4);
                                    for _, v1044 in l_l_FirstChild_4_Descendants_0 do
                                        if v1044:IsA("BasePart") or v1044:IsA("Decal") or v1044:IsA("Texture") then
                                            v1044.LocalTransparencyModifier = v1029;
                                            if v1044.Transparency == 1 then
                                                v1044.Transparency = v1029;
                                            end;
                                        end;
                                    end;
                                end;
                            end;
                        end;
                    elseif v1021 == "Drop" then
                        v1029 = v1024.Target;
                        if v1029 then
                            if typeof(v1029) == "string" then
                                v1029 = {
                                    v1029
                                };
                            end;
                            for _, v1046 in v1029 do
                                local l_FirstChild_5 = v1020.model:FindFirstChild(v1046);
                                if l_FirstChild_5 and l_FirstChild_5:IsA("BasePart") then
                                    local v1048 = l_FirstChild_5:Clone();
                                    v1048.CanCollide = false;
                                    v1048.CFrame = l_FirstChild_5.CFrame;
                                    local l_l_FirstChild_5_Descendants_0 = l_FirstChild_5:GetDescendants();
                                    table.insert(l_l_FirstChild_5_Descendants_0, l_FirstChild_5);
                                    for _, v1051 in l_l_FirstChild_5_Descendants_0 do
                                        if v1051:IsA("BasePart") or v1051:IsA("Decal") or v1051:IsA("Texture") then
                                            v1051.LocalTransparencyModifier = 1;
                                        end;
                                    end;
                                    l_l_FirstChild_5_Descendants_0 = v1048:GetDescendants();
                                    table.insert(l_l_FirstChild_5_Descendants_0, v1048);
                                    for _, v1053 in l_l_FirstChild_5_Descendants_0 do
                                        if v1053:IsA("BasePart") then
                                            game:GetService("PhysicsService"):SetPartCollisionGroup(v1053, "Ammo");
                                            v1053.CanCollide = true;
                                        elseif v1053:IsA("WeldConstraint") then
                                            v1053.Enabled = true;
                                        end;
                                    end;
                                    v1048.Parent = workspace:WaitForChild("Tracers");
                                    local v1054 = v1024.Direction or "Front";
                                    local v1055 = v1024.UnitDirection or nil;
                                    local v1056 = v1024.Force or 25;
                                    if v1024.Direction then
                                        local l_CFrame_3 = workspace.CurrentCamera.CFrame;
                                        local v1058 = v1054:match("Right") and l_CFrame_3.RightVector or v1054:match("Left") and -l_CFrame_3.RightVector or l_CFrame_3.LookVector;
                                        if v1055 then
                                            v1058 = l_new_0(l_CFrame_3.Position, (l_CFrame_3 * v1055).Position).LookVector.Unit;
                                        end;
                                        v1048.Velocity = v1058 * v1056;
                                    else
                                        v1048.Velocity = l_new_1();
                                    end;
                                    game.Debris:AddItem(v1048, 4);
                                end;
                            end;
                        end;
                    elseif v1021 == "MagDrop" and l_Mag_0 then
                        if not v739 then
                            v1029 = l_Mag_0:Clone();
                            v1029.CanCollide = false;
                            v1029.CFrame = l_Mag_0.CFrame;
                            v1029:ClearAllChildren();
                            v1029.LocalTransparencyModifier = 0;
                            v739 = v1029;
                            local l_Motor6D_0 = Instance.new("Motor6D");
                            l_Motor6D_0.Part0 = v1029;
                            l_Motor6D_0.Part1 = v1020.leftarm;
                            l_Motor6D_0.Name = "MagWeld";
                            l_Motor6D_0.C1 = v1020.leftarm.CFrame:toObjectSpace(l_Mag_0.CFrame);
                            l_Motor6D_0.Parent = v1020.leftarm;
                            l_Mag_0.LocalTransparencyModifier = 1;
                            v1029.Parent = workspace;
                            if v1020.leftarm:FindFirstChild("MagWeld") then
                                v1020.leftarm:FindFirstChild("MagWeld"):Destroy();
                            end;
                            v739:ClearAllChildren();
                            game:GetService("PhysicsService"):SetPartCollisionGroup(v739, "Ammo");
                            v739.CanCollide = true;
                            v739.Velocity = l_new_1();
                            v739.Parent = workspace;
                            game.Debris:AddItem(v739, 5);
                            v739 = nil;
                        else
                            if v1020.leftarm:FindFirstChild("MagWeld") then
                                v1020.leftarm:FindFirstChild("MagWeld"):Destroy();
                            end;
                            if v739 and v739.Parent then
                                v739:ClearAllChildren();
                                v739.CanCollide = true;
                                v739.Velocity = l_new_1();
                                v739.Parent = workspace;
                            end;
                            game.Debris:AddItem(v739, 5);
                            v739 = nil;
                        end;
                    elseif v1021 == "MagHold" and l_Mag_0 then
                        v1029 = l_Mag_0:Clone();
                        v1029.CanCollide = false;
                        v1029.CFrame = l_Mag_0.CFrame;
                        local l_v1029_FirstChild_0 = v1029:FindFirstChild(v1029.Name .. "_Weld");
                        if l_v1029_FirstChild_0 then
                            l_v1029_FirstChild_0:Destroy();
                        end;
                        v1029.LocalTransparencyModifier = 0;
                        v739 = v1029;
                        local l_Motor6D_1 = Instance.new("Motor6D");
                        l_Motor6D_1.Part0 = v1029;
                        l_Motor6D_1.Part1 = v1020.leftarm;
                        l_Motor6D_1.Name = "MagWeld";
                        l_Motor6D_1.C1 = v1020.leftarm.CFrame:toObjectSpace(l_Mag_0.CFrame);
                        l_Motor6D_1.Parent = v1020.leftarm;
                        l_Mag_0.LocalTransparencyModifier = 1;
                        v1029.Parent = workspace;
                    elseif v1021 == "MagCreate" then
                        v1029 = l_Mag_0:Clone();
                        v1029.CanCollide = false;
                        v1029.CFrame = l_Mag_0.CFrame;
                        local l_v1029_FirstChild_1 = v1029:FindFirstChild(v1029.Name .. "_Weld");
                        if l_v1029_FirstChild_1 then
                            l_v1029_FirstChild_1:Destroy();
                        end;
                        v1029.LocalTransparencyModifier = 0;
                        v739 = v1029;
                        local l_Weld_0 = Instance.new("Weld");
                        l_Weld_0.Part0 = v1029;
                        l_Weld_0.Part1 = v1020.leftarm;
                        l_Weld_0.C1 = v1020.data.MagInHand;
                        l_Weld_0.Parent = v1020.leftarm;
                        l_Weld_0.Name = "MagWeld";
                        v1029.Parent = workspace;
                    elseif v1021 == "MagRestore" and l_Mag_0 then
                        v1029 = (v1024.Duration or 0) / v1023;
                        if v1029 and v739 then
                            local l_MagWeld_0 = v1020.leftarm:FindFirstChild("MagWeld");
                            if l_MagWeld_0 then
                                l_TweenService_0:Create(l_MagWeld_0, TweenInfo.new(v1029), {
                                    C1 = v1020.leftarm.CFrame:ToObjectSpace(l_Mag_0.CFrame)
                                }):Play();
                                task.delay(v1029, function() --[[ Line: 4729 ]]
                                    v739:Destroy();
                                    v739 = nil;
                                    l_Mag_0.LocalTransparencyModifier = 0;
                                end);
                            end;
                        elseif v739 then
                            v739:Destroy();
                            v739 = nil;
                        end;
                        if not v1029 then
                            l_Mag_0.LocalTransparencyModifier = 0;
                        end;
                    elseif v1021 == "MagThrow" then
                        v1029 = v1024.Direction or "Front";
                        local v1065 = v1024.UnitDirection or nil;
                        local v1066 = v1024.Force or 25;
                        if not v739 or v1024.ThrowOriginal then
                            if v1020.leftarm:FindFirstChild("MagWeld") and not v1024.ThrowOriginal then
                                v1020.leftarm:FindFirstChild("MagWeld"):Destroy();
                            end;
                            local v1067 = l_Mag_0:Clone();
                            v1067:ClearAllChildren();
                            local l_CFrame_4 = workspace.CurrentCamera.CFrame;
                            local v1069 = v1029:match("Right") and l_CFrame_4.RightVector or v1029:match("Left") and -l_CFrame_4.RightVector or l_CFrame_4.LookVector;
                            if v1065 then
                                v1069 = l_new_0(l_CFrame_4.Position, (l_CFrame_4 * v1065).Position).LookVector.Unit;
                            end;
                            v1067.Velocity = v1069 * v1066;
                            game:GetService("PhysicsService"):SetPartCollisionGroup(v1067, "Ammo");
                            v1067.LocalTransparencyModifier = 0;
                            v1067.CFrame = l_Mag_0.CFrame;
                            v1067.CanCollide = true;
                            game.Debris:AddItem(v1067, 5);
                            l_Mag_0.LocalTransparencyModifier = 1;
                            v1067.Parent = workspace;
                        else
                            if v1020.leftarm:FindFirstChild("MagWeld") then
                                v1020.leftarm:FindFirstChild("MagWeld"):Destroy();
                            end;
                            v739:ClearAllChildren();
                            local l_CFrame_5 = workspace.CurrentCamera.CFrame;
                            local v1071 = v1029:match("Right") and l_CFrame_5.RightVector or v1029:match("Left") and -l_CFrame_5.RightVector or l_CFrame_5.LookVector;
                            if v1065 then
                                v1071 = l_new_0(l_CFrame_5.Position, (l_CFrame_5 * v1065).Position).LookVector.Unit;
                            end;
                            v739.Velocity = v1071 * v1066;
                            v739.CanCollide = true;
                            game.Debris:AddItem(v739, 5);
                            v739.Parent = workspace;
                            v739 = nil;
                        end;
                    elseif v1021 == "MagDisappear" then
                        if not v739 then
                            l_Mag_0.LocalTransparencyModifier = 1;
                        else
                            v739:Destroy();
                        end;
                    elseif v1021 == "MagShow" then
                        l_Mag_0.LocalTransparencyModifier = 0;
                    elseif (v1021 == "BoltRestore" or v1021 == "BoltPull") and v1028 then
                        v1029 = v1028:GetAttribute("DefaultC1") or CFrame.new();
                        local v1072 = v1021:match("Pull") and v1020.data.BoltOffset or v1029;
                        local v1073 = v1020.data.BoltDuration or v1020.data.FireDelay * 0.5;
                        if v1020.BoltTween then
                            v1020.BoltTween:Cancel();
                            v1020.BoltTween:Destroy();
                            v1020.BoltTween = nil;
                        end;
                        v1020.BoltTween = l_TweenService_0:Create(v1028, TweenInfo.new(v1073 / 2, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0, false), {
                            C1 = v1072
                        });
                        v1020.BoltTween:Play();
                    elseif v1021 == "WeldOffset" and v1024 then
                        v1029 = v1024.Target;
                        local v1074 = v1024.CF or l_new_0();
                        local v1075 = (v1024.Duration or v1022[7] or 0.1) / v1023;
                        local l_Handle_1 = v1020.currentmodel:FindFirstChild("Handle");
                        local l_FirstChild_6 = v1020.currentmodel:FindFirstChild(v1029);
                        v1029 = if v1020.WeldList then v1029 and v1020.WeldList[v1029] else v1029 and (l_FirstChild_6 and l_FirstChild_6:FindFirstChild(v1029 .. "_Weld") or l_Handle_1 and l_Handle_1:FindFirstChild(v1029 .. "_Weld"));
                        if v1029 and (v1029:IsA("Motor6D") or v1029:IsA("Weld")) then
                            local v1078 = typeof(v1074) == "CFrame" and v1074 or v1029:GetAttribute("DefaultC1") or l_new_0();
                            l_TweenService_0:Create(v1029, TweenInfo.new(v1075), {
                                C1 = v1078
                            }):Play();
                        end;
                    elseif v1021:match("Particle") and v1024 and v1024.Target then
                        v1029 = v1024.Target;
                        local v1079 = v1020.WeldList and v1020.WeldList[v1029];
                        v1079 = v1079 and v1079.Part1 or v1020.currentmodel:FindFirstChild(v1024.Target, true);
                        print(v1079);
                        if v1079 and v1079:IsA("BasePart") then
                            for _, v1081 in v1079:GetDescendants() do
                                if v1081:IsA("ParticleEmitter") then
                                    if v1021:match("Emit") then
                                        v1081:Emit(v1081:GetAttribute("EmitCount") or v1081.Rate);
                                    else
                                        v1081.Enabled = v1021:match("Enable") and true or false;
                                    end;
                                end;
                            end;
                        end;
                    end;
                    if v1021 == "EjectCasing" or v1024 and v1024.EjectCasing then
                        v1020:dropcasing();
                    end;
                end;
            end;
            l_l_Data_0_0.setinspecting = function(v1082, v1083) --[[ Line: 4861 ]] --[[ Name: setinspecting ]]
                if v1083 and not v1082.shieldDeployed and not v1082.aiming and not v1082.inspecting and v1082.data.InspectInfo and not v1082.reloading and not v1082.grenade and not v1082.postshooting and not v1082.shooting and not v36.Sprinting then
                    v1082.inspecting = true;
                    local l_status_2, l_result_2 = pcall(function() --[[ Line: 4866 ]]
                        for _, v1085 in pairs(v1082.data.InspectInfo) do
                            if v1085[7] > 0 and not v1082.CancelReload then
                                local v1086, v1087, v1088 = v1085[4]:toEulerAnglesXYZ();
                                local v1089, v1090, v1091 = v1085[2]:toEulerAnglesXYZ();
                                v761.t = v1085[1].p;
                                v780.t = l_new_1(v1089, v1090, v1091);
                                v762.t = v1085[3].p;
                                v781.t = l_new_1(v1086, v1087, v1088);
                                v761.s = v1085[6];
                                v781.s = v1085[6] * 1;
                                v780.s = v1085[6] * 1;
                                v762.s = v1085[6] * 1;
                                local v1092, v1093, v1094 = v1085[5]:toEulerAnglesXYZ();
                                v779.t = l_new_1(v1092, v1093, v1094);
                                v779.s = v1085[6];
                                v785.t = v1085[5].p;
                                v785.s = v1085[6] * 1;
                                local v1095 = v1085[8];
                                local v1096 = v1085[9];
                                if v1096 and v1096 ~= "" then
                                    v1082:playsound(v1096);
                                end;
                                if v1095 then
                                    v1082:animationaction(v1095, v1085);
                                end;
                                local v1097 = tick();
                                repeat
                                    task.wait();
                                until tick() - v1097 >= v1085[7] or v1082.CancelInspect or v1082.puttingAway;
                            end;
                        end;
                    end);
                    if not l_status_2 then
                        warn(l_result_2);
                    end;
                    if not v1082.puttingAway then
                        v761.t = v1082.data.RightArmOffset.p;
                        v762.t = v1082.data.LeftArmOffset.p;
                        v785.t = v1082.data.WeaponOffset.p;
                        v762.s = 100;
                        v781.s = 100;
                        v761.s = 100;
                        v780.s = 100;
                        v785.s = 100;
                        v779.s = 100;
                        v780.t = v774;
                        v781.t = v773;
                        v779.t = l_new_1();
                        wait(0.1);
                        v762.s = 1;
                        v781.s = 1;
                        v761.s = 1;
                        v780.s = 1;
                        v779.s = 1;
                        v785.s = 1;
                    end;
                    v1082.inspecting = false;
                    v1082.CancelInspect = false;
                    return;
                else
                    if v1083 == false and v1082.inspecting then
                        v1082.CancelInspect = true;
                        task.wait(0.2);
                    end;
                    return;
                end;
            end;
            l_l_Data_0_0.playsound = function(v1100, v1101) --[[ Line: 4959 ]] --[[ Name: playsound ]]
                local v1102 = typeof(v1101) == "table" and v1101 or {};
                local v1103 = typeof(v1101) == "string" and v1101 or v1101.Name;
                local l_Handle_2 = v1100.currentmodel:FindFirstChild("Handle");
                local v1105 = l_Handle_2 and l_Handle_2:FindFirstChild(v1103);
                if v1105 and v1105:IsA("Sound") then
                    local v1106 = v1105:Clone();
                    v1106.Name = "CLONE_" .. v1105.Name;
                    v1106.Parent = l_Handle_2;
                    v1106.TimePosition = v1102.TimePosition or v1106.TimePosition;
                    v1106.PlaybackSpeed = v1102.PlaybackSpeed or v1106.PlaybackSpeed;
                    task.delay(v1102.Delay or 0, function() --[[ Line: 4973 ]]
                        v1106:Play();
                        if v1102.Duration then
                            task.delay(v1102.Duration, function() --[[ Line: 4976 ]]
                                v1106:Stop();
                            end);
                        end;
                    end);
                    local v1107 = nil;
                    do
                        local l_v1107_0 = v1107;
                        l_v1107_0 = v1106.Stopped:Connect(function() --[[ Line: 4982 ]]
                            v1106:Destroy();
                            l_v1107_0:Disconnect();
                        end);
                    end;
                end;
            end;
            l_l_Data_0_0.reloaddata = function(v1109) --[[ Line: 4990 ]] --[[ Name: reloaddata ]]
                local l_l_Data_0_1 = l_Data_0;
                l_l_Data_0_1 = v0 and l_l_Data_0_1:Clone() or l_l_Data_0_1;
                local v1111 = require(l_l_Data_0_1);
                if v0 then
                    l_l_Data_0_1:Destroy();
                end;
                v1109.data = v1111;
                l_v736_0 = v1109.data;
                l_WeaponFix_0 = v1109.data.WeaponFix;
                l_SprintOffset_0 = v1109.data.SprintOffset;
                l_l_l_BaseSpeed_0_2_0 = v1109.data.MainOffset;
                v785.t = v1109.data.WeaponOffset.p;
                if v1109.data.WeaponOffset2 then
                    v791.t = v1109.data.WeaponOffset2.p;
                end;
                local v1112;
                l_l_Data_0_1, v1111, v1112 = (v1109.data.WeaponOffsetAngle or l_Angles_0(0, 0, 0)):toEulerAnglesXYZ();
                v789.t = l_new_1(l_l_Data_0_1, v1111, v1112);
                if v1109.data.WeaponOffsetAngle2 then
                    local v1113, v1114, v1115 = (v1109.data.WeaponOffsetAngle2 or l_Angles_0(0, 0, 0)):toEulerAnglesXYZ();
                    v795.t = l_new_1(v1113, v1114, v1115);
                end;
                local v1116, v1117, v1118 = v1109.data.LeftArmOffsetAngle:toEulerAnglesXYZ();
                local v1119, v1120, v1121 = v1109.data.RightArmOffsetAngle:toEulerAnglesXYZ();
                local v1122 = l_new_1(v1116, v1117, v1118);
                local v1123 = l_new_1(v1119, v1120, v1121);
                l_l_l_Bullet_0_0_0 = v1109.data.MainOffsetAngle or l_new_0();
                v762.t = v1109.data.LeftArmOffset.p;
                v761.t = v1109.data.RightArmOffset.p;
                v781.t = v1122;
                v780.t = v1123;
                local l_RightArmEquipOffsetAngle_1 = v1109.data.RightArmEquipOffsetAngle;
                local l_LeftArmEquipOffsetAngle_1 = v1109.data.LeftArmEquipOffsetAngle;
                v777 = l_RightArmEquipOffsetAngle_1 and l_new_1(l_RightArmEquipOffsetAngle_1:toEulerAnglesXYZ()) or Vector3.new(-1.3962633609771729, 0, 0, 0);
                v778 = l_LeftArmEquipOffsetAngle_1 and l_new_1(l_LeftArmEquipOffsetAngle_1:toEulerAnglesXYZ()) or Vector3.new(-1.0471975803375244, 0, 0.027415568009018898, 0);
                if v1109.FiremodeIndex then
                    v1109:switchFiremode(v1109.FiremodeIndex);
                end;
                v1109:setinspecting(false);
                print("RELOADING WEAPON DATA!");
            end;
            l_l_Data_0_0.getAmmo = function(v1126) --[[ Line: 5039 ]] --[[ Name: getAmmo ]]
                if v1126.AmmoType then
                    local l_Value_15 = l_Character_0:FindFirstChild(v1126.AmmoType .. "Ammo").Value;
                    local l_Value_16 = l_Character_0:FindFirstChild(v1126.AmmoType .. "AmmoMax"):FindFirstChild("MagCapacity").Value;
                    return l_Value_15, l_Character_0:FindFirstChild(v1126.AmmoType .. "AmmoMax").Value, l_Value_16;
                else
                    return;
                end;
            end;
            l_l_Data_0_0.setreloading = function(v1129, _) --[[ Line: 5048 ]] --[[ Name: setreloading ]]
                if v1129.postshooting or v70 or not v72 or v1129.reloading then
                    print(v1129.postshooting, v70, v72, v1129.reloading);
                    return;
                elseif v1129.inspecting then
                    v1129.CancelInspect = true;
                    return;
                else
                    if not v1129.reloading then
                        v1129:setshooting(false);
                        v1129.reloading = true;
                        local v1131 = v113("G", "J");
                        if v36.Sprinting and not v1131 or v36.Crouching then
                            v36:SetSprint(false);
                        end;
                        v1129:setaim(false);
                        local v1132 = false;
                        local v1133 = false;
                        while l_Character_0:FindFirstChild(v1129.AmmoType .. "Ammo").Value < l_Character_0:FindFirstChild(v1129.AmmoType .. "AmmoMax"):FindFirstChild("MagCapacity").Value and l_Character_0:FindFirstChild(v1129.AmmoType .. "AmmoMax").Value > 0 and not v1129.CancelReload and v72 do
                            v1132 = true;
                            v1133 = l_Character_0:FindFirstChild(v1129.AmmoType .. "Ammo").Value <= 0;
                            local v1134 = v1133 and "LongerReload" or "Reload";
                            local v1135 = v1133 and v1129.data.LongerReloadSequence or v1129.data.ReloadSequence;
                            local v1136 = v1129.data[v1134 .. "Time"] or v1129.data.ReloadTime;
                            local v1137 = 1;
                            if not v1136 then
                                v1136 = 0;
                                for _, v1139 in pairs(v1135) do
                                    v1136 = v1136 + (v1139[7] or 0);
                                end;
                            end;
                            v1136 = v1136 and v1136 / v760;
                            if v1136 then
                                local v1140 = 0;
                                for _, v1142 in pairs(v1135) do
                                    v1140 = v1140 + (v1142[7] or 0);
                                end;
                                v1137 = v1140 / v1136;
                                local v1143 = 0;
                                for _, v1145 in pairs(v1135) do
                                    v1143 = v1143 + (v1145[7] or 0) / v1137;
                                end;
                            end;
                            local v1146 = v1129.toolAnimations[v1134] or v1129.toolAnimations.Reload;
                            if v1146 then
                                v1146:Play();
                                v1146.Priority = Enum.AnimationPriority.Action2;
                                v1146:AdjustSpeed(v1146.Length / v1136);
                            end;
                            local _ = tick();
                            do
                                local l_v1137_0 = v1137;
                                local l_status_3, l_result_3 = pcall(function() --[[ Line: 5126 ]]
                                    for _, v1150 in pairs(v1135) do
                                        if v1150[7] > 0 and not v1129.CancelReload then
                                            local v1151, v1152, v1153 = v1150[4]:toEulerAnglesXYZ();
                                            local v1154, v1155, v1156 = v1150[2]:toEulerAnglesXYZ();
                                            v761.t = v1150[1].p;
                                            v780.t = l_new_1(v1154, v1155, v1156);
                                            v762.t = v1150[3].p;
                                            v781.t = l_new_1(v1151, v1152, v1153);
                                            v785.t = v1150[5].p;
                                            v761.s = v1150[6];
                                            v781.s = v1150[6] * l_v1137_0;
                                            v780.s = v1150[6] * l_v1137_0;
                                            v762.s = v1150[6] * l_v1137_0;
                                            v785.s = v1150[6] * l_v1137_0;
                                            local v1157 = v1150[8];
                                            local v1158 = v1150[9];
                                            if v1158 and v1158 ~= "" then
                                                v1129:playsound(v1158);
                                            end;
                                            if v1157 then
                                                v1129:animationaction(v1157, v1150, l_v1137_0);
                                            end;
                                            local v1159 = tick();
                                            repeat
                                                task.wait();
                                            until tick() - v1159 >= v1150[7] / l_v1137_0 or v1129.CancelReload or v1129.puttingAway;
                                        end;
                                    end;
                                end);
                                if not l_status_3 then
                                    warn(l_result_3);
                                end;
                                if v739 then
                                    v739:Destroy();
                                    v739 = nil;
                                end;
                                if not v1129.CancelReload and not v1129.puttingAway and v72 then
                                    local l_Value_17 = l_Character_0:FindFirstChild(v1129.AmmoType .. "Ammo").Value;
                                    l_Remotes_0.Reload:FireServer(v1129.tool.Name, v1129.ReloadType);
                                    if v1129.ReloadType == "Normal" then
                                        for _ = 1, 100 do
                                            wait();
                                            if l_Value_17 < l_Character_0:FindFirstChild(v1129.AmmoType .. "Ammo").Value then
                                                break;
                                            end;
                                        end;
                                    elseif l_Value_17 + 1 >= l_Character_0:FindFirstChild(v1129.AmmoType .. "AmmoMax"):FindFirstChild("MagCapacity").Value then
                                        --[[ close >= 8 ]]
                                        break;
                                    end;
                                end;
                            end;
                        end;
                        if v1129.data.ChamberSequence and v1133 and v1132 and #(v1129.data.ChamberSequence or v1129.data.PostShootSequence) > 0 and l_Character_0:FindFirstChild(v1129.AmmoType .. "Ammo").Value > 0 then
                            v1129:postshoot(true);
                        end;
                        if v739 then
                            v739:ClearAllChildren();
                            wait();
                            v739:Destroy();
                        end;
                        if v1129.data.HideBullets then
                            for _, v1165 in v1129.model:GetChildren() do
                                if v1165.Name:match("Bullet_") then
                                    local v1166 = v1165.Name:match("%d+");
                                    v1166 = v1166 and tonumber(v1166);
                                    if v1166 and v1166 <= l_Character_0:FindFirstChild(v1129.AmmoType .. "Ammo").Value then
                                        v1129:setvisible(true, v1165);
                                    end;
                                end;
                            end;
                        end;
                        if v1129.leftarm:FindFirstChild("MagWeld") then
                            v1129.leftarm:FindFirstChild("MagWeld"):Destroy();
                        end;
                        if v1129.data.QuickdrawAced and v1129.data.QuickdrawAced == 0 then
                            v1129.data.QuickdrawAced = 1;
                        end;
                        v761.t = v1129.data.RightArmOffset.p;
                        v762.t = v1129.data.LeftArmOffset.p;
                        v785.t = v1129.data.WeaponOffset.p;
                        v762.s = 100;
                        v781.s = 100;
                        v761.s = 100;
                        v780.s = 100;
                        v785.s = 100;
                        v780.t = v774;
                        v781.t = v773;
                        wait(0.1);
                        if v1129.model and v1132 and v1129.data.HideOnEmpty then
                            v1129:setvisible(true);
                        end;
                        v762.s = 1;
                        v781.s = 1;
                        v761.s = 1;
                        v780.s = 1;
                        v785.s = 1;
                        v1129.reloading = false;
                        v1129.CancelReload = false;
                        v24 = 0;
                    end;
                    return;
                end;
            end;
            l_l_Data_0_0.setcharging = function(v1167, _) --[[ Line: 5266 ]] --[[ Name: setcharging ]]
                if v1167.reloading or v70 then
                    return;
                else
                    v1167.reloading = true;
                    v1167.CancelCharge = false;
                    v1167.ChargeTime = tick();
                    if v1167.toolAnimations.Charge then
                        v1167.toolAnimations.Charge:Play(v1167.data.MaxCharge, 1, 0);
                        v1167.toolAnimations.Charge.TimePosition = 0.1;
                        v1167.toolAnimations.Charge.Priority = Enum.AnimationPriority.Action;
                    end;
                    for _, v1170 in pairs(v1167.data.ChargeAnim) do
                        if v1170[7] > 0 and not v1167.CancelCharge then
                            local v1171, v1172, v1173 = v1170[4]:toEulerAnglesXYZ();
                            local v1174, v1175, v1176 = v1170[2]:toEulerAnglesXYZ();
                            v761.t = v1170[1].p;
                            v780.t = l_new_1(v1174, v1175, v1176);
                            v762.t = v1170[3].p;
                            v781.t = l_new_1(v1171, v1172, v1173);
                            v785.t = v1170[5].p;
                            v761.s = v1170[6];
                            v781.s = v1170[6];
                            v780.s = v1170[6];
                            v762.s = v1170[6];
                            v785.s = v1170[6];
                            local v1177 = v1170[8];
                            if v1177 ~= "" then
                                local v1178 = v1167.model and v1167.model:FindFirstChild("Handle") and v1167.model:FindFirstChild("Handle"):FindFirstChild(v1177);
                                if v1178 then
                                    v1178:Play();
                                end;
                            end;
                            local v1179 = tick();
                            repeat
                                wait();
                            until tick() - v1179 >= v1170[7] or v1167.CancelCharge or v1167.puttingAway;
                        end;
                    end;
                    return;
                end;
            end;
            l_l_Data_0_0.usegadget = function(v1180, v1181, v1182) --[[ Line: 5308 ]] --[[ Name: usegadget ]]
                local v1183 = v1180.data.GadgetType or "Throwable";
                if v1183 == "Gun" then
                    v1180:setshooting(v1181);
                    return;
                else
                    if v1183 == "Throwable" then
                        if v1181 then
                            local v1184, v1185 = v1180:getAmmo();
                            if v1180.reloading or v1180.attacking or v1180.aiming or v1180.postshooting or v70 or v1180.grenade then
                                return;
                            else
                                v1180.ThrowType = v1182 and v1182:match("Short") and "Short" or "Long";
                                if v1180.inspecting then
                                    v1180:setinspecting(false);
                                end;
                                v1180.cooking = true;
                                local v1186 = v1184 - 1 <= 0;
                                if v69 and v1184 and v1184 > 0 then
                                    v1180.reloading = true;
                                    v1180.grenade = true;
                                    local l_UseSequence_0 = v1180.data.UseSequence;
                                    local l_Start_2 = v1180.toolAnimations.Start;
                                    local l_Cook_2 = v1180.toolAnimations.Cook;
                                    local _ = v1180.toolAnimations.Attack;
                                    if l_Start_2 then
                                        l_Start_2:Play();
                                        l_Start_2.Priority = Enum.AnimationPriority.Action2;
                                    end;
                                    if l_Cook_2 then
                                        l_Cook_2:Play();
                                        l_Cook_2.Priority = Enum.AnimationPriority.Action;
                                    end;
                                    v1180:playAnimation(l_UseSequence_0, true, true);
                                    if v1186 and v1180.data.HideOnEmpty then
                                        v1180:setvisible(false);
                                    end;
                                    if not v1180.puttingAway then
                                        local v1191, v1192 = v1180:getAmmo();
                                        v1184 = v1191;
                                        v1185 = v1192;
                                        if v1186 and v1185 > 0 then
                                            v1180.grenade = false;
                                            v1180.reloading = false;
                                            v1180:setreloading(true);
                                        else
                                            v761.t = v1180.data.RightArmOffset.p;
                                            v762.t = v1180.data.LeftArmOffset.p;
                                            v785.t = v1180.data.WeaponOffset.p;
                                            v762.s = 50;
                                            v781.s = 50;
                                            v761.s = 50;
                                            v780.s = 50;
                                            v779.s = 50;
                                            v785.s = 50;
                                            v779.t = l_new_1();
                                            v780.t = v774;
                                            v781.t = v773;
                                            wait(0.2);
                                            v762.s = 1;
                                            v781.s = 1;
                                            v761.s = 1;
                                            v780.s = 1;
                                            v779.s = 1;
                                            v785.s = 1;
                                        end;
                                    end;
                                    v1180.grenade = false;
                                    v1180.reloading = false;
                                    return;
                                end;
                            end;
                        else
                            v1180.cooking = false;
                        end;
                    end;
                    return;
                end;
            end;
            l_l_Data_0_0.usemelee = function(v1193, v1194) --[[ Line: 5409 ]] --[[ Name: usemelee ]]
                if v1193.shieldDeployed then
                    return;
                else
                    v1193.UseMelee = v1194;
                    if v1194 then
                        v1193:meleeattack();
                    end;
                    return;
                end;
            end;
            l_l_Data_0_0.meleeattack = function(v1195, _) --[[ Line: 5419 ]] --[[ Name: meleeattack ]]
                if v1195.toolAnimations.Charge then
                    v1195.toolAnimations.Charge:Stop();
                end;
                if v1195.CancelCharge or v70 then
                    return;
                else
                    v1195.CancelCharge = true;
                    local v1197 = {};
                    local l_FriendlyFire_3 = l_ActiveMutators_0:FindFirstChild("FriendlyFire");
                    local v1199 = true;
                    local v1200 = 0;
                    local v1201 = {};
                    local v1202 = v1195.data.MaxHits or 1;
                    local function _(v1203, v1204) --[[ Line: 5438 ]] --[[ Name: isInFOV ]]
                        if (v1204 or 1.2217304763960306) > l_acos_0((l_clamp_0(l_CurrentCamera_0.CFrame.LookVector:Dot((v1203.Position - l_CurrentCamera_0.CFrame.Position).Unit), -1, 1))) then
                            return true;
                        else
                            return false;
                        end;
                    end;
                    local function v1209(v1206) --[[ Line: 5456 ]] --[[ Name: stopHit ]]
                        v1201[v1206] = true;
                        v1200 = v1200 + 1;
                        if v1202 <= v1200 then
                            for _, v1208 in pairs(v1197) do
                                if v1208 then
                                    v1208:Disconnect();
                                end;
                            end;
                            v1199 = false;
                        end;
                    end;
                    local function v1238(v1210, _) --[[ Line: 5468 ]] --[[ Name: hitWithMelee ]]
                        if not v1199 then
                            return;
                        else
                            if v1210 and v1210.Parent and not v1201[v1210.Parent] then
                                local v1212 = v1210:HasTag("Destructable") and v1210 or v1210.Parent:HasTag("Destructable") and v1210.Parent;
                                if not v1210.Parent:HasTag("CanBeHit") and v1210.Parent:FindFirstChild("Health") and not v1210:IsDescendantOf(l_Character_0) and (not v1210:IsDescendantOf(workspace.Criminals) or l_FriendlyFire_3) and not v1210.Parent:IsDescendantOf(workspace.Citizens) and not v1210.Parent:IsDescendantOf(workspace.Bodies) then
                                    if (1.2217304763960306) > l_acos_0((l_clamp_0(l_CurrentCamera_0.CFrame.LookVector:Dot((v1210.Position - l_CurrentCamera_0.CFrame.Position).Unit), -1, 1))) then
                                        v1209(v1210.Parent);
                                        local v1213 = v1195.data.Damage * (v113("E", "L") and 2 or 1);
                                        if l_FriendlyFire_3 and v1210:IsDescendantOf(workspace.Criminals) then
                                            v1213 = v1213 * (l_FriendlyFire_3.Value / 100);
                                        end;
                                        local l_p_3 = l_CurrentCamera_0.CFrame.p;
                                        local v1215 = CFrame.new(l_p_3, v1210.Position).LookVector * 30;
                                        local _, v1217, v1218 = workspace:FindPartOnRayWithWhitelist(Ray.new(l_p_3, v1215), {
                                            v1210
                                        });
                                        local l_lookVector_2 = l_Character_0.PrimaryPart.CFrame.lookVector;
                                        local v1220 = Vector3.new(math.random(-10, 10) / 10, -0.8, math.random(-10, 10) / 10);
                                        v1217 = v1217 or l_lookVector_2;
                                        v1218 = v1218 or v1220;
                                        if v1210.Parent:FindFirstChild("Humanoid") then
                                            l_HitEvent_0:Fire(v1210, v1217, v1218, v1215 + Vector3.new(0, -1, 0, 0), v1213 * 1, true, "Flesh", false, nil, "Front", nil);
                                        end;
                                        local v1221 = Color3.fromRGB(255, 0, 0);
                                        v153(v1221, true);
                                        l_Remotes_0.MeleeDamage:FireServer(v1210.Parent, v1195.tool, v1195.data.Knockback);
                                        return;
                                    end;
                                elseif v1210.Parent:HasTag("CanBeHit") or v1210.Parent.Name == "Door" or v1210.Parent.Name == "BrokenDrill" or v1210:IsDescendantOf(workspace.Cameras) or v1210:IsDescendantOf(workspace.Glass) or v1210:IsDescendantOf(workspace.Citizens) then
                                    if (1.0471975511965976 or 1.2217304763960306) > l_acos_0((l_clamp_0(l_CurrentCamera_0.CFrame.LookVector:Dot((v1210.Position - l_CurrentCamera_0.CFrame.Position).Unit), -1, 1))) then
                                        v1209(v1210.Parent);
                                        local v1222 = v1195.data.Damage * (v113("E", "L") and 2 or 1);
                                        if v1210:IsDescendantOf(workspace.Citizens) then
                                            local l_p_4 = l_CurrentCamera_0.CFrame.p;
                                            local v1224 = CFrame.new(l_p_4, v1210.Position).LookVector * 30;
                                            local _, v1226, v1227 = workspace:FindPartOnRayWithWhitelist(Ray.new(l_p_4, v1224), {
                                                v1210
                                            });
                                            local l_lookVector_3 = l_Character_0.PrimaryPart.CFrame.lookVector;
                                            local v1229 = Vector3.new(math.random(-10, 10) / 10, -0.8, math.random(-10, 10) / 10);
                                            v1226 = v1226 or l_lookVector_3;
                                            v1227 = v1227 or v1229;
                                            l_HitEvent_0:Fire(v1210, v1226, v1227, v1224 + Vector3.new(0, -1, 0, 0), v1222 * 1, true, "Flesh", false, nil, "Front", nil);
                                        end;
                                        l_Remotes_0.HitObject:FireServer(v1195.tool, v1210, true, nil, nil, nil, v1195.data.Damage);
                                        return;
                                    end;
                                elseif v1212 and (1.0471975511965976 or 1.2217304763960306) > l_acos_0((l_clamp_0(l_CurrentCamera_0.CFrame.LookVector:Dot((v1210.Position - l_CurrentCamera_0.CFrame.Position).Unit), -1, 1))) then
                                    v1209(v1210.Parent);
                                    local v1230 = v1195.data.Damage * (v113("E", "L") and 2 or 1);
                                    local l_p_5 = l_CurrentCamera_0.CFrame.p;
                                    local v1232 = CFrame.new(l_p_5, v1210.Position).LookVector * 30;
                                    local _, v1234, v1235 = workspace:FindPartOnRayWithWhitelist(Ray.new(l_p_5, v1232), {
                                        v1210
                                    });
                                    v1235 = v1235 or CFrame.new(l_p_5, v1232).LookVector * -1;
                                    local v1236 = {
                                        Attacker = l_Character_0, 
                                        Hit = v1210, 
                                        Source = v733, 
                                        Position = v1234 or v1210.Position, 
                                        Normal = v1235, 
                                        Direction = -v1235.Unit, 
                                        Damage = v1230, 
                                        ClientEffects = {}
                                    };
                                    local _ = l_PropDamage_0.damageProp(v1236);
                                end;
                            end;
                            return;
                        end;
                    end;
                    local v1239 = v1195.model:FindFirstChild("Blade") or v1195.model:FindFirstChildOfClass("BasePart");
                    local v1240 = OverlapParams.new();
                    v1240.MaxParts = 20;
                    if v1239 then
                        task.spawn(function() --[[ Line: 5575 ]]
                            while v1199 and not v70 and not v1195.puttingAway do
                                for _, v1242 in (workspace:GetPartBoundsInBox(v1239.CFrame, v1239.Size, v1240)) do
                                    v1238(v1242, v1239);
                                end;
                                task.wait(0.041666666666666664);
                            end;
                        end);
                    else
                        for _, v1244 in pairs(v1195.model:GetChildren()) do
                            if v1244:IsA("BasePart") then
                                v1244.CanTouch = true;
                                v1244.CanQuery = true;
                                table.insert(v1197, (v1244.Touched:connect(function(v1245) --[[ Line: 5593 ]]
                                    v1238(v1245, v1244);
                                end)));
                            end;
                        end;
                    end;
                    local v1246 = v1195.model and v1195.model:FindFirstChild("Handle");
                    local l_FirstChild_7 = v1195.model:FindFirstChild("BladeTrail", true);
                    if v1246 then
                        for _, v1249 in v1246:GetChildren() do
                            if v1249:IsA("Sound") then
                                v1249:Stop();
                            end;
                        end;
                    end;
                    if v1195.toolAnimations.Attack then
                        v1195.toolAnimations.Attack:Play();
                        v1195.toolAnimations.Attack.Priority = Enum.AnimationPriority.Action2;
                    end;
                    local v1250 = v1195.data["StrikeAnim" .. (v1195.StrikeIndex or "")];
                    if not v1250 then
                        v1195.StrikeIndex = 1;
                        v1250 = v1195.data.StrikeAnim;
                    end;
                    v1195.StrikeIndex = v1195.StrikeIndex and v1195.StrikeIndex + 1 or 2;
                    local v1251 = v113("E", "L") and 1.5 or 1;
                    v1251 = (v1195.data.AttackSpeed or 1) * v1251;
                    v1195.meleeswing = true;
                    for _, v1253 in pairs(v1250) do
                        if v1253[7] > 0 then
                            local v1254 = v1253[6] * v1251;
                            local v1255, v1256, v1257 = v1253[4]:toEulerAnglesXYZ();
                            local v1258, v1259, v1260 = v1253[2]:toEulerAnglesXYZ();
                            v761.t = v1253[1].p;
                            v780.t = l_new_1(v1258, v1259, v1260);
                            v762.t = v1253[3].p;
                            v781.t = l_new_1(v1255, v1256, v1257);
                            v785.t = v1253[5].p;
                            v761.s = v1254;
                            v781.s = v1254;
                            v780.s = v1254;
                            v762.s = v1254;
                            v785.s = v1254;
                            local v1261 = v1253[8];
                            local v1262 = v1253[9];
                            if v1261 ~= "" and typeof(v1261) == "string" then
                                local v1263 = v1195.model and v1195.model:FindFirstChild("Handle") and v1195.model:FindFirstChild("Handle"):FindFirstChild(v1261);
                                if v1263 then
                                    v1263:Play();
                                end;
                            end;
                            if v1262 then
                                v1195:animationaction(v1262, v1253);
                            end;
                            local v1264 = tick();
                            repeat
                                task.wait();
                            until tick() - v1264 >= v1253[7] / v1251 or v1195.puttingAway;
                        end;
                    end;
                    v1199 = false;
                    for _, v1266 in pairs(v1197) do
                        if v1266 then
                            v1266:Disconnect();
                        end;
                    end;
                    if l_FirstChild_7 then
                        l_FirstChild_7.Enabled = false;
                    end;
                    v1195.CancelCharge = false;
                    v1195.reloading = false;
                    v1195.CancelReload = false;
                    if not v1195.puttingAway then
                        if v1195.UseMelee then
                            v1195:meleeattack();
                        else
                            v761.t = v1195.data.RightArmOffset.p;
                            v762.t = v1195.data.LeftArmOffset.p;
                            v785.t = v1195.data.WeaponOffset.p;
                            v762.s = 200;
                            v781.s = 200;
                            v761.s = 200;
                            v780.s = 200;
                            v785.s = 200;
                            v780.t = v774;
                            v781.t = v773;
                            wait(0.1);
                            v762.s = 1;
                            v781.s = 1;
                            v761.s = 1;
                            v780.s = 1;
                            v785.s = 1;
                        end;
                    end;
                    v1195.meleeswing = false;
                    return;
                end;
            end;
            l_l_Data_0_0.attack = function(v1267, v1268, v1269, _) --[[ Line: 5706 ]] --[[ Name: attack ]]
                if v1267.inspecting then
                    v1267.CancelInspect = true;
                    return;
                elseif v1268 == "Gun" then
                    v1267:setshooting(true);
                    return;
                elseif v1268 == "Melee" then
                    v1267:usemelee(true);
                    return;
                else
                    if v1268 == "Gadget" then
                        v1267:usegadget(true, v1269);
                    end;
                    return;
                end;
            end;
            l_l_Data_0_0.load = function(v1271) --[[ Line: 5723 ]] --[[ Name: load ]]
                if v1271.loaded then
                    print("Already loaded");
                    return;
                else
                    v1271.loaded = true;
                    print("loading tool");
                    v27 = v1271.tool;
                    v1271.tool.CanBeDropped = false;
                    v39.Current = v1271;
                    local l_Model_0 = Instance.new("Model");
                    l_Model_0.Name = "Model";
                    l_Model_0.Parent = v122;
                    local v1273 = v1271.data.Dual and v1271.tool:FindFirstChild("Model2");
                    local v1274 = nil;
                    if v1273 then
                        v1274 = l_Model_0:Clone();
                        v1274.Name = "Model2";
                        v1274.Parent = v122;
                    end;
                    if v1271.tool.Name == "Mask" then
                        v37.Mode = "FirstPerson";
                    end;
                    if v1271.data.StatsChanged == nil and v1271.data.WeaponType == "Melee" then
                        local v1275 = 1;
                        if v113("E", "L") then
                            v1275 = 2;
                        end;
                        for _, v1277 in pairs(v1271.data.ChargeAnim) do
                            if v1277[7] > 0 then
                                v1277[7] = v1277[7] / v1275;
                            end;
                        end;
                        v1271.data.MaxCharge = v1271.data.MaxCharge / 2;
                        v1271.data.StatsChanged = true;
                    end;
                    local v1278 = {};
                    local v1279 = {};
                    if v1271.data.StatsChanged == nil and v1271.data.WeaponType == "Gun" then
                        print("CHANGING WEAPON STATS");
                        v1271.data.StatsChanged = true;
                        local l_Damage_4 = v1271.data.Damage;
                        local l_Accuracy_0 = v1271.data.Accuracy;
                        local v1282 = 1;
                        local v1283 = 1;
                        local v1284 = 0;
                        local v1285 = 0;
                        v760 = 1;
                        local v1286 = 1;
                        local v1287 = 1;
                        if l_GunInfo_0.weaponClass[v1271.tool.Name] then
                            for _, v1289 in pairs(l_GunInfo_0.weaponClass[v1271.tool.Name]) do
                                if v1289 == "Pistol" then
                                    if v113("M", "l") then
                                        v1285 = v1285 + 20;
                                    end;
                                    if v113("M", "L") then
                                        v1285 = v1285 + 20;
                                    end;
                                    if v113("M", "P") then
                                        v760 = v760 + 0.5;
                                    end;
                                    if v113("M", "H") then
                                        v1287 = v1287 + 0.75;
                                    elseif v113("M", "h") then
                                        v1287 = v1287 + 0.5;
                                    end;
                                    if v113("M", "d") then
                                        v1286 = v1286 + 1;
                                    end;
                                    if v113("M", "D") then
                                        v1271.data.QuickdrawAced = 1;
                                    end;
                                elseif v1289 == "Shotgun" then
                                    if v113("E", "p") then
                                        v1271.data.BulletsPerBurstOrShotgun = v1271.data.BulletsPerBurstOrShotgun + 1;
                                    end;
                                    if v113("E", "h") then
                                        v1282 = v1282 + 0.05;
                                    end;
                                    if v113("E", "H") then
                                        v1282 = v1282 + 0.05;
                                    end;
                                    if v113("E", "d") then
                                        v760 = v760 + 0.15;
                                    end;
                                    if v113("E", "D") then
                                        v760 = v760 + 0.35;
                                    end;
                                elseif v1289 == "Sniper" and v113("T", "H") then
                                    v760 = v760 + 0.5;
                                end;
                            end;
                        end;
                        if v1271.data.FireMode == "Semi" then
                            if v113("T", "d") then
                                v1282 = v1282 + 0.05;
                            end;
                            if v113("T", "h") then
                                v1286 = v1286 + 1;
                            end;
                        end;
                        v1278 = {};
                        v1279 = {};
                        for _, v1291 in pairs(v1271.tool:GetChildren()) do
                            if v1291:IsA("BasePart") and game:GetService("CollectionService"):HasTag(v1291, "Attachment") and v1278[v1291.Name] == nil and l_GunInfo_0.AttachmentInfo[v1291.Name] then
                                v1278[v1291.Name] = true;
                                if l_GunInfo_0.AttachmentInfo[v1291.Name].Accuracy then
                                    if l_GunInfo_0.AttachmentInfo[v1291.Name].Accuracy[2] then
                                        v1283 = v1283 + l_GunInfo_0.AttachmentInfo[v1291.Name].Accuracy[1];
                                    else
                                        v1284 = v1284 + l_GunInfo_0.AttachmentInfo[v1291.Name].Accuracy[1];
                                    end;
                                end;
                                if l_GunInfo_0.AttachmentInfo[v1291.Name].Damage then
                                    if l_GunInfo_0.AttachmentInfo[v1291.Name].Damage[2] then
                                        v1282 = v1282 + l_GunInfo_0.AttachmentInfo[v1291.Name].Damage[1];
                                    else
                                        v1285 = v1285 + l_GunInfo_0.AttachmentInfo[v1291.Name].Damage[1];
                                    end;
                                end;
                                if v1291:FindFirstChild("LaserPointer") then
                                    table.insert(v1279, v1291);
                                end;
                            end;
                        end;
                        v1271.data.AimSpeed = v1271.data.AimSpeed * v1286;
                        v756.s = v1271.data.AimSpeed;
                        local v1292 = l_Damage_4 * v1282 + v1285;
                        v1271.data.Damage = v1292;
                        v758 = -100 * math.clamp(l_Accuracy_0 * v1283 + v1284 or 95, 0, 100) + 10000;
                        v1271.Accuracy = v758;
                        for _, v1294 in pairs(v1271.data.ReloadSequence) do
                            if v1294[7] > 0 then
                                v1294[7] = v1294[7] / v760;
                            end;
                        end;
                        if v1271.data.LongerReloadSequence then
                            for _, v1296 in pairs(v1271.data.LongerReloadSequence) do
                                if v1296[7] > 0 then
                                    v1296[7] = v1296[7] / v760;
                                end;
                            end;
                        end;
                        if v1271.data.RecoilDirectionPattern then
                            for _, v1298 in pairs(v1271.data.RecoilDirectionPattern) do
                                v1298 = v1298 / v1287;
                            end;
                        end;
                        if v1271.data.RecoilCameraDirection then
                            v1271.data.RecoilCameraDirection = v1271.data.RecoilCameraDirection / v1287;
                        end;
                    end;
                    local v1299 = v1271.tool:Clone();
                    local v1300 = v1273 and v1273:Clone();
                    local function v1310(v1301, v1302) --[[ Line: 5915 ]] --[[ Name: cloneChildren ]]
                        for _, v1304 in pairs(v1301:GetDescendants()) do
                            if v1304 and v1304:IsA("BasePart") then
                                if v1304.Parent == v1301 then
                                    v1304.Parent = v1302;
                                end;
                                v1304.CanCollide = false;
                                local v1305 = v1304:GetAttribute("AimShow") or false;
                                local l_v1304_Attribute_0 = v1304:GetAttribute("AimHide");
                                local l_v1304_Attribute_1 = v1304:GetAttribute("AltAim");
                                if v1305 or l_v1304_Attribute_0 then
                                    if l_v1304_Attribute_1 then
                                        v747[v1304] = v1305;
                                    else
                                        v746[v1304] = v1305;
                                    end;
                                    for _, v1309 in v1304:GetChildren() do
                                        if v1309:IsA("Decal") or v1309:IsA("Texture") then
                                            if l_v1304_Attribute_1 then
                                                v747[v1309] = v1305;
                                            else
                                                v746[v1309] = v1305;
                                            end;
                                        end;
                                    end;
                                end;
                            elseif v1304:IsA("Weld") or v1304:IsA("Motor6D") then
                                v1304:Destroy();
                            elseif v1304:IsA("Model") and not v1304.Name:match("Model2") and v1304.Parent == v1301 then
                                v1304.Parent = v1302;
                            end;
                        end;
                        v1301:Destroy();
                    end;
                    v1310(v1299, l_Model_0);
                    if v1274 then
                        v1310(v1300, v1274);
                    end;
                    for _, v1312 in v1271.tool:GetDescendants() do
                        if v1312:IsA("SurfaceGui") or v1312:IsA("ParticleEmitter") or v1312:IsA("Beam") or v1312:IsA("Trail") then
                            if not v1312:GetAttribute("OriginalEnabled") then
                                v1312:SetAttribute("OriginalEnabled", v1312.Enabled);
                            end;
                            v1312.Enabled = false;
                        elseif v1312:IsA("Texture") or v1312:IsA("Decal") then
                            v1312.LocalTransparencyModifier = 1;
                        end;
                    end;
                    local v1313 = {};
                    local v1314 = nil;
                    v1271.WeldList = {};
                    v1271.Bullets = {};
                    local function v1315(v1316, v1317) --[[ Line: 5982 ]] --[[ Name: scan ]]
                        v1314 = v1317 or v1314;
                        for _, v1319 in pairs(v1316:GetChildren()) do
                            if v1319:IsA("BasePart") then
                                local l_v1314_0 = v1314;
                                local l_v1319_Attribute_0 = v1319:GetAttribute("WeldTo");
                                if l_v1319_Attribute_0 then
                                    l_v1314_0 = v1316:FindFirstChild(l_v1319_Attribute_0) or l_v1314_0.Parent:FindFirstChild(l_v1319_Attribute_0, true) or l_v1314_0;
                                end;
                                if l_v1314_0 then
                                    local l_Motor6D_2 = Instance.new("Motor6D");
                                    l_Motor6D_2.Name = ("%s_Weld"):format(v1319.Name);
                                    l_Motor6D_2.Part0 = l_v1314_0;
                                    l_Motor6D_2.Part1 = v1319;
                                    l_Motor6D_2.C0 = l_v1314_0.CFrame:ToObjectSpace(v1319.CFrame);
                                    l_Motor6D_2.Parent = v1319;
                                    v1271.WeldList[v1319.Name] = l_Motor6D_2;
                                    l_Motor6D_2:SetAttribute("DefaultC1", l_Motor6D_2.C1);
                                end;
                                v1314 = v1317 or v1319;
                                table.insert(v1313, v1319);
                                v1319.CastShadow = false;
                                v1319.CanCollide = false;
                                v1319.CanTouch = false;
                                v1319.CanQuery = false;
                                if v1319.Name:match("Bullet_") then
                                    table.insert(v1271.Bullets, v1319);
                                end;
                            elseif v1319:GetAttribute("OriginalEnabled") then
                                v1319.Enabled = v1319:GetAttribute("OriginalEnabled");
                            end;
                            v1315(v1319, v1317);
                        end;
                    end;
                    print(v1271.Bullets);
                    v1315(l_Model_0, (l_Model_0:FindFirstChild("Handle")));
                    if v1274 then
                        v1315(v1274, (v1274:FindFirstChild("Handle2")));
                        v1271.model2 = v1274;
                    end;
                    for _, v1324 in pairs(v1313) do
                        v1324.Anchored = false;
                    end;
                    v1271.model = l_Model_0;
                    local l_Handle_3 = l_Model_0:FindFirstChild("Handle");
                    if v733.Name == "Mask" then
                        if l_Handle_3 then
                            l_Handle_3.Transparency = 1;
                        end;
                        for _, v1327 in pairs(l_Character_0:GetDescendants()) do
                            if v1327:IsA("ParticleEmitter") then
                                v1327:Destroy();
                            end;
                        end;
                        print("Rendering mask invisible");
                    end;
                    local l_Arms_0 = l_Assets_0.Character.Arms;
                    local v1329 = l_Arms_0.Right:Clone();
                    v1329.Parent = v122;
                    v35.BindModel(v1329, v1329.Arm);
                    v1271.rightarm = v1329.Arm;
                    v1271.rightarmmodel = v1329;
                    local v1330 = l_Arms_0.Left:Clone();
                    v1330.Parent = v122;
                    v35.BindModel(v1330, v1330.Arm);
                    v1271.leftarm = v1330.Arm;
                    v1271.leftarmmodel = v1330;
                    local l_FirstChild_8 = v85:WaitForChild("OwnedWeapons"):FindFirstChild("(Suit)0");
                    local v1332 = "Default";
                    if l_FirstChild_8 then
                        v1332 = l_FirstChild_8.Skin.Value;
                    end;
                    local l_Color_0 = l_Character_0.Head.Color;
                    local l_Color_1 = l_Character_0["Right Arm"].Color;
                    local l_Color_2 = l_Character_0["Left Arm"].Color;
                    local v1336 = l_Arms_0.Appeareance:FindFirstChild(v1332) or l_Arms_0.Appeareance:FindFirstChild("Default");
                    if v1336 then
                        v1336 = v1336:Clone();
                        local v1337 = v1336.Right:Clone();
                        local v1338 = v1336.Left:Clone();
                        for _, v1340 in {
                            v1337, 
                            v1338
                        } do
                            v1340.Name = v1340.Name .. "Appeareance";
                            local v1341 = v1340 == v1337 and v1271.rightarm or v1271.leftarm;
                            for _, v1343 in pairs(v1340:GetDescendants()) do
                                if v1343:IsA("BasePart") then
                                    v1343.CanCollide = false;
                                    v1343.CanTouch = false;
                                    v1343.CastShadow = false;
                                    v1343.CollisionGroup = "Ammo";
                                    if v1343.Name:match("Skin") then
                                        v1343.Color = v1340 == v1337 and l_Color_1 or v1340 == v1338 and l_Color_2 or l_Color_0;
                                    end;
                                    if v1343 ~= v1340.PrimaryPart then
                                        local l_WeldConstraint_1 = Instance.new("WeldConstraint");
                                        l_WeldConstraint_1.Parent = v1340.PrimaryPart;
                                        l_WeldConstraint_1.Part0 = v1340.PrimaryPart;
                                        l_WeldConstraint_1.Part1 = v1343;
                                        l_WeldConstraint_1.Name = l_WeldConstraint_1.Part0.Name .. "-to-" .. l_WeldConstraint_1.Part1.Name;
                                    end;
                                    v1343.Anchored = false;
                                end;
                            end;
                            v1340:PivotTo(v1341.CFrame * l_new_0(0, 0.35, 0) * l_Angles_0(3.141592653589793, math.rad(v1340 == v1337 and 180 or 90), 0));
                            local l_WeldConstraint_2 = Instance.new("WeldConstraint");
                            l_WeldConstraint_2.Parent = v1341;
                            l_WeldConstraint_2.Part0 = v1341;
                            l_WeldConstraint_2.Part1 = v1340.PrimaryPart;
                            v1340.Parent = v1341;
                        end;
                        if v1338 then
                            local _ = v1338:FindFirstChild("Watch");
                        end;
                        local v1347 = v1338 and v1338:FindFirstChild("WatchFace", true);
                        if v1347 then
                            l_HeartWatch_0.Adornee = v1347;
                            v1347.Color = l_HeartWatch_0:GetAttribute("WatchColor") or Color3.fromRGB(209, 87, 89);
                        end;
                        v1336:Destroy();
                    end;
                    v1271.rightweld = Instance.new("Motor6D", v1271.rightarm);
                    v1271.rightweld.C0 = CFrame.new(0, -100, 0);
                    v1271.rightweld.Part0 = l_HumanoidRootPart_0;
                    v1271.rightweld.Part1 = v1271.rightarm;
                    v1271.leftweld = Instance.new("Motor6D", v1271.leftarm);
                    v1271.leftweld.C0 = CFrame.new(0, -100, 0);
                    v1271.leftweld.Part0 = l_HumanoidRootPart_0;
                    v1271.leftweld.Part1 = v1271.leftarm;
                    v1271.weaponweld = l_new_2("Weld", v1271.model.Handle);
                    v1271.weaponweld.Part0 = v1271.rightarm;
                    v1271.weaponweld.Part1 = v1271.model.Handle;
                    v1271.model:MakeJoints();
                    v1271.leftarm:MakeJoints();
                    v1271.rightarm:MakeJoints();
                    v1271.rightweld.C0 = CFrame.new(0, -100, 0);
                    v1271.leftweld.C0 = CFrame.new(0, -100, 0);
                    if v1271.model2 then
                        v1271.model2:MakeJoints();
                        v1271.weaponweld2 = l_new_2("Weld", v1271.model2.Handle2);
                        v1271.weaponweld2.Part0 = v1271.leftarm;
                        v1271.weaponweld2.Part1 = v1271.model2.Handle2;
                    end;
                    local l_Idle_0 = v1271.toolAnimations.Idle;
                    local l_Equip_0 = v1271.toolAnimations.Equip;
                    local l_Aim_0 = v1271.toolAnimations.Aim;
                    if l_Idle_0 then
                        l_Idle_0:Play();
                        l_Idle_0.Priority = Enum.AnimationPriority.Movement;
                    end;
                    if l_Equip_0 then
                        l_Equip_0:Play();
                        l_Equip_0.Priority = Enum.AnimationPriority.Action3;
                    end;
                    if l_Aim_0 then
                        l_Aim_0.Priority = Enum.AnimationPriority.Action;
                    end;
                    v761.p = v1271.data.RightArmEquipOffset and v1271.data.RightArmEquipOffset.p or Vector3.new(0.8999999761581421, -2.75, -1.2000000476837158, 0);
                    v780.p = v777 or Vector3.new(-1.3962633609771729, 0, 0, 0);
                    v762.p = v1271.data.LeftArmEquipOffset and v1271.data.LeftArmEquipOffset.p or Vector3.new(-0.05000000074505806, -3, -1, 0);
                    v781.p = v778 or Vector3.new(-1.0471975803375244, 0, 0.027415568009018898, 0);
                    local v1351 = v1271.data.EquipTime or 0.75;
                    local v1352 = 0.75 / v1351;
                    v761.v = l_new_1();
                    v762.v = l_new_1();
                    v780.v = l_new_1();
                    v781.v = l_new_1();
                    v761.s = 15 * v1352;
                    v762.s = 15 * v1352;
                    v780.s = 15 * v1352;
                    v781.s = 15 * v1352;
                    v761.d = 1;
                    v762.d = 1;
                    v780.d = 1;
                    v781.d = 1;
                    v761.t = v1271.data.RightArmOffset.p;
                    v780.t = v774;
                    v762.t = v1271.data.LeftArmOffset.p;
                    v781.t = v773;
                    if v1271.data.EquipSequence then
                        v1271:playGunAnimation(v1271.data.EquipSequence, nil, true);
                    end;
                    delay(v1351, function() --[[ Line: 6218 ]]
                        v1271.puttingAway = false;
                        v761.s = 15;
                        v761.d = 1;
                        v762.s = 15;
                        v762.d = 1;
                        v780.s = 15;
                        v780.d = 1;
                        v781.s = 15;
                        v781.d = 1;
                        v761.v = l_new_1();
                        v762.v = l_new_1();
                        v780.v = l_new_1();
                        v781.v = l_new_1();
                    end);
                    local v1353 = 0;
                    local v1354 = nil;
                    v1271.FullyEquipped = false;
                    v1354 = l_RunService_0.RenderStepped:Connect(function(v1355) --[[ Line: 6241 ]]
                        local l_l_l_BaseSpeed_0_2_1 = l_l_BaseSpeed_0_2;
                        v1353 = v1353 + v1355;
                        local v1357 = math.max(1, v1353 / v1351);
                        l_l_l_BaseSpeed_0_2_0 = l_l_l_BaseSpeed_0_2_1:lerp(v1271.data.MainOffset, v1357);
                        l_l_l_Bullet_0_0_0 = l_l_l_BaseSpeed_0_2_1:lerp(v1271.data.MainOffsetAngle or l_new_0(), v1357);
                        if v1357 >= 1 then
                            v1271.FullyEquipped = true;
                            v1271.puttingAway = false;
                            if l_l_BaseSpeed_0_2 == l_l_l_BaseSpeed_0_2_1 then
                                l_l_BaseSpeed_0_2 = v1271.data.MainOffset;
                                l_l_Bullet_0_0 = v1271.data.MainOffsetAngle or l_new_0();
                            end;
                            v1354:Disconnect();
                        end;
                    end);
                    local v1358 = v1271.AmmoType and l_Character_0:FindFirstChild(v1271.AmmoType .. "Ammo");
                    v1358 = v1358 and v1358.Value;
                    if v1271.model and v1358 and v1358 <= 0 and v1271.data.HideOnEmpty then
                        v1271:setvisible(false);
                    end;
                    if v1271.data.BoltLock and v1358 and v1358 <= 0 then
                        v1271:updateBolt();
                    end;
                    local v1359 = v1271.AmmoType and l_Character_0:FindFirstChild(v1271.AmmoType .. "Ammo");
                    if v39.Current and v39.Current.tool.Name == "RPG-7" and v1271.model and v1359.Value <= 0 then
                        v1271.model.Mag.LocalTransparencyModifier = 1;
                        v1271.model.Mag.Transparency = 0;
                    elseif v1271.data.HideBullets then
                        for _, v1361 in v1271.Bullets do
                            local v1362 = v1361.Name:match("%d+");
                            v1362 = v1362 and tonumber(v1362);
                            if v1362 and v1362 <= v1359.Value then
                                v1271:setvisible(true, v1361);
                            end;
                        end;
                    end;
                    local l_FirstChild_9 = v1271.model:FindFirstChild("AIM", true);
                    if l_FirstChild_9 then
                        v1271.aimpart = l_FirstChild_9.Parent:IsA("BasePart") and l_FirstChild_9.Parent;
                        v1271.aimfov = v1271.aimpart and v1271.aimpart:GetAttribute("FOV") or nil;
                        v738 = v1271.aimfov or v738;
                        local l_FirstChild_10 = v1271.model:FindFirstChild("AIM2", true);
                        if l_FirstChild_10 then
                            v1271.altaimpart = l_FirstChild_10.Parent;
                            v1271.altaimfov = l_FirstChild_10.Parent:GetAttribute("FOV") or v738;
                        end;
                    end;
                    local l_FirstChild_11 = v1271.model:FindFirstChild("LaserPointer", true);
                    l_Parts_0:AddToFilter(l_LocalPlayer_0.Character);
                    l_Parts_0:AddToFilter(v1271.model);
                    for _, v1367 in {
                        l_FirstChild_11
                    } do
                        v1367 = l_FirstChild_11.Parent;
                        l_CreateLaser_0:Fire("New", v1367, {
                            ShootFrom = nil, 
                            RaycastParameters = l_Parts_0, 
                            UpdateRate = 0.0033333333333333335, 
                            Animation = ""
                        });
                        task.wait();
                        v1271.LaserPointer = v1367:FindFirstChild("LASER_EFFECT", true);
                    end;
                    if v1271.LaserPointer then
                        v1271.LaserPointer:SetAttribute("Enabled", true);
                    end;
                    return;
                end;
            end;
            local v1368 = false;
            l_l_Data_0_0.putAway = function(v1369, v1370, v1371) --[[ Line: 6331 ]] --[[ Name: putAway ]]
                task.spawn(function() --[[ Line: 6332 ]]
                    v1369.playing = false;
                    if v1369.reloading then
                        v1369.CancelReload = true;
                    end;
                    if v1369.inspecting then
                        v39.Current:setinspecting(false);
                    end;
                    if v1369.shooting then
                        v39.Current:setshooting(false);
                    end;
                    if v1369.shieldDeployed then
                        v39.Current:setshield(false);
                    end;
                end);
                v1371 = v1371 or v1369.data.UnequipTime or v1369.data.EquipTime or v1370 and 0.75 or 0.45;
                if v1370 then
                    v1368 = false;
                    l_l_BaseSpeed_0_2 = v1369.data.MainOffset;
                    l_l_Bullet_0_0 = v1369.data.MainOffsetAngle or l_new_0();
                    v1369.puttingAway = true;
                    local l_v1371_0 = v1371;
                    local v1373 = v1369.toolAnimations.Unequip or v1369.toolAnimations.Equip;
                    local v1374 = v1373 and v1373.Length / l_v1371_0;
                    if v1369.toolAnimations then
                        for _, v1376 in v1369.toolAnimations do
                            if v1373 == v1376 then
                                v1376:Play(0.05, 1, v1374);
                                v1376.TimePosition = v1376.Name == "Equip" and v1376.Length or 0;
                                v1376.Priority = Enum.AnimationPriority.Action3;
                            else
                                v1376:Stop();
                            end;
                        end;
                    end;
                    v1369:cancelAnimation();
                    task.wait();
                    if v1369.LaserPointer then
                        v1369.LaserPointer:SetAttribute("Enabled", false);
                    end;
                    local v1377 = 2.3 / v1371;
                    v761.s = 15 * v1377;
                    v762.s = 15 * v1377;
                    v780.s = 15 * v1377;
                    v781.s = 15 * v1377;
                    v761.d = 1;
                    v762.d = 1;
                    v780.d = 1;
                    v781.d = 1;
                    v761.t = v1369.data.RightArmEquipOffset and v1369.data.RightArmEquipOffset.p or Vector3.new(0.8999999761581421, -2.75, -1.2000000476837158, 0);
                    v780.t = v777 or Vector3.new(-1.3962633609771729, 0, 0, 0);
                    v762.t = v1369.data.LeftArmEquipOffset and v1369.data.LeftArmEquipOffset.p or Vector3.new(-0.05000000074505806, -3, -1, 0);
                    v781.t = v778 or Vector3.new(-1.0471975803375244, 0, 0.027415568009018898, 0);
                    delay(v1371, function() --[[ Line: 6407 ]]
                        if not v1368 then
                            v761.v = l_new_1();
                            v762.v = l_new_1();
                            v780.v = l_new_1();
                            v781.v = l_new_1();
                        end;
                    end);
                    return;
                else
                    if v1369.toolAnimations then
                        local l_Idle_1 = v1369.toolAnimations.Idle;
                        local l_Equip_1 = v1369.toolAnimations.Equip;
                        if l_Idle_1 then
                            l_Idle_1:Play();
                            l_Idle_1.Priority = Enum.AnimationPriority.Movement;
                        end;
                        if l_Equip_1 then
                            l_Equip_1:Play();
                            l_Equip_1.Priority = Enum.AnimationPriority.Action3;
                        end;
                    end;
                    if v1369.LaserPointer then
                        v1369.LaserPointer:SetAttribute("Enabled", true);
                    end;
                    local v1380 = 2.3 / v1371;
                    v1368 = true;
                    v761.v = l_new_1();
                    v762.v = l_new_1();
                    v780.v = l_new_1();
                    v781.v = l_new_1();
                    v761.s = 15 * v1380;
                    v762.s = 15 * v1380;
                    v780.s = 15 * v1380;
                    v781.s = 15 * v1380;
                    v761.d = 1;
                    v762.d = 1;
                    v780.d = 1;
                    v781.d = 1;
                    v761.t = v1369.data.RightArmOffset.p;
                    v780.t = v774;
                    v762.t = v1369.data.LeftArmOffset.p;
                    v781.t = v773;
                    delay(v1371, function() --[[ Line: 6473 ]]
                        if v1368 then
                            v1369.CancelReload = false;
                            v1369.puttingAway = false;
                            v761.s = 15;
                            v761.d = 1;
                            v762.s = 15;
                            v762.d = 1;
                            v780.s = 15;
                            v780.d = 1;
                            v781.s = 15;
                            v781.d = 1;
                            v761.v = l_new_1();
                            v762.v = l_new_1();
                            v780.v = l_new_1();
                            v781.v = l_new_1();
                        end;
                    end);
                    return;
                end;
            end;
            l_l_Data_0_0.unload = function(v1381) --[[ Line: 6521 ]] --[[ Name: unload ]]
                v122:ClearAllChildren();
                v1381.loaded = false;
                if v1381.toolAnimations then
                    for _, v1383 in v1381.toolAnimations do
                        if not v1383.Name:lower():match("equip") then
                            v1383:Stop();
                        end;
                    end;
                end;
            end;
            l_l_Data_0_0.unequip = function(v1384) --[[ Line: 6539 ]] --[[ Name: unequip ]]
                print("Unequipping");
                v1384:unload();
                v1384:setshooting(false);
                v39.Current = nil;
            end;
            l_l_Data_0_0.maskOn = function(v1385) --[[ Line: 6546 ]] --[[ Name: maskOn ]]
                v39.Current.model.Handle.Transparency = 0;
                v1385:cancelAnimation();
                if v1385.inspecting then
                    v1385:setinspecting(false);
                end;
                v1385.reloading = true;
                if v1385.toolAnimations.MaskOn then
                    v1385.toolAnimations.MaskOn.Priority = Enum.AnimationPriority.Action3;
                    v1385.toolAnimations.MaskOn:Play(0);
                end;
                for _, v1387 in pairs(v73) do
                    if v1387[6] > 0 then
                        local v1388, v1389, v1390 = v1387[4]:toEulerAnglesXYZ();
                        local v1391, v1392, v1393 = v1387[2]:toEulerAnglesXYZ();
                        v761.t = v1387[1].p;
                        v780.t = l_new_1(v1391, v1392, v1393);
                        v762.t = v1387[3].p;
                        v781.t = l_new_1(v1388, v1389, v1390);
                        v761.s = v1387[5];
                        v781.s = v1387[5];
                        v780.s = v1387[5];
                        v762.s = v1387[5];
                        v785.s = v1387[5];
                        local v1394 = v1387[7];
                        local v1395 = v1387[8];
                        if v1395 ~= "" then
                            local v1396 = v1385.model and v1385.model:FindFirstChild("Handle") and v1385.model:FindFirstChild("Handle"):FindFirstChild(v1395);
                            if v1396 then
                                v1396:Play();
                            end;
                        end;
                        if v1394 ~= "" and v1385.model and v1385.model:FindFirstChild("Handle") then
                            l_TweenService_0:Create(v1385.model:FindFirstChild("Handle"), TweenInfo.new(0.1), {
                                Transparency = 1
                            });
                            if v1394 == "ApplyMask" then
                                v1385.model:FindFirstChild("Handle").Transparency = 1;
                            elseif v1394 == "FadeMask" then
                                l_TweenService_0:Create(v1385.model:FindFirstChild("Handle"), TweenInfo.new(0.3), {
                                    Transparency = 1
                                }):Play();
                            end;
                        end;
                        wait(v1387[6]);
                    end;
                end;
                l_PlayerGui_0:WaitForChild("SG_Package"):WaitForChild("MainGui").PlayerStats.LocalPlayerStats.info_weapons.primaryAmmo.TextTransparency = 0;
                l_PlayerGui_0:WaitForChild("SG_Package"):WaitForChild("MainGui").PlayerStats.LocalPlayerStats.info_weapons.primaryAmmoTotal.TextTransparency = 0;
                l_PlayerGui_0:WaitForChild("SG_Package"):WaitForChild("MainGui").PlayerStats.LocalPlayerStats.info_weapons.secondaryAmmo.TextTransparency = 0.7;
                l_PlayerGui_0:WaitForChild("SG_Package"):WaitForChild("MainGui").PlayerStats.LocalPlayerStats.info_weapons.secondaryAmmoTotal.TextTransparency = 0.7;
                l_PlayerGui_0:WaitForChild("SG_Package"):WaitForChild("MainGui").PlayerStats.LocalPlayerStats.info_weapons.primaryFiremode.TextTransparency = 0;
                l_PlayerGui_0:WaitForChild("SG_Package"):WaitForChild("MainGui").PlayerStats.LocalPlayerStats.info_weapons.secondaryFiremode.TextTransparency = 0.7;
                l_PlayerGui_0:WaitForChild("SG_Package"):WaitForChild("MainGui").PlayerStats.LocalPlayerStats.info_weapons.gadgetAmmo.TextTransparency = 0.7;
                l_PlayerGui_0:WaitForChild("SG_Package"):WaitForChild("MainGui").PlayerStats.LocalPlayerStats.info_weapons.gadgetAmmoTotal.TextTransparency = 0.7;
                l_PlayerGui_0:WaitForChild("SG_Package"):WaitForChild("MainGui").PlayerStats.LocalPlayerStats.info_weapons.gadgetFiremode.TextTransparency = 0.7;
                v1385.reloading = false;
            end;
            local _ = v34.Spring.new();
            local v1398 = tick();
            local v1399 = tick();
            local v1400 = l_new_0();
            l_l_Data_0_0.step = function(v1401) --[[ Line: 6619 ]] --[[ Name: step ]]
                local _ = v1401 / 0.016666666666666666;
                if not l_l_Data_0_0.isrendering then
                    return;
                else
                    l_l_Data_0_0.aim = v756.p;
                    if l_l_UserInputService_0_GamepadConnected_0 then
                        l_v241_4 = l_v241_4 - l_new_1(v37.ThumbstickDelta.x * 200, v37.ThumbstickDelta.y * 200, 0);
                    end;
                    local l_l_v241_4_0 = l_v241_4;
                    v757.t = l_new_1(-l_min_0(l_max_0(l_l_v241_4_0.x, -30), 30), -l_min_0(l_max_0(l_l_v241_4_0.y, -30), 30), 0);
                    if l_l_Data_0_0.LaserPointer then
                        if l_l_Data_0_0.reloading or v36.Sprint > 0.1 or l_l_Data_0_0.postshooting or l_l_Data_0_0.grenade or l_l_Data_0_0.inspecting or l_l_Data_0_0.aim > 0.5 or l_l_Data_0_0.puttingAway then
                            l_l_Data_0_0.LaserPointer:SetAttribute("CenterShoot", 0);
                        else
                            l_l_Data_0_0.LaserPointer:SetAttribute("CenterShoot", 1);
                        end;
                    end;
                    local l_Aim_1 = l_l_Data_0_0.toolAnimations.Aim;
                    local v1405 = l_l_Data_0_0.aiming or l_l_Data_0_0.shieldDeployed;
                    if l_Aim_1 then
                        if v1405 and not l_Aim_1.IsPlaying then
                            l_Aim_1:Play(0.1);
                            l_Aim_1.Priority = Enum.AnimationPriority.Action;
                        elseif not v1405 and l_Aim_1.IsPlaying then
                            l_Aim_1:Stop(0.1);
                        end;
                    end;
                    if v37.Mode == "FirstPerson" then
                        if not l_l_Data_0_0.loaded then
                            l_l_Data_0_0:load();
                        end;
                        if l_l_Data_0_0.loaded then
                            l_l_Data_0_0.currentmodel = l_l_Data_0_0.model;
                            local v1406 = v761.p + v763.p;
                            local v1407 = v780.p + v764.p;
                            local l_p_6 = v762.p;
                            local l_p_7 = v781.p;
                            local v1410 = l_new_0(l_p_6.X, l_p_6.Y, l_p_6.Z) * l_Angles_0(l_p_7.X, l_p_7.Y, l_p_7.Z);
                            local v1411 = l_new_0(v1406.X, v1406.Y, v1406.Z) * l_Angles_0(v1407.X, v1407.Y, v1407.Z);
                            local v1412 = l_l_l_BaseSpeed_0_2_0 * l_l_l_Bullet_0_0_0;
                            local v1413 = l_l_Data_0_0.altaim and l_l_Data_0_0.altaimpart or l_l_Data_0_0.aimpart;
                            if v1413 then
                                v798 = v1413:GetAttribute("AimOffset") or v798;
                                v1400 = v1400:lerp(v798, 0.4);
                            else
                                v1400 = v1400:lerp(v798, 0.4);
                            end;
                            if l_l_Data_0_0.aiming and not l_l_Data_0_0.aimfade and v756.p > 0.7 and not l_l_Data_0_0.waspostshooting then
                                l_l_Data_0_0.aimfade = true;
                                for v1414, v1415 in v746 do
                                    local l_v1414_Attribute_0 = v1414:GetAttribute("Transparency");
                                    if not l_v1414_Attribute_0 then
                                        l_v1414_Attribute_0 = v1414.Transparency;
                                        v1414:SetAttribute("Transparency", v1414.Transparency);
                                    end;
                                    l_TweenService_0:Create(v1414, TweenInfo.new(l_l_Data_0_0.postshooting and 0.05 or 0.1), {
                                        Transparency = v1415 and l_v1414_Attribute_0 or 1
                                    }):Play();
                                end;
                            elseif (not l_l_Data_0_0.aiming or l_l_Data_0_0.waspostshooting) and l_l_Data_0_0.aimfade then
                                l_l_Data_0_0.aimfade = false;
                                for v1417, v1418 in v746 do
                                    local l_v1417_Attribute_0 = v1417:GetAttribute("Transparency");
                                    if not l_v1417_Attribute_0 then
                                        l_v1417_Attribute_0 = v1417.Transparency;
                                        v1417:SetAttribute("Transparency", v1417.Transparency);
                                    end;
                                    l_TweenService_0:Create(v1417, TweenInfo.new(l_l_Data_0_0.waspostshooting and 0.1 or 0.1), {
                                        Transparency = v1418 and 1 or l_v1417_Attribute_0
                                    }):Play();
                                end;
                            end;
                            local v1420 = l_HumanoidRootPart_0:GetAttribute("ArmOffset") or l_new_0(0.5, -0.5, -2);
                            local v1421 = l_HumanoidRootPart_0.CFrame:inverse() * l_CurrentCamera_0.CFrame * v1412:lerp(v1400, v756.p);
                            local v1422 = 1 - l_l_Data_0_0.aim * 0.9;
                            local v1423 = 1 - l_l_Data_0_0.aim * 0.9;
                            local l_aim_0 = l_l_Data_0_0.aim;
                            local v1425 = v1421 * v39.calculateBob(v1422, v1423, l_aim_0) * v43:lerp(l_SprintOffset_0, v36.Sprint) * v1420 * l_Angles_0(v757.p.y / 360 * 1.05, v757.p.x / 360 * 1.05, v757.p.z / 360 * 1.05) * l_new_0(-0.5, 0.5, 1.25) * l_new_0(0, 0, v755.p) * l_new_0(-v220.p.X / 2, -v220.p.Y / 2, 0) * l_Angles_0(v220.p.Y, v220.p.X, 0);
                            l_l_Data_0_0.leftweld.C0 = v1425 * v1410 * l_ArmFix_0;
                            l_l_Data_0_0.rightweld.C0 = v1425 * v1411 * l_ArmFix_0;
                            l_l_Data_0_0.weaponweld.C1 = l_new_0(v785.p) * l_Angles_0(v789.p.X, v789.p.Y, v789.p.Z) * l_WeaponFix_0;
                            if l_l_Data_0_0.weaponweld2 then
                                l_l_Data_0_0.weaponweld2.C1 = l_new_0(v791.p) * l_Angles_0(v795.p.X, v795.p.Y, v795.p.Z) * l_WeaponFix_0;
                            end;
                        end;
                    else
                        l_l_Data_0_0:unload();
                        l_l_Data_0_0.currentmodel = l_l_Data_0_0.tool;
                    end;
                    l_v241_4 = v46;
                    if l_l_Data_0_0.data.Shield then
                        l_l_Data_0_0:updateshield();
                    end;
                    local l_shooting_0 = l_l_Data_0_0.shooting;
                    local l_FireMode_0 = l_l_Data_0_0.data.FireMode;
                    local v1428 = l_l_Data_0_0.data.FireDelay or 0.05;
                    local l_WeaponType_0 = l_l_Data_0_0.data.WeaponType;
                    if tick() - v1398 >= 0.075 and v755.t > 0 then
                        v1398 = tick();
                        if v755.t > 0.01 then
                            v755.t = v755.t / 2;
                        else
                            v755.t = 0;
                        end;
                    end;
                    if l_shooting_0 and (l_FireMode_0:match("Auto") or l_FireMode_0 == "AutoShotgun") and tick() - v1399 >= v1428 + 0 then
                        v759 = true;
                        if v36.Sprinting then
                            v36:SetSprint(false);
                        end;
                        l_l_Data_0_0:shoot();
                        v1399 = tick();
                        return;
                    elseif l_shooting_0 and l_FireMode_0 == "Semi" and v1428 <= tick() - v1399 then
                        v759 = true;
                        v36:SetSprint(false);
                        v1399 = tick();
                        return;
                    elseif l_shooting_0 and l_FireMode_0 == "Shotgun" and v1428 <= tick() - v1399 then
                        v759 = true;
                        v36:SetSprint(false);
                        v1399 = tick();
                        return;
                    elseif l_shooting_0 and l_FireMode_0 == "Burst" and v1428 <= tick() - v1399 then
                        v759 = true;
                        v36:SetSprint(false);
                        v1399 = tick();
                        return;
                    else
                        if l_WeaponType_0 ~= "Melee" and tick() - v1399 >= 0.075 and (v220.t.Magnitude > 0 or v221.t.Magnitude > 0) then
                            v220.t = v220.t.Magnitude > 0.5 and v220.t / 2 or Vector2.new();
                            v221.t = v221.t.Magnitude > 0.5 and v221.t / 2 or Vector2.new();
                        end;
                        return;
                    end;
                end;
            end;
            v733.Equipped:Connect(function() --[[ Line: 6789 ]]
                v39.Equipped = true;
                if l_l_Data_0_0.isrendering then
                    return;
                else
                    l_l_Data_0_0.isrendering = true;
                    l_l_Data_0_0:load();
                    local l_v733_Attribute_0 = v733:GetAttribute("FiremodeIndex");
                    if l_v733_Attribute_0 then
                        l_l_Data_0_0:switchFiremode(l_v733_Attribute_0);
                    end;
                    v24 = 0;
                    if l_l_Data_0_0.data.AimOffsetAttachments then
                        for _, v1432 in pairs(l_l_Data_0_0.tool:GetChildren()) do
                            if v1432:IsA("BasePart") and game:GetService("CollectionService"):HasTag(v1432, "Attachment") and l_l_Data_0_0.data.AimOffsetAttachments[v1432.Name] then
                                v798 = l_l_Data_0_0.data.AimOffsetAttachments[v1432.Name][1];
                                v738 = l_l_Data_0_0.data.AimOffsetAttachments[v1432.Name][2];
                                break;
                            end;
                        end;
                    end;
                    for v1433, v1434 in pairs(v164) do
                        if v1433 and v1434 and MatchKeys(v1434, v2) then
                            l_l_Data_0_0:setaim(true);
                        end;
                    end;
                    v36:ResetWalkSpeed();
                    v239();
                    return;
                end;
            end);
            if v733.Parent == l_Character_0 then
                task.wait();
                v39.Equipped = true;
                l_l_Data_0_0.isrendering = true;
                l_l_Data_0_0:load();
                if l_l_Data_0_0.data.AimOffsetAttachments then
                    for _, v1436 in pairs(l_l_Data_0_0.tool:GetChildren()) do
                        if v1436:IsA("BasePart") and game:GetService("CollectionService"):HasTag(v1436, "Attachment") and l_l_Data_0_0.data.AimOffsetAttachments[v1436.Name] then
                            if not l_l_Data_0_0.aimpart then
                                v798 = l_l_Data_0_0.data.AimOffsetAttachments[v1436.Name][1];
                            end;
                            if not l_l_Data_0_0.aimfov then
                                v738 = l_l_Data_0_0.data.AimOffsetAttachments[v1436.Name][2];
                                break;
                            else
                                break;
                            end;
                        end;
                    end;
                end;
                for v1437, v1438 in pairs(v164) do
                    if v1437 and v1438 and MatchKeys(v1438, v2) then
                        l_l_Data_0_0:setaim(true);
                    end;
                end;
            end;
            v733.Unequipped:Connect(function() --[[ Line: 6864 ]]
                v39.Equipped = false;
                l_l_Data_0_0:unequip();
                l_l_Data_0_0.isrendering = false;
                l_l_Data_0_0:setaim(false);
            end);
            local v1439 = v733:FindFirstChild("Primary", true) and "primary" or v733:FindFirstChild("Secondary", true) and "secondary" or v733:FindFirstChild("Gadget", true) and "gadget" or nil;
            if v1439 then
                local v1440 = l_l_Data_0_0.data.FireMode:match("Auto") and "Auto" or "Semi";
                l_PlayerGui_0:WaitForChild("SG_Package"):WaitForChild("MainGui"):WaitForChild("PlayerStats"):WaitForChild("LocalPlayerStats").info_weapons[v1439 .. "Firemode"].Text = l_l_Data_0_0.data.HideFireMode and "" or string.format("[%s]", v1440);
            end;
            print(v733.Name .. " loaded...");
            return l_l_Data_0_0;
        end;
    end;
    l_HitObject_0 = {};
    CheckIfAdded = function(v1441) --[[ Line: 6885 ]] --[[ Name: CheckIfAdded ]]
        if l_HitObject_0[v1441] then
            return l_HitObject_0[v1441];
        else
            for _, v1443 in pairs(v39.List) do
                if v1443 and v1443.tool == v1441 then
                    return v1443;
                end;
            end;
            return false;
        end;
    end;
    v39.AddToList = function(_, v1445) --[[ Line: 6899 ]] --[[ Name: AddToList ]]
        local v1446 = CheckIfAdded(v1445);
        if v1446 then
            print("Weapon^^already added");
            return v1446;
        else
            l_HitObject_0[v1445] = true;
            local v1447 = v39.new(v1445);
            l_HitObject_0[v1445] = v1447;
            local v1448 = v1445.Name .. tostring(#v39.List + 1);
            v39.List[v1448] = v1447;
            local v1449 = v1445:FindFirstChild("Primary", true) or v1445:FindFirstChild("Secondary", true) or v1445:FindFirstChild("Melee", true) or v1445:FindFirstChild("Gadget", true);
            if v1449 then
                local l_FirstChild_12 = l_MobileUI_0.Buttons.Weapons:FindFirstChild(v1449.Name);
                if l_FirstChild_12 then
                    l_FirstChild_12.TextLabel.Text = v1445.Name;
                end;
            end;
            return v1447;
        end;
    end;
    v39.Load = function() --[[ Line: 6926 ]] --[[ Name: Load ]]
        for _, v1452 in pairs(l_Backpack_0:GetChildren()) do
            if v1452 then
                v39:AddToList(v1452);
            end;
        end;
        l_Backpack_0.ChildAdded:Connect(function(v1453) --[[ Line: 6933 ]]
            v39:AddToList(v1453);
        end);
    end;
    v39.Load();
    v510 = l_LocalPlayer_0:WaitForChild("PlayerGui"):WaitForChild("SG_Package"):WaitForChild("MainGui"):WaitForChild("NumPadInteraction");
    v526 = l_LocalPlayer_0:WaitForChild("PlayerGui"):WaitForChild("SG_Package"):WaitForChild("MainGui"):WaitForChild("SimonSaysInteraction");
    v527 = l_LocalPlayer_0:WaitForChild("PlayerGui"):WaitForChild("SG_Package"):WaitForChild("MainGui"):WaitForChild("SwitchInteraction");
    l_Effects_0 = l_LocalPlayer_0:WaitForChild("PlayerGui"):WaitForChild("SG_Package"):WaitForChild("MainGui"):WaitForChild("ConnectShapesInteraction");
    v529 = l_LocalPlayer_0:WaitForChild("PlayerGui"):WaitForChild("SG_Package"):WaitForChild("MainGui"):WaitForChild("frame_lobbyMenu");
    v566 = function(v1454) --[[ Line: 6947 ]] --[[ Name: useMask ]]
        local l_Mask_0 = l_Character_0:FindFirstChild("Mask");
        if l_Mask_0 == nil and not v69 then
            if not v39.Current then
                v39:AddToList(l_Mask_0);
                l_Humanoid_0:EquipTool(l_Mask_0);
            end;
            print("ERROR FOUND");
            local l_Mask_1 = l_LocalPlayer_0.Backpack:FindFirstChild("Mask");
            if l_Mask_1 then
                l_Mask_1.Parent = l_Character_0;
                print("Error fixed");
            end;
        elseif l_Mask_0 and not v39.Current then
            v39:AddToList(l_Mask_0);
            l_Humanoid_0:EquipTool(l_Mask_0);
        end;
        if v39.Current == nil or v39.Current.tool == nil then
            print("Tool not found, getting tool");
            local l_Mask_2 = l_LocalPlayer_0.Backpack:FindFirstChild("Mask");
            if l_Mask_2 then
                print("TOOL FOUND (POTENTIAL MASK BUG FIXED)");
                l_Humanoid_0:EquipTool(l_Mask_2);
            else
                print("TOOL NOT FOUND (REPORT THIS AS ERROR)");
            end;
        end;
        if v39.Current.tool.Name == "Mask" or not v69 then
            print("used the mask!");
            print(v39.Current.tool.Name == "Mask", v69);
            v69 = true;
            l_PlayerGui_0:WaitForChild("SG_Package"):WaitForChild("MaskOn").Value = true;
            v39.Load();
            local l_status_4, l_result_4 = pcall(function() --[[ Line: 6984 ]]
                v39.Current:maskOn();
            end);
            if not l_status_4 then
                warn(l_result_4);
            end;
            l_Remotes_0:WaitForChild("MaskOn"):FireServer();
            l_MobileUI_0.Buttons.Action.MaskUp.Visible = false;
            task.delay(0.5, function() --[[ Line: 6994 ]]
                for _, v1461 in l_MobileUI_0.Buttons.Weapons:GetChildren() do
                    if v1461.Name ~= "Equipment" and v1461.Name ~= "Grenade" then
                        v1461.Visible = true;
                    end;
                end;
            end);
            if v1454 then
                return;
            end;
        end;
    end;
    v39.switch = function(_, v1463, _) --[[ Line: 7013 ]] --[[ Name: switch ]]
        if not v69 or v80 or v37.Mode ~= "FirstPerson" or v510.Visible or v526.Visible or v527.Visible or l_Effects_0.Visible or v529.Visible or v32 or v71 or v29 or l_Character_0:GetAttribute("CarryingBody") then
            return;
        else
            if typeof(v1463) == "string" then
                v1463 = l_LocalPlayer_0.Backpack:FindFirstChild(v1463, true);
            end;
            v70 = true;
            local v1465 = 0.7;
            local v1466 = 0.7;
            local v1467 = 0.7;
            if v1463.Name == "Primary" then
                v1465 = 0;
            elseif v1463.Name == "Secondary" then
                v1466 = 0;
            elseif v1463.Name == "Gadget" then
                v1467 = 0;
            end;
            l_PlayerGui_0:WaitForChild("SG_Package"):WaitForChild("MainGui").PlayerStats.LocalPlayerStats.info_weapons.primaryAmmo.TextTransparency = v1465;
            l_PlayerGui_0:WaitForChild("SG_Package"):WaitForChild("MainGui").PlayerStats.LocalPlayerStats.info_weapons.primaryAmmoTotal.TextTransparency = v1465;
            l_PlayerGui_0:WaitForChild("SG_Package"):WaitForChild("MainGui").PlayerStats.LocalPlayerStats.info_weapons.primaryFiremode.TextTransparency = v1465;
            l_PlayerGui_0:WaitForChild("SG_Package"):WaitForChild("MainGui").PlayerStats.LocalPlayerStats.info_weapons.secondaryAmmo.TextTransparency = v1466;
            l_PlayerGui_0:WaitForChild("SG_Package"):WaitForChild("MainGui").PlayerStats.LocalPlayerStats.info_weapons.secondaryAmmoTotal.TextTransparency = v1466;
            l_PlayerGui_0:WaitForChild("SG_Package"):WaitForChild("MainGui").PlayerStats.LocalPlayerStats.info_weapons.secondaryFiremode.TextTransparency = v1466;
            l_PlayerGui_0:WaitForChild("SG_Package"):WaitForChild("MainGui").PlayerStats.LocalPlayerStats.info_weapons.gadgetAmmo.TextTransparency = v1467;
            l_PlayerGui_0:WaitForChild("SG_Package"):WaitForChild("MainGui").PlayerStats.LocalPlayerStats.info_weapons.gadgetAmmoTotal.TextTransparency = v1467;
            l_PlayerGui_0:WaitForChild("SG_Package"):WaitForChild("MainGui").PlayerStats.LocalPlayerStats.info_weapons.gadgetFiremode.TextTransparency = v1467;
            if v39.Current and v1463 and v39.Current.tool ~= v1463.Parent then
                if not v39.Current.reloading and not v70 and v39.Current.tool.Name ~= "Mask" then
                    return;
                elseif not v1463 then
                    return;
                else
                    local v1468 = v39.Current and v39.Current.data;
                    local v1469 = v1468 and v1468.UnequipSpeed or 0.5;
                    v39.Current:putAway(true);
                    task.wait(v1469);
                end;
            end;
            local v1470 = 0.6;
            if v1463 then
                local v1471 = v39:AddToList(v1463.Parent);
                if v1471 and v1471.data then
                    v1470 = v1471.data.EquipSpeed or v1470;
                end;
                v27 = v1463.Parent;
                if v28 then
                    v30 = v1463.Parent;
                    return;
                else
                    l_Humanoid_0:EquipTool(v1463.Parent);
                end;
            end;
            task.wait(v1470);
            v70 = false;
            return;
        end;
    end;
    l_UserInputService_0.InputBegan:Connect(function(v1472, _) --[[ Line: 7087 ]]
        if not workspace:GetAttribute("MaskReady") then
            return;
        else
            if v1472.KeyCode == Enum.KeyCode.Backspace and v39.Current == nil and not v32 and not v28 and not v29 and not v71 then
                l_Humanoid_0:EquipTool(v27);
            end;
            if v80 or v39.Current == nil or v37.Mode ~= "FirstPerson" or v510.Visible or v526.Visible or v527.Visible or l_Effects_0.Visible or v529.Visible or v32 or v71 then
                return;
            else
                local l_GadgetEquip_0 = l_Options_1:WaitForChild("Keybinds"):FindFirstChild("GadgetEquip");
                l_GadgetEquip_0 = l_GadgetEquip_0 and Enum.KeyCode[l_GadgetEquip_0.Value] or Enum.KeyCode.Four;
                if not v69 and (v1472.KeyCode == Enum.KeyCode[l_Options_1:WaitForChild("Keybinds"):WaitForChild("MaskEquipment").Value] or v1472.KeyCode == Enum.KeyCode.ButtonX) and l_LocalPlayer_0:WaitForChild("PlayerGui"):WaitForChild("SG_Package"):WaitForChild("MainGui"):WaitForChild("DifficultyDisplay").BackgroundTransparency >= 1 then
                    v566(true);
                elseif v69 and v39.Current and not v39.Current.reloading and not v70 and v39.Current.tool.Name ~= "Mask" then
                    local v1475 = false;
                    local v1476 = l_Character_0:FindFirstChild("Primary", true) and "Primary" or "Secondary";
                    local v1477 = nil;
                    if v1472.KeyCode == Enum.KeyCode[l_Options_1:WaitForChild("Keybinds"):WaitForChild("ToggleGun").Value] or v1472.KeyCode == Enum.KeyCode.ButtonY then
                        v1477 = v1476 == "Primary" and l_LocalPlayer_0.Backpack:FindFirstChild("Secondary", true) or l_LocalPlayer_0.Backpack:FindFirstChild("Primary", true);
                        if v1477 then
                            v1475 = true;
                        end;
                    elseif v1472.KeyCode == Enum.KeyCode[l_Options_1:WaitForChild("Keybinds"):WaitForChild("Primary").Value] then
                        v1477 = l_LocalPlayer_0.Backpack:FindFirstChild("Primary", true);
                        if v1477 then
                            v1475 = true;
                        end;
                    elseif v1472.KeyCode == Enum.KeyCode[l_Options_1:WaitForChild("Keybinds"):WaitForChild("Secondary").Value] then
                        v1477 = l_LocalPlayer_0.Backpack:FindFirstChild("Secondary", true);
                        if v1477 then
                            v1475 = true;
                        end;
                    elseif v1472.KeyCode == l_GadgetEquip_0 then
                        v1477 = l_LocalPlayer_0.Backpack:FindFirstChild("Gadget", true);
                        if v1477 then
                            v1475 = true;
                        end;
                    elseif v1472.KeyCode == Enum.KeyCode[l_Options_1:WaitForChild("Keybinds"):WaitForChild("Melee").Value] then
                        v1477 = l_LocalPlayer_0.Backpack:FindFirstChild("Melee", true);
                        if v1477 then
                            v39:AddToList(v1477.Parent);
                            v1475 = true;
                        end;
                    end;
                    if v1475 then
                        v39:switch(v1477);
                    end;
                end;
                if v39.Current then
                    if MatchKeys(v1472, v2) and v39.Equipped and v39.Current then
                        if v39.Current.data.ShortThrow then
                            v39.Current:attack(v39.Current.data.WeaponType, "ShortThrow");
                        else
                            v39.Current:setaim(true);
                        end;
                    end;
                    if MatchKeys(v1472, v3) and v39.Equipped then
                        v39.Current:attack(v39.Current.data.WeaponType);
                    end;
                    if not MatchKeys(v1472, v10) or not v39.Equipped or not v39.Current or v39.Current.throwGrenade then

                    end;
                    if MatchKeys(v1472, v12) and v39.Equipped and v39.Current and v39.Current.switchFiremode then
                        v39.Current:switchFiremode();
                    end;
                    if MatchKeys(v1472, v13) and v39.Equipped and v39.Current then
                        v39.Current:setinspecting(true);
                    end;
                    if MatchKeys(v1472, v14) and v0 and v39.Equipped and v39.Current then
                        v39.Current:reloaddata();
                    end;
                end;
                return;
            end;
        end;
    end);
    l_v575_0 = false;
    l_v584_1 = 0;
    l_v585_1 = nil;
    local v1478 = nil;
    local v1479 = {};
    local function v1499(v1480) --[[ Line: 7210 ]] --[[ Name: applyAppeareance ]]
        local l_FirstChild_13 = v85:WaitForChild("OwnedWeapons"):FindFirstChild("(Suit)0");
        local v1482 = "Default";
        if l_FirstChild_13 then
            v1482 = l_FirstChild_13.Skin.Value;
        end;
        local l_Color_3 = l_Character_0.Head.Color;
        local l_Color_4 = l_Character_0["Right Arm"].Color;
        local l_Color_5 = l_Character_0["Left Arm"].Color;
        local l_Arms_1 = l_Assets_0.Character.Arms;
        local v1487 = l_Arms_1.Appeareance:FindFirstChild(v1482) or l_Arms_1.Appeareance:FindFirstChild("Default");
        if v1487 then
            v1487 = v1487:Clone();
            local v1488 = v1487.Right:Clone();
            local v1489 = v1487.Left:Clone();
            for _, v1491 in {
                v1488, 
                v1489
            } do
                v1491.Name = v1491.Name .. "Appeareance";
                local v1492 = v1491 == v1488 and v1480.RSkin or v1480.LSkin;
                for _, v1494 in pairs(v1491:GetDescendants()) do
                    if v1494:IsA("BasePart") then
                        v1494.CanCollide = false;
                        v1494.CanTouch = false;
                        v1494.CastShadow = false;
                        v1494.CollisionGroup = "Ammo";
                        if v1494.Name:match("Skin") then
                            v1494.Color = v1491 == v1488 and l_Color_4 or v1491 == v1489 and l_Color_5 or l_Color_3;
                        end;
                        if v1494 ~= v1491.PrimaryPart then
                            local l_WeldConstraint_3 = Instance.new("WeldConstraint");
                            l_WeldConstraint_3.Parent = v1491.PrimaryPart;
                            l_WeldConstraint_3.Part0 = v1491.PrimaryPart;
                            l_WeldConstraint_3.Part1 = v1494;
                            l_WeldConstraint_3.Name = l_WeldConstraint_3.Part0.Name .. "-to-" .. l_WeldConstraint_3.Part1.Name;
                        end;
                        v1494.Anchored = false;
                    end;
                end;
                v1491:PivotTo(v1492.CFrame * l_new_0(0, 0.35, 0) * l_Angles_0(-0, math.rad(v1491 == v1488 and 0 or 0), 0));
                local l_WeldConstraint_4 = Instance.new("WeldConstraint");
                l_WeldConstraint_4.Parent = v1492;
                l_WeldConstraint_4.Part0 = v1492;
                l_WeldConstraint_4.Part1 = v1491.PrimaryPart;
                v1491.Parent = v1492;
            end;
            if v1489 then
                local _ = v1489:FindFirstChild("Watch");
            end;
            local v1498 = v1489 and v1489:FindFirstChild("WatchFace", true);
            task.delay(0.1, function() --[[ Line: 7274 ]]
                if v1498 then
                    l_HeartWatch_0.Adornee = v1498;
                    v1498.Color = l_HeartWatch_0:GetAttribute("WatchColor") or Color3.fromRGB(209, 87, 89);
                end;
            end);
            v1487:Destroy();
        end;
    end;
    local l_lookAt_0 = CFrame.lookAt;
    local l_BodyCarryAttachment_0 = l_Character_0.Torso:WaitForChild("BodyCarryAttachment");
    l_BodyCarryAttachment_0.Parent = l_Character_0:WaitForChild("HumanoidRootPart");
    local v1502 = CFrame.new();
    local v1503 = nil;
    table.insert(v132, function(v1504) --[[ Line: 7294 ]] --[[ Name: step ]]
        for v1505, v1506 in v1479 do
            if not v1505 then
                warn("viewmodel doesn't exist");
                return;
            elseif v1506 then
                v1506(v1504);
                if l_Character_0:GetAttribute("CarryingBody") then
                    if v1503 and v1503.PrimaryPart then
                        local l_AlignPosition_0 = l_Character_0.Torso:FindFirstChild("AlignPosition");
                        local l_AlignOrientation_0 = l_Character_0.Torso:FindFirstChild("AlignOrientation");
                        if not l_AlignPosition_0 or l_AlignOrientation_0 then

                        end;
                        local v1509 = v39.calculateBob(1, 1);
                        local v1510 = v1503:GetAttribute("Offset") or CFrame.new(2, -0, -0) * CFrame.Angles(1.5707963267948966, 3.141592653589793, 0) * v1509;
                        local v1511 = l_CurrentCamera_0.CFrame * v1502 * v1510;
                        v1503.PrimaryPart.Anchored = true;
                        v1503:PivotTo(v1511);
                    else
                        l_BodyCarryAttachment_0.WorldCFrame = l_CurrentCamera_0.CFrame * CFrame.new(2.4, -1, 0.5) * CFrame.Angles(1.5707963267948966, 3.141592653589793, 0);
                    end;
                end;
            end;
        end;
    end);
    local function v1528(v1512) --[[ Line: 7335 ]] --[[ Name: viewmodelLoop ]]
        local _ = workspace.CurrentCamera;
        local l_Focus_1 = v1512:WaitForChild("Focus");
        local v1515 = v1512:GetAttribute("Offset") or CFrame.new(0, -1, 0);
        v1502 = CFrame.new(0, -4, 0);
        local l_v1515_0 = v1515;
        local l_v1512_Attribute_0 = v1512:GetAttribute("Equipped");
        local v1518 = CFrame.new();
        v1512.PrimaryPart.Anchored = true;
        v1512:GetAttributeChangedSignal("Offset"):Connect(function() --[[ Line: 7352 ]]
            l_v1515_0 = v1512:GetAttribute("Offset");
        end);
        local _ = os.clock();
        v1479[v1512] = function(v1520) --[[ Line: 7360 ]]
            if not v1512.PrimaryPart then
                return;
            else
                local l_Value_18 = l_Focus_1.Value;
                local l_CFrame_6 = l_CurrentCamera_0.CFrame;
                local v1523 = l_CFrame_6 * l_v1515_0;
                if l_Value_18 and l_Focus_1:GetAttribute("LookAt") then
                    local v1524 = l_Value_18:GetPivot() * (l_Focus_1:GetAttribute("FocusOffset") or l_new_0());
                    v1523 = l_lookAt_0(v1523.Position, v1524.Position);
                    local l_Magnitude_2 = (l_CFrame_6.Position - v1524.Position).Magnitude;
                    local l_l_Focus_1_Attribute_0 = l_Focus_1:GetAttribute("ViewmodelDistance");
                    if l_l_Focus_1_Attribute_0 and l_Magnitude_2 < l_l_Focus_1_Attribute_0 and l_Magnitude_2 > 0 then
                        v1523 = v1523 * l_new_0(0, 0, l_l_Focus_1_Attribute_0 - l_Magnitude_2);
                    end;
                end;
                local v1527 = v39.calculateBob(1, 1);
                v1518 = v1523 * v1502 * v1527;
                v1512.PrimaryPart.CFrame = v1518;
                if l_v1512_Attribute_0 then
                    v1502 = v1502:Lerp(CFrame.new(0, 0, 0), 0.4 * (v1520 * 60));
                    return;
                else
                    v1502 = v1502:Lerp(CFrame.new(0, -4, 0), 0.4 * (v1520 * 60));
                    return;
                end;
            end;
        end;
        v1512:GetAttributeChangedSignal("Equipped"):Connect(function() --[[ Line: 7409 ]]
            l_v1512_Attribute_0 = v1512:GetAttribute("Equipped");
        end);
    end;
    local function v1533(_) --[[ Line: 7414 ]] --[[ Name: createViewmodel ]]
        local v1530 = game:GetService("ReplicatedStorage"):WaitForChild("RS_Package"):WaitForChild("Assets"):WaitForChild("Character"):WaitForChild("InteractViewmodel"):Clone();
        v1499(v1530);
        for _, v1532 in v1530:GetDescendants() do
            if v1532:IsA("BasePart") then
                v1532.CanCollide = false;
                v1532.CanTouch = false;
                v1532.CastShadow = false;
                v1532.CanQuery = false;
            end;
        end;
        v1530.Parent = workspace;
        v1528(v1530);
        return v1530;
    end;
    local function v1545(v1534, v1535, v1536) --[[ Line: 7439 ]] --[[ Name: handleFPInteraction ]]
        local v1537 = nil;
        local v1538 = 1;
        local v1539 = v1534 and v1534.Parent;
        local v1540 = v1539 and v1539.Parent;
        if v1534 and v1534:IsA("ProximityPrompt") then
            v1537 = v1540 and v1540.Parent == workspace.Criminals and "DownedPlayer" or v1540.Name;
            v1538 = v1534.HoldDuration;
        end;
        if v1536 then
            v1538 = v1536.Duration or 2;
            v1540 = v1536.Model;
            v1539 = v1536.RootPart or v1540.PrimaryPart;
            v1534 = not v1536.Stop;
            v1537 = v1540 and v1540.Name;
        end;
        if v1538 < 0.5 then
            if v39.Current then
                v39.Current:playGesture("Grab");
            end;
            return;
        else
            print("INTERACT: " .. (v1534 and "TRUE" or "FALSE") .. " - " .. (v1537 or "N/A"));
            v28 = v1534;
            if l_Character_0:GetAttribute("InteractDebounce") and v1534 then
                warn("FIRED WHEN UNDER DEBOUNCE?");
            end;
            if v1534 then
                l_v584_1 = (l_v584_1 + 1) % 100;
                local l_l_v584_1_0 = l_v584_1;
                v70 = true;
                v30 = v30 or v39.Current and v39.Current.tool;
                if not l_v575_0 then
                    l_v575_0 = true;
                    if v39.Current then
                        v39.Current:putAway(true);
                    end;
                end;
                if v28 and l_v584_1 == l_l_v584_1_0 then
                    l_Humanoid_0:UnequipTools();
                end;
                if l_v585_1 then
                    print("VIEWMODEL ALREADY EXISTS, DESTROYING");
                    if v1478 then
                        v1478.stop(true);
                    end;
                    l_v585_1:SetAttribute("Equipped", false);
                    l_v585_1:Destroy();
                end;
                l_v585_1 = v1533(v1537);
                if l_v585_1 then
                    local l_Focus_2 = l_v585_1:FindFirstChild("Focus");
                    if l_Focus_2 then
                        l_Focus_2.Value = v1539;
                    end;
                    print("SETTING FOCUS");
                    v1478 = require(l_v585_1.Animate);
                    if v1478.animate(v1537, v1538) then
                        l_v585_1:SetAttribute("Equipped", true);
                        v86 = l_v585_1;
                        return;
                    else
                        l_v585_1:Destroy();
                        l_v585_1 = nil;
                        v1478 = nil;
                        return;
                    end;
                end;
            elseif not v1534 and v30 then
                v29 = true;
                local l_l_v585_1_0 = l_v585_1;
                print(l_v585_1);
                if l_l_v585_1_0 then
                    if v1478 then
                        v1478.stop(v1535);
                    end;
                    l_Character_0:SetAttribute("InteractDebounce", true);
                    task.delay(0.5, function() --[[ Line: 7537 ]]
                        l_Character_0:SetAttribute("InteractDebounce", false);
                    end);
                    game.Debris:AddItem(l_l_v585_1_0, 0.5);
                    task.wait(0.3);
                    if l_l_v585_1_0 and l_l_v585_1_0.Parent ~= nil then
                        l_l_v585_1_0:SetAttribute("Equipped", false);
                        if v1479[l_l_v585_1_0] then
                            v1479[l_l_v585_1_0] = nil;
                        end;
                        if v86 == l_l_v585_1_0 then
                            v86 = nil;
                        end;
                    end;
                end;
                if l_v575_0 and not v39.Current then
                    if not v71 then
                        l_Humanoid_0:EquipTool(v30);
                    end;
                elseif v39.Current then
                    v39.Current:putAway(false);
                end;
                v30 = nil;
                if v39.Current and v39.Current.toolAnimations and v39.Current.toolAnimations.Grab then
                    v39.Current.toolAnimations.Grab.Priority = Enum.AnimationPriority.Action3;
                    v39.Current.toolAnimations.Grab:Play(0.1, 1, 1.2);
                end;
                task.wait(0.1);
                if v39.Current then
                    v39.Current:putAway(false);
                end;
                v29 = false;
                repeat
                    task.wait();
                until not v39.Current or  v39.Current or not v39.Current.puttingAway;
                if not v30 then
                    l_v575_0 = false;
                    v70 = false;
                    return;
                end;
            elseif not v1534 and v39.Current == nil and not v32 and not v71 then
                local v1544 = v27:FindFirstChild("Primary") or v27:FindFirstChild("Secondary") or v27:FindFirstChild("Melee") or v27:FindFirstChild("Gadget");
                if v1544 then
                    v39:switch(v1544.Name);
                    return;
                else
                    l_Humanoid_0:EquipTool(v27);
                end;
            end;
            return;
        end;
    end;
    l_PlayerGui_0:WaitForChild("SG_Package"):WaitForChild("MainGui"):WaitForChild("Events"):WaitForChild("Interact").Event:Connect(function(v1546, v1547, v1548) --[[ Line: 7606 ]]
        v1545(v1546, v1547, v1548);
    end);
    game:GetService("ReplicatedStorage"):WaitForChild("RS_Package"):WaitForChild("Remotes"):WaitForChild("AnimEvent").OnClientEvent:Connect(function(v1549, v1550, v1551) --[[ Line: 7613 ]]
        v1545(v1549, v1550, v1551);
    end);
    local v1552 = nil;
    local v1553 = nil;
    game:GetService("ReplicatedStorage"):WaitForChild("RS_Package"):WaitForChild("Remotes"):WaitForChild("EquipEvent").OnClientEvent:Connect(function(v1554, v1555) --[[ Line: 7620 ]]
        if v1503 and v1503.PrimaryPart and v1503 ~= v1555 then
            v1503.PrimaryPart.Anchored = false;
        end;
        if v1552 then
            if v1503 then
                v1503.PrimaryPart.Anchored = false;
                v1503 = nil;
            end;
            if v1553 then
                v1553.stop(true);
                task.wait(0.3);
            end;
            v1552:SetAttribute("Equipped", false);
            task.wait(0.2);
            game.Debris:AddItem(v1552, 0.3);
            v1552 = nil;
            v1553 = nil;
        end;
        if v1555 then
            v1503 = v1555;
            if l_v585_1 then
                if v1478 then
                    v1478.stop(true);
                end;
                task.wait(0.2);
                l_v585_1:SetAttribute("Equipped", false);
                game.Debris:AddItem(l_v585_1, 0.2);
            end;
            v1552 = v1533("CarryingBody");
            if v1552 then
                v1553 = require(v1552.Animate);
                if v1553.animate("CarryingBody", 0.2) then
                    v1552:SetAttribute("Equipped", true);
                    v86 = v1552;
                else
                    v1552:Destroy();
                    v1552 = nil;
                    v1553 = nil;
                end;
            end;
        end;
        task.spawn(function() --[[ Line: 7680 ]]
            if v1554 then
                l_Humanoid_0:UnequipTools();
                v71 = false;
                if v39.Current == nil and not v32 and not v71 then
                    local v1556 = v27:FindFirstChild("Primary") or v27:FindFirstChild("Secondary") or v27:FindFirstChild("Melee") or v27:FindFirstChild("Gadget");
                    if v1556 then
                        v39:switch(v1556.Name);
                        print("reequipnig tools 4");
                        return;
                    else
                        print("reequipnig tools 3");
                        l_Humanoid_0:EquipTool(v27);
                        return;
                    end;
                end;
            else
                v71 = true;
                l_Humanoid_0:UnequipTools();
            end;
        end);
    end);
    game:GetService("ReplicatedStorage"):WaitForChild("RS_Package"):WaitForChild("Remotes"):WaitForChild("YellEvent").Event:Connect(function(v1557) --[[ Line: 7707 ]]
        if typeof(v1557) == "table" and v1557.Type then
            if v1557.Type == "Gesture" then
                if v39.Current then
                    v39.Current:playGesture(v1557.Name);
                    return;
                end;
            elseif v1557.Type == "Interact" then

            end;
        end;
    end);
    l_UserInputService_0.InputEnded:Connect(function(v1558, _) --[[ Line: 7723 ]]
        if v80 then
            return;
        else
            if MatchKeys(v1558, v2) and v39.Equipped and v39.Current then
                if v39.Current.data and v39.Current.data.WeaponType == "Gadget" and v39.Current.data.ShortThrow then
                    v39.Current:usegadget(false);
                else
                    v39.Current:setaim(false);
                end;
            end;
            if MatchKeys(v1558, v3) and v39.Current ~= nil then
                if v39.Current.data and v39.Current.data.WeaponType == "Gun" then
                    v39.Current:setshooting(false);
                    return;
                elseif v39.Current.data and v39.Current.data.WeaponType == "Melee" then
                    v39.Current:usemelee(false);
                    return;
                elseif v39.Current.data and v39.Current.data.WeaponType == "Gadget" then
                    v39.Current:usegadget(false);
                end;
            end;
            return;
        end;
    end);
    Step = function(v1560) --[[ Line: 7750 ]] --[[ Name: Step ]]
        for _, v1562 in pairs(v39.List) do
            if v1562 then
                v1562.step(v1560);
            end;
        end;
    end;
    table.insert(v132, Step);
    l_PlayerGui_0:WaitForChild("SG_Package"):WaitForChild("MainGui"):WaitForChild("Events"):WaitForChild("Mask").Event:connect(function(_) --[[ Line: 7761 ]]
        if not v69 then
            v566();
        end;
    end);
    local l_Caught_1 = game:GetService("ReplicatedStorage"):WaitForChild("RS_Package"):WaitForChild("ReplicatedGameStatus"):WaitForChild("Caught");
    local l_GameStarted_2 = game:GetService("ReplicatedStorage"):WaitForChild("RS_Package"):WaitForChild("ReplicatedGameStatus"):WaitForChild("GameStarted");
    spawn(function() --[[ Line: 7779 ]]
        repeat
            wait();
        until l_GameStarted_2.Value;
        if v33 then
            l_MobileUI_0.Visible = true;
            if l_PlayerGui_0:FindFirstChild("TouchGui") then

            end;
        end;
        print("GAME STARTED~~~");
        local l_PlaceId_0 = game.PlaceId;
        l_PlayerGui_0:WaitForChild("SG_Package"):WaitForChild("MainGui"):WaitForChild("Events"):WaitForChild("AddIgnorable"):Fire(v122);
        print("Checking for mask!");
        repeat
            wait();
            local l_Mask_3 = l_Character_0:FindFirstChild("Mask");
            if l_Mask_3 then
                v39:AddToList(l_Mask_3);
                l_Humanoid_0:EquipTool(l_Mask_3);
            end;
        until v39.Current;
        task.spawn(function() --[[ Line: 7803 ]]
            task.wait(0.05);
            if v39.Current then
                v39.Current:setinspecting(true);
            end;
        end);
        local _ = l_Character_0:WaitForChild("Mask");
        local v1569 = false;
        print("Weapon selected and detected!");
        task.spawn(function() --[[ Line: 7815 ]]
            while not v69 do
                local l_Mask_5 = l_Character_0:FindFirstChild("Mask");
                if l_Mask_5 == nil and not v69 then
                    if not v39.Current then
                        v39:AddToList(l_Mask_5);
                        l_Humanoid_0:EquipTool(l_Mask_5);
                    end;
                    print("ERROR FOUND");
                    local l_Mask_6 = l_LocalPlayer_0.Backpack:FindFirstChild("Mask");
                    if l_Mask_6 then
                        l_Mask_6.Parent = l_Character_0;
                        print("Error fixed");
                    end;
                elseif l_Mask_5 and not v39.Current then
                    v39:AddToList(l_Mask_5);
                    l_Humanoid_0:EquipTool(l_Mask_5);
                end;
                wait(1);
            end;
        end);
        for _, v1573 in pairs(v41) do
            if v1573 == l_PlaceId_0 and not v69 then
                v1569 = true;
                break;
            end;
        end;
        if v1569 then
            if workspace:GetAttribute("MaskReady") then
                if not v69 then
                    v566();
                end;
            else
                local v1574 = nil;
                do
                    local l_v1574_0 = v1574;
                    l_v1574_0 = workspace:GetAttributeChangedSignal("MaskReady"):connect(function() --[[ Line: 7861 ]]
                        if workspace:GetAttribute("MaskReady") then
                            if not v69 then
                                v566();
                            end;
                            l_v1574_0:Disconnect();
                        end;
                    end);
                end;
            end;
        end;
        l_Caught_1.Changed:connect(function(v1576) --[[ Line: 7872 ]]
            if v1576 and not v69 then
                v566();
            end;
        end);
        if l_Caught_1.Value and not v69 then
            v566();
        end;
    end);
end;
l_Remotes_0.Bullet.OnClientEvent:Connect(function(v1577) --[[ Line: 7925 ]]
    if v1577.Player and v1577.Player ~= l_LocalPlayer_0 then
        local v1578 = v1577.Model and v1577.Model:FindFirstChild("Muzzle");
        if v1578 then
            for _, v1580 in pairs(v1578:GetChildren()) do
                if v1580 then
                    if v1580:IsA("Attachment") and v1580.Name == "FX" then
                        for _, v1582 in v1580:GetChildren() do
                            if v1582:IsA("ParticleEmitter") then
                                v1582:Emit(v1582.Rate);
                            end;
                        end;
                    elseif l_Value_3 == 2 and v1580:IsA("ParticleEmitter") then
                        v1580:Emit(v1580.Rate);
                    elseif l_Value_3 == 2 and (v1580:IsA("PointLight") or v1580:IsA("SpotLight")) then
                        spawn(function() --[[ Line: 7940 ]]
                            v1580.Enabled = true;
                            wait();
                            v1580.Enabled = false;
                        end);
                    elseif l_Value_3 == 2 and v1580:IsA("Smoke") then
                        spawn(function() --[[ Line: 7946 ]]
                            v1580.Enabled = true;
                            wait(0.1);
                            v1580.Enabled = false;
                        end);
                    elseif v1580:IsA("Sound") and v1577.UseAmmo then
                        if v1580.Looped then
                            local l_ShotEnd_1 = v1580:FindFirstChild("ShotEnd");
                            v1580.Playing = true;
                            v1580:SetAttribute("LastShot", tick() + 0.1);
                            if l_ShotEnd_1 then
                                l_ShotEnd_1:Stop();
                            end;
                            do
                                local l_l_ShotEnd_1_0 = l_ShotEnd_1;
                                task.delay(0.11666666666666667, function() --[[ Line: 7962 ]]
                                    if tick() >= v1580:GetAttribute("LastShot") then
                                        v1580:Stop();
                                        if l_l_ShotEnd_1_0 then
                                            l_l_ShotEnd_1_0 = l_l_ShotEnd_1_0:Clone();
                                            l_l_ShotEnd_1_0.Parent = v1578;
                                            l_l_ShotEnd_1_0.PlayOnRemove = true;
                                            l_l_ShotEnd_1_0:Destroy();
                                        end;
                                    end;
                                end);
                            end;
                        else
                            local v1585 = v1580:Clone();
                            v1585.Parent = v1578;
                            v1585.PlayOnRemove = true;
                            v1585:Destroy();
                        end;
                    end;
                end;
            end;
        end;
        v38.new(v1577);
    end;
end);
CharAdded = function(_) --[[ Line: 7989 ]] --[[ Name: CharAdded ]]
    repeat
        wait();
    until l_LocalPlayer_0.Character ~= nil;
    l_Backpack_0 = l_LocalPlayer_0:WaitForChild("Backpack");
    l_PlayerGui_0 = l_LocalPlayer_0:WaitForChild("PlayerGui");
    l_Character_0 = l_LocalPlayer_0.Character;
    l_HumanoidRootPart_0 = l_Character_0:WaitForChild("HumanoidRootPart");
    l_Humanoid_0 = l_Character_0:WaitForChild("Humanoid");
    l_Humanoid_0:SetStateEnabled(Enum.HumanoidStateType.Jumping, false);
    l_BodyVelocity_0 = Instance.new("BodyVelocity");
    l_BodyVelocity_0.Name = "JumpVel";
    l_BodyVelocity_0.MaxForce = Vector3.new(0, 0, 0, 0);
    l_BodyVelocity_0.Velocity = l_new_1();
    l_BodyVelocity_0.Parent = l_HumanoidRootPart_0;
    l_Head_0 = l_Character_0:WaitForChild("Head");
    v120 = Instance.new("ScreenGui", l_PlayerGui_0);
    v120.Name = "MouceIcon";
    v120.Enabled = false;
    v121 = Instance.new("ImageLabel", v120);
    v121.Name = "Icon";
    v121.BackgroundTransparency = 1;
    v121.Size = UDim2.new(0, 10, 0, 10);
    v121.Position = UDim2.new(0.5, -v121.Size.X.Offset / 2, 0.5, -v121.Size.Y.Offset / 2);
    v121.Image = "";
    l_Stamina_0 = l_Character_0:FindFirstChild("Stamina");
    l_MaxStamina_0 = l_Character_0:FindFirstChild("MaxStamina");
    if l_Stamina_0 == nil then
        local v1587 = nil;
        do
            local l_v1587_0 = v1587;
            l_v1587_0 = l_Character_0.ChildAdded:connect(function(v1589) --[[ Line: 8016 ]]
                if v1589.Name == "Stamina" then
                    l_Stamina_0 = v1589;
                    l_v1587_0:Disconnect();
                end;
            end);
        end;
    end;
    if l_MaxStamina_0 == nil then
        local v1590 = nil;
        do
            local l_v1590_0 = v1590;
            l_v1590_0 = l_Character_0.ChildAdded:connect(function(v1592) --[[ Line: 8025 ]]
                if v1592.Name == "MaxStamina" then
                    l_MaxStamina_0 = v1592;
                    l_v1590_0:Disconnect();
                end;
            end);
        end;
    end;
    if v39.List then
        v39.Current = {};
        for _, v1594 in pairs(v39.List) do
            if v1594 then

            end;
        end;
        v39.Load();
    end;
    v69 = false;
    v1 = {
        Enum.KeyCode[l_Options_1:WaitForChild("Keybinds"):WaitForChild("Run").Value], 
        Enum.KeyCode.ButtonL3
    };
    v2 = {
        Enum.UserInputType.MouseButton2, 
        Enum.KeyCode[l_Options_1:WaitForChild("Keybinds"):WaitForChild("Aim").Value], 
        Enum.KeyCode.ButtonL2
    };
    v9 = {
        Enum.KeyCode[l_Options_1:WaitForChild("Keybinds"):WaitForChild("AltAim").Value], 
        Enum.KeyCode.DPadRight
    };
    v3 = {
        Enum.UserInputType.MouseButton1, 
        Enum.KeyCode.ButtonR2
    };
    v4 = {
        Enum.KeyCode.Space, 
        Enum.KeyCode.ButtonA
    };
    v5 = {
        Enum.KeyCode[l_Options_1:WaitForChild("Keybinds"):WaitForChild("LeanR").Value]
    };
    v6 = {
        Enum.KeyCode[l_Options_1:WaitForChild("Keybinds"):WaitForChild("LeanL").Value]
    };
    v7 = {
        Enum.KeyCode[l_Options_1:WaitForChild("Keybinds"):WaitForChild("Reload").Value], 
        Enum.KeyCode.ButtonX
    };
    v10 = {
        Enum.KeyCode.Four, 
        Enum.KeyCode.DPadUp
    };
    v12 = {
        Enum.KeyCode[l_Options_1:WaitForChild("Keybinds"):WaitForChild("Firemode").Value], 
        Enum.KeyCode.DPadLeft
    };
    local v1595 = {
        Equipment = true
    };
    local v1596 = {
        Gadget = "GadgetEquip", 
        Interact = "InteractShout", 
        Equipment = "MaskEquipment", 
        Sprint = "Run"
    };
    local v1597 = {
        One = "1", 
        Two = "2", 
        Three = "3", 
        Four = "4", 
        Five = "5", 
        LeftControl = "LCTRL", 
        RightControl = "RCTRL", 
        LeftShift = "LSHIFT", 
        RightShift = "RSHIFT", 
        LeftAlt = "LALT", 
        RightAlt = "RALT"
    };
    print("setting up keybinds.");
    for _, v1599 in l_PlayerGui_0:WaitForChild("SG_Package"):WaitForChild("MainGui"):WaitForChild("frame_lobbyMenu"):WaitForChild("controls").keys:GetChildren() do
        if v1599:IsA("TextLabel") then
            local v1600 = v1596[v1599.Name] or v1599.Name;
            local v1601 = l_Options_1:WaitForChild("Keybinds"):FindFirstChild(v1599.Name) or l_Options_1:WaitForChild("Keybinds"):FindFirstChild(v1600);
            local v1602 = l_Options_1:WaitForChild("Gameplay"):FindFirstChild("Toggle" .. v1600) or l_Options_1:WaitForChild("Gameplay"):FindFirstChild("Toggle" .. v1599.Name);
            if v1601 then
                local l_Value_19 = v1601.Value;
                v1599.Text = (v1597[l_Value_19] or l_Value_19):upper();
            elseif v1600 == "Movement" then
                local v1604 = "%s / %s / %s / %s";
                local l_Forward_0 = l_Options_1:WaitForChild("Keybinds"):FindFirstChild("Forward");
                l_Forward_0 = l_Forward_0 and l_Forward_0.Value or "W";
                local l_Backward_0 = l_Options_1:WaitForChild("Keybinds"):FindFirstChild("Backward");
                l_Backward_0 = l_Backward_0 and l_Backward_0.Value or "S";
                local l_Left_0 = l_Options_1:WaitForChild("Keybinds"):FindFirstChild("Left");
                l_Left_0 = l_Left_0 and l_Left_0.Value or "A";
                local l_Right_0 = l_Options_1:WaitForChild("Keybinds"):FindFirstChild("Right");
                local v1609 = l_Right_0 and l_Right_0.Value or "D";
                v1599.Text = string.format(v1604, l_Forward_0, l_Left_0, l_Backward_0, v1609):upper();
            elseif v1600 == "Lean" then
                local l_LeanL_0 = l_Options_1:WaitForChild("Keybinds"):FindFirstChild("LeanL");
                l_LeanL_0 = l_LeanL_0 and l_LeanL_0.Value or "Q";
                local l_LeanR_0 = l_Options_1:WaitForChild("Keybinds"):FindFirstChild("LeanR");
                v1599.Text = (l_LeanL_0 .. " / " .. (l_LeanR_0 and l_LeanR_0.Value or "E")):upper();
            else
                print(v1600, v1599.Name);
            end;
            if v1600 == "Aim" then
                v1599.Text = "RMB / " .. v1599.Text;
            end;
            if v1602 and not v1602.Value or v1595[v1599.Name] then
                v1599.Text = "(HOLD) " .. v1599.Text;
            end;
        end;
    end;
    print("done!");
    l_MobileUI_0 = l_PlayerGui_0:WaitForChild("SG_Package"):WaitForChild("MainGui"):WaitForChild("MobileUI");
    local l_Buttons_0 = l_MobileUI_0:WaitForChild("Buttons");
    local function v1615(v1613, v1614) --[[ Line: 8157 ]] --[[ Name: setActive ]]
        if v1613.Name:match("Jump") then
            v1613.ImageRectOffset = Vector2.new(v1614 and 146 or 1, 146);
            return;
        else
            v1613.ImageColor3 = v1614 and Color3.fromRGB(152, 152, 152) or Color3.fromRGB(0, 0, 0);
            return;
        end;
    end;
    local v1616 = false;
    local v1617 = false;
    l_Buttons_0.Action.Sprint.MouseButton1Down:Connect(function() --[[ Line: 8168 ]]
        v36:SetSprint(not v36.Sprinting);
        v1615(l_Buttons_0.Action.Sprint, v36.Sprinting);
    end);
    l_Buttons_0.Action.JumpButton.MouseButton1Down:Connect(function() --[[ Line: 8173 ]]
        v1616 = true;
        v1615(l_Buttons_0.Action.JumpButton, true);
        while v1616 do
            v36:Jump();
            task.wait();
        end;
    end);
    l_Buttons_0.Action.JumpButton.MouseButton1Up:Connect(function() --[[ Line: 8182 ]]
        v1616 = false;
        v1615(l_Buttons_0.Action.JumpButton, false);
    end);
    l_Buttons_0.Weapons.Aim.MouseButton1Down:Connect(function() --[[ Line: 8189 ]]
        if v39.Equipped and v39.Current then
            v39.Current:setaim(not v39.Current.aiming);
            v1615(l_Buttons_0.Weapons.Aim, v39.Current.aiming);
        end;
    end);
    l_Buttons_0.Weapons.Attack.MouseButton1Down:Connect(function() --[[ Line: 8198 ]]
        if v39.Equipped and v39.Current then
            v1615(l_Buttons_0.Weapons.Attack, true);
            v1617 = true;
            while v1617 do
                if v39.Current.data and v39.Current.data.WeaponType == "Gun" then
                    v39.Current:setshooting(true);
                elseif v39.Current.data and v39.Current.data.WeaponType == "Melee" then
                    v39.Current:usemelee(true);
                end;
                task.wait();
            end;
        end;
    end);
    l_Buttons_0.Weapons.Attack.MouseButton1Up:Connect(function() --[[ Line: 8215 ]]
        if v39.Equipped and v39.Current then
            v1617 = false;
            v1615(l_Buttons_0.Weapons.Attack, false);
            if v39.Current.data and v39.Current.data.WeaponType == "Gun" then
                v39.Current:setshooting(false);
                return;
            elseif v39.Current.data and v39.Current.data.WeaponType == "Melee" then
                v39.Current:usemelee(false);
            end;
        end;
    end);
    l_Buttons_0.Weapons.Grenade.MouseButton1Down:Connect(function() --[[ Line: 8230 ]]
        if not v39.Equipped or not v39.Current or v39.Current.throwGrenade then

        end;
    end);
    l_Buttons_0.Weapons.Reload.MouseButton1Down:Connect(function() --[[ Line: 8238 ]]
        if v39.Current then
            local v1618, _, v1620 = v39.Current:getAmmo();
            if (v39.Current.data.WeaponType == "Gun" or v39.Current.data.WeaponType == "Gadget") and v1618 and v1618 < v1620 then
                v1615(l_Buttons_0.Weapons.Reload, true);
                v39.Current:setreloading(true);
                v1615(l_Buttons_0.Weapons.Reload, false);
                return;
            else
                v39.Current:setinspecting(true);
            end;
        end;
    end);
    l_Buttons_0.Weapons.Primary.MouseButton1Down:Connect(function() --[[ Line: 8256 ]]
        v39:switch("Primary");
    end);
    l_Buttons_0.Weapons.Secondary.MouseButton1Down:Connect(function() --[[ Line: 8260 ]]
        v39:switch("Secondary");
    end);
    l_Buttons_0.Weapons.Melee.MouseButton1Down:Connect(function() --[[ Line: 8265 ]]
        v39:switch("Melee");
    end);
    l_Buttons_0.Action.MaskUp.MouseButton1Down:Connect(function() --[[ Line: 8269 ]]
        print("firing mask event?");
        l_PlayerGui_0:WaitForChild("SG_Package"):WaitForChild("MainGui"):WaitForChild("Events"):WaitForChild("Mask"):Fire();
    end);
end;
l_LocalPlayer_0.CharacterAdded:Connect(CharAdded);
if l_LocalPlayer_0.Character then
    CharAdded(l_LocalPlayer_0.Character);
end;
l_RunService_0.Heartbeat:Connect(function(v1621) --[[ Line: 8309 ]]
    for _, v1623 in pairs(v131) do
        if v1623 then
            v1623(v1621);
        end;
    end;
end);
l_RunService_0.RenderStepped:Connect(function(v1624) --[[ Line: 8317 ]]
    for _, v1626 in pairs(v132) do
        if v1626 then
            v1626(v1624);
        end;
    end;
end);