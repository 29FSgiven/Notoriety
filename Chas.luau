


-- alexchassis2.lua

-- Made By drxck x shzexi9e3ca
-- This script was rewritten in 2023 ( Y.M.H )  
-- Time 2023-02-23 01:18:13
-- 2023x2025


-- ( )   ( )                                / \_/ \     (_ )      ( )   ( ) ( )                  _ 
--  \ \_/ /   _ _   __   ___ ___  _   _ _ __|     |  __  | |   __ | |/ )| |_| |  _ _  ___    ___(_)
--    \ /   / _  )/ _  \  _   _  \ ) ( )  __) (_) |/ __ \| | / __ \   ( |  _  |/ _  )  _  \/ ___) |
--    | |  ( (_| | (_) | ( ) ( ) | (_) | |  | | |  ___/| |(  ___/ |\ \| | | | (_| | ( ) | (___| |
--    (_)   \__ _)\__  |_) (_) (_)\___/(_)  (_) (_)\____)___)\____)_) (_)_) (_)\__ _)_) (_)\____)_)
--               ( )_) |                                                                           
--                \___/ 



local l__ReplicatedStorage__1 = game:GetService("ReplicatedStorage");
local v2 = require(l__ReplicatedStorage__1.Module.Math);
local l__LocalPlayer__3 = game:GetService("Players").LocalPlayer;
local v4 = function()
	return Vector3.new();
end;
local l__ControlModule__5 = l__LocalPlayer__3.PlayerScripts:WaitForChild("PlayerModule", 5).ControlModule;
if l__ControlModule__5 then
	local u1 = require(l__ControlModule__5);
	v4 = function()
		return u1:GetMoveVector();
	end;
end;
local v6 = {
	Dirtbike = {}
};
local function u2(p1, p2, p3)
	for v8, v11 in next, Enum.HumanoidStateType:GetEnumItems() do
		if v11 ~= Enum.HumanoidStateType.Dead and v11 ~= Enum.HumanoidStateType.None and v11 ~= Enum.HumanoidStateType.Jumping then
			p1.Humanoid:SetStateEnabled(v11, p2);
		end;
	end
	p1.Humanoid:ChangeState(Enum.HumanoidStateType.Seated);
end;
v6.Dirtbike.VehicleEnter = function(p4, p5)
	u2(p5, false, not p4.Passenger);
end;
local l__Vector3_new__3 = Vector3.new;
local l__CFrame_new__4 = CFrame.new;
local l__CFrame_Angles__5 = CFrame.Angles;
v6.Dirtbike.UpdateWheel = function(p6, p7)
	local v12 = nil;
	v12 = p7.vh;
	if not p7.Front then
		if p7.Back then
			p7.HoldJoint.C1 = l__CFrame_new__4(0, -v12, 0) * l__CFrame_new__4(0, p7.HoldSize.Y * 1.5, -p7.HoldSize.Z * 0.5 + 0.05) * l__CFrame_Angles__5(0, 0, math.pi);
			p7.VisualJoint.C1 = l__CFrame_new__4(0, -v12 + p7.VisualHalfHeight, 0) * l__CFrame_Angles__5(p6.WheelRotation, 0, 0);
		end;
		return;
	end;
	local v13 = CFrame.fromAxisAngle(l__Vector3_new__3(0, 1, 1).unit, -p6.VisualTurnAngle);
	p7.HoldJoint.C1 = l__CFrame_new__4(0, -v12, 0) * l__CFrame_new__4(0, p7.HoldSize.Y * 1.5 - 0.1, p7.HoldSize.Z * 0.5 - 0.05) * v13 * l__CFrame_Angles__5(0, 0, math.pi);
	p7.VisualJoint.C1 = l__CFrame_new__4(0, -v12 + p7.VisualHalfHeight, 0) * v13 * l__CFrame_Angles__5(p6.WheelRotation, 0, 0);
end;
local l__vectorToObjectSpace__6 = CFrame.new().vectorToObjectSpace;
v6.Dirtbike.UpdateHQ = function(p8, p9)
	local l__Engine__14 = p8.Model.Engine;
	local v15 = l__vectorToObjectSpace__6(l__Engine__14.CFrame, l__Engine__14.Velocity);
	local v16 = l__Engine__14.CFrame.upVector:Dot(l__Engine__14.CFrame.lookVector:Cross(l__Vector3_new__3(0, 1, 0)));
	local l__Angle__17 = p8.Angle;
	if l__Engine__14.CFrame.upVector.Y < 0 then
		v16 = v16 + 1;
	end;
	for v18, v19 in next, p8.Stable do
		local l__Part__20 = v19.Part;
		v19.Torque.Torque = p8.Mass * l__Vector3_new__3(0, 0, 600 * v16 - math.clamp((200 * l__Part__20.CFrame:vectorToObjectSpace(l__Part__20.RotVelocity) * (0.016666666666666666 / p9)).z, -1000, 1000) - 10 * math.sin(l__Angle__17) * math.abs(v15.Z * 0.66));
	end;
	if v15.Z < -2 then
		for v21, v22 in next, p8.Wheels do
			if v22.Back and v22.Hit then
				p8.MotoDrift:Emit(1);
			end;
		end;
	end;
end;
v6.Dirtbike.UpdateLQ = function(p10, p11)

end;
local u7 = require(l__ReplicatedStorage__1.Module.R15IKv2);
v6.Dirtbike.IKP = function(p12, p13)
	local l__VisualTurnAngle__23 = p12.VisualTurnAngle;
	local l__IKP__24 = p12.IKP;
	l__IKP__24.RightArm = p12.Model.Handlebar.RightHand.Position;
	l__IKP__24.LeftArm = p12.Model.Handlebar.LeftHand.Position;
	l__IKP__24.RightAngle = -0.95 + l__VisualTurnAngle__23;
	l__IKP__24.LeftAngle = 0.95 + l__VisualTurnAngle__23;
	u7.Arms(l__IKP__24);
	p12.HandlebarJoint.C1 = l__CFrame_Angles__5(0, -l__VisualTurnAngle__23, 0);
end;
v6.Patrol = {};
v6.Patrol.VehicleEnter = function(p14, p15)
	u2(p15, false, not p14.Passenger);
end;
v6.Patrol.UpdateWheel = function(p16, p17)
	local v25 = nil;
	v25 = p17.vh;
	if not p17.Front then
		if p17.Back then
			p17.VisualJoint.C1 = l__CFrame_new__4(0, -v25 + p17.VisualHalfHeight, 0) * l__CFrame_Angles__5(p16.WheelRotation, 0, 0);
		end;
		return;
	end;
	local v26 = CFrame.fromAxisAngle(l__Vector3_new__3(0, 1, 1).unit, -p16.VisualTurnAngle);
	p17.HoldJoint.C1 = l__CFrame_new__4(0, -v25 + p17.VisualHalfHeight, 0) * v26 * l__CFrame_new__4(0, p17.VisualHalfHeight - 0.25, 0.25);
	p17.VisualJoint.C1 = l__CFrame_new__4(0, -v25 + p17.VisualHalfHeight, 0) * v26 * l__CFrame_Angles__5(p16.WheelRotation, 0, 0);
end;
v6.Patrol.UpdateHQ = function(p18, p19)
	local l__Engine__27 = p18.Model.Engine;
	local v28 = l__vectorToObjectSpace__6(l__Engine__27.CFrame, l__Engine__27.Velocity);
	local v29 = l__Engine__27.CFrame.upVector:Dot(l__Engine__27.CFrame.lookVector:Cross(l__Vector3_new__3(0, 1, 0)));
	local l__Angle__30 = p18.Angle;
	if l__Engine__27.CFrame.upVector.Y < 0 then
		v29 = v29 + 1;
	end;
	for v31, v32 in next, p18.Stable do
		local l__Part__33 = v32.Part;
		v32.Torque.Torque = p18.Mass * l__Vector3_new__3(0, 0, 600 * v29 - math.clamp((200 * l__Part__33.CFrame:vectorToObjectSpace(l__Part__33.RotVelocity) * (0.016666666666666666 / p19)).z, -1000, 1000) - 10 * math.sin(l__Angle__30) * math.abs(v28.Z * 0.66));
	end;
	if v28.Z < -2 then
		for v34, v35 in next, p18.Wheels do
			if v35.Back and v35.Hit then
				p18.MotoDrift:Emit(1);
			end;
		end;
	end;
end;
v6.Patrol.UpdateLQ = function(p20, p21)

end;
v6.Patrol.IKP = function(p22, p23)
	local l__VisualTurnAngle__36 = p22.VisualTurnAngle;
	local l__IKP__37 = p22.IKP;
	l__IKP__37.RightArm = p22.Model.Handlebar.RightHand.Position;
	l__IKP__37.LeftArm = p22.Model.Handlebar.LeftHand.Position;
	l__IKP__37.RightAngle = -0.95 + l__VisualTurnAngle__36;
	l__IKP__37.LeftAngle = 0.95 + l__VisualTurnAngle__36;
	u7.Arms(l__IKP__37);
	p22.HandlebarJoint.C1 = l__CFrame_Angles__5(0, -l__VisualTurnAngle__36, 0);
end;
v6.DuneBuggy = {};
v6.DuneBuggy.VehicleEnter = function(p24, p25)
	u2(p25, false);
end;
v6.DuneBuggy.UpdateWheel = function(p26, p27)
	local v38 = nil;
	local l__Pivot__39 = p27.Pivot;
	v38 = p27.vh;
	if p27.Front then
		p27.VisualJoint.C1 = l__CFrame_new__4(0, -v38 + p27.VisualHalfHeight, 0) * CFrame.fromAxisAngle(l__Vector3_new__3(0, 1, 0.5).unit, -p26.VisualTurnAngle) * l__CFrame_Angles__5(p26.WheelRotation, 0, 0);
	elseif p27.Back then
		p27.VisualJoint.C1 = l__CFrame_new__4(0, -v38 + p27.VisualHalfHeight, 0) * l__CFrame_Angles__5(p26.WheelRotation, 0, 0);
	end;
	p27.PivotJoint.C1 = l__Pivot__39.CFrame:toObjectSpace(l__CFrame_new__4(l__Pivot__39.Position, p27.VisualModelRoot.Position)) * l__CFrame_new__4(0, 0, -2);
end;
v6.DuneBuggy.UpdateHQ = function(p28, p29)
	local l__Engine__40 = p28.Model.Engine;
	if l__vectorToObjectSpace__6(l__Engine__40.CFrame, l__Engine__40.Velocity).Z < -2 then
		for v41, v42 in next, p28.Wheels do
			if v42.Hit and v42.Back then
				if v42.Left then
					p28.MotoDriftLeft:Emit(2);
				elseif v42.Right then
					p28.MotoDriftRight:Emit(2);
				end;
			end;
		end;
	end;
end;
v6.DuneBuggy.UpdateLQ = function(p30, p31)

end;
v6.DuneBuggy.IKP = function(p32, p33)
	local l__Character__43 = p32.Character;
	if not l__Character__43 then
		return;
	end;
	if not l__Character__43:IsDescendantOf(workspace) then
		return;
	end;
	local v44 = l__Character__43.PrimaryPart.CFrame * l__CFrame_new__4(0, 0, -1.5);
	local l__VisualTurnAngle__45 = p32.VisualTurnAngle;
	local l__IKP__46 = p32.IKP;
	l__IKP__46.RightArm = v44 * l__Vector3_new__3(0.8 * math.cos(l__VisualTurnAngle__45), -0.8 * math.sin(l__VisualTurnAngle__45), 0);
	l__IKP__46.LeftArm = v44 * l__Vector3_new__3(-0.8 * math.cos(l__VisualTurnAngle__45), 0.8 * math.sin(l__VisualTurnAngle__45), 0);
	l__IKP__46.RightAngle = -0.6 + l__VisualTurnAngle__45;
	l__IKP__46.LeftAngle = 0.6 + l__VisualTurnAngle__45;
	u7.Arms(l__IKP__46);
end;
local l__CurrentCamera__8 = workspace.CurrentCamera;
local u9 = { 0, 0, 0, 0 };
local u10 = Vector3.new();
local u11 = require(l__ReplicatedStorage__1.Game.C4.C4Binder);
local u12 = require(l__ReplicatedStorage__1.Module.RayCast);
local u13 = Vector3.new(0, -1, 0);
local l__WorldSpringSetTarget__14 = v2.WorldSpringSetTarget;
local l__WorldSpringUpdate__15 = v2.WorldSpringUpdate;
local function u16(p34, p35, p36)
	return math.exp(-(p34 - p35) ^ 2 / (2 * p36 * p36));
end;
local l__UserInputService__17 = game:GetService("UserInputService");
local u18 = require(l__ReplicatedStorage__1.Module.Time);
local u19 = require(l__ReplicatedStorage__1.Module.Audio);
local u20 = {
	tire_pop = 4534995816, 
	tire_leak = 4534995685
};
local u21 = require(l__ReplicatedStorage__1.Module.ChassisShared);
local function u22(p37, p38, p39)
	local v47 = {};
	for v48, v49 in pairs(u11:GetAllSet()) do
		v47[#v47 + 1] = v48._obj;
	end;
	v47[#v47 + 1] = p37.Model;
	v47[#v47 + 1] = l__LocalPlayer__3.Character;
	local l__UpdateWheel__50 = v6[p37.Make].UpdateWheel;
	local l__Wheels__52 = p37.Wheels;
	for v54, v55 in next, l__Wheels__52, nil do
		local v56 = v55.Height;
		if p39 then
			v56 = v56 + p37.GarageSuspensionHeight;
		end;
		local l__Part__57 = v55.Part;
		local v58, v59 = u12.RayIgnoreNonCollideWithIgnoreList(l__Part__57.Position, u13, v56, v47);
		v55.Hit = v58;
		v55.vh = math.clamp((l__Part__57.Position - v59).magnitude, v56 * 0.5, v56);
		l__UpdateWheel__50(p37, v55);
		local l__Spring__60 = v55.Spring;
		if p39 then
			if v58 then
				l__WorldSpringSetTarget__14(l__Spring__60, v59 + l__Vector3_new__3(0, v56, 0));
			else
				l__Spring__60.Target = nil;
			end;
			l__WorldSpringUpdate__15(l__Spring__60, p38);
			local v61 = l__Spring__60.f3.y;
			if v61 < 0 then
				v61 = 0;
			end;
			local v62 = 300 + 11.666666666666666 / p38;
			if v62 < v61 then
				v61 = v62;
			end;
			local v63 = l__Vector3_new__3(0, v61, 0);
			local v64
			if v58 then
				v64 = p37.Mass * v55.MassProp * v63 + v55.ForceDrive;
			else
				v64 = u10;
			end;
			v55.VectorForce.Force = v64 + v55.ForceFriction;
		end;	
	end
end;
local function u23(p40, p41)
	p40.Sounds.Idle.Volume = 0.5 * u16(p41, 0, 0.3) * 0.7;
	p40.Sounds.High.Volume = 0.5 * (0.86 * u16(p41, 1, 0.6) + 0.4 * u16(p41, 0.3, 0.4));
	p40.Sounds.Idle.Pitch = 0.9 + (p41 - 0.4) * 0.3;
	p40.Sounds.High.Pitch = 0.9 + (p41 - 0.4) * 1;
end;
local u24 = require(l__ReplicatedStorage__1.Game.Vehicle);
local u25 = nil;
local u26 = {
	[Enum.KeyCode.A] = 4, 
	[Enum.KeyCode.D] = 3, 
	[Enum.KeyCode.ButtonR2] = 1, 
	[Enum.KeyCode.ButtonL2] = 2, 
	[Enum.KeyCode.Up] = 1, 
	[Enum.KeyCode.Left] = 4, 
	[Enum.KeyCode.Down] = 2, 
	[Enum.KeyCode.Right] = 3
};
l__UserInputService__17.InputBegan:connect(function(p42, p43)
	if p43 then
		return;
	end;
	if p42.UserInputType == Enum.UserInputType.Keyboard then
		local l__KeyCode__65 = p42.KeyCode;
		if u26[l__KeyCode__65] then
			u9[u26[l__KeyCode__65]] = 1;
		end;
	end;
end);
l__UserInputService__17.InputEnded:connect(function(p44, p45)
	if p45 then
		return;
	end;
	if p44.UserInputType == Enum.UserInputType.Keyboard then
		local l__KeyCode__66 = p44.KeyCode;
		if u26[l__KeyCode__66] then
			u9[u26[l__KeyCode__66]] = 0;
			return;
		end;
	elseif p44.UserInputType == Enum.UserInputType.Gamepad1 then
		local l__KeyCode__67 = p44.KeyCode;
		if l__KeyCode__67 == Enum.KeyCode.ButtonR2 or l__KeyCode__67 == Enum.KeyCode.ButtonL2 then
			u9[u26[l__KeyCode__67]] = 0;
		end;
	end;
end);
l__UserInputService__17.InputChanged:connect(function(p46)
	if p46.UserInputType == Enum.UserInputType.Gamepad1 then
		local l__KeyCode__68 = p46.KeyCode;
		if l__KeyCode__68 == Enum.KeyCode.Thumbstick1 then
			local l__Position__69 = p46.Position;
			local l__X__70 = l__Position__69.X;
			local l__Y__71 = l__Position__69.Y;
			u9[4] = l__X__70 < -0.24 and (-l__X__70) ^ 2 or 0;
			u9[3] = l__X__70 > 0.24 and l__X__70 ^ 2 or 0;
			return;
		elseif l__KeyCode__68 == Enum.KeyCode.ButtonR2 or l__KeyCode__68 == Enum.KeyCode.ButtonL2 then
			local l__Z__72 = p46.Position.Z;
			u9[u26[l__KeyCode__68]] = l__Z__72 > 0.05 and l__Z__72 ^ 0.5 or 0;
		end;
	end;
end);
return {
	VehicleEnter = function(p47)
		local l__Character__73 = l__LocalPlayer__3.Character;
		if not l__Character__73 then
			return;
		end;
		if p47.Model:FindFirstChild("Camera") then
			l__CurrentCamera__8.CameraSubject = p47.Model:FindFirstChild("Camera");
		end;
		p47.IKP = u7.BuildPacketArms(l__Character__73);
		v6[p47.Make].VehicleEnter(p47, l__Character__73);
		function p47.setForward(p48)
			local v74 = 1;
			if p48 then
				v74 = 1;
			else
				v74 = 0;
			end;
			u9[1] = v74;
		end;
		function p47.setBackward(p49)
			local v75 = 1;
			if p49 then
				v75 = 1;
			else
				v75 = 0;
			end;
			u9[2] = v75;
		end;
	end, 
	VehicleLeave = function(p50)
		local l__Character__76 = l__LocalPlayer__3.Character;
		if not l__Character__76 then
			return;
		end;
		u2(l__Character__76, true);
		l__CurrentCamera__8.FieldOfView = 70;
		if l__Character__76:FindFirstChild("Humanoid") then
			l__CurrentCamera__8.CameraSubject = l__Character__76:FindFirstChild("Humanoid");
		end;
		if p50.Passenger then
			return;
		end;
		for v77, v78 in pairs(p50.Sounds) do
			v78.Volume = 0;
		end;
		for v79, v80 in next, p50.Wheels do
			v80.VectorForce.Force = u10;
		end;
		for v81, v82 in next, p50.Stable do
			v82.Torque.Torque = u10;
		end;
		p50.EngineTorque.Torque = u10;
	end, 
	UpdateHQ = function(p51, p52)
		local v83 = tick();
		local l__Model__84 = p51.Model;
		local l__Engine__85 = l__Model__84:FindFirstChild("Engine");
		if not l__Engine__85 then
			return;
		end;
		local l__Wheels__86 = p51.Wheels;
		local l__Gears__87 = p51.Config.Gears;
		local v88 = u9[1] - u9[2];
		local v89 = u9[3] - u9[4];
		if l__UserInputService__17.TouchEnabled then
			local l__Character__90 = l__LocalPlayer__3.Character;
			if l__Character__90 and l__Character__90:FindFirstChild("Humanoid") then
				local v91 = math.clamp(v4().X, -1, 1);
				v89 = v91 * math.abs(v91);
			end;
		end;
		if p51.LockMovement then
			v88 = 0;
			v89 = 0;
		end;
		local Config = p51.Config;
		local l__u__93 = Config.u;
		local l__v__94 = Config.v;
		local v95 = Config.b * (1 + p51.GarageBrakes);
		local TirePopDuration = p51.TirePopDuration;
		local TiresLastPop = p51.TiresLastPop;
		local v98 = u18.GetNowSync();
		local v99 = (math.min((v98 - TiresLastPop[1]) / TirePopDuration, 1) + math.min((v98 - TiresLastPop[2]) / TirePopDuration, 1) + math.min((v98 - TiresLastPop[3]) / TirePopDuration, 1) + math.min((v98 - TiresLastPop[4]) / TirePopDuration, 1)) / 4 < 0.999;
		if v99 then
			v88 = 0;
			v95 = v95 * 10;
		end;
		if p51.AreTiresPopped ~= v99 then
			if v99 then
				local v100 = {
					Volume = 1
				};
				u19.ObjectLocal(l__Engine__85, u20.tire_pop, v100);
				u19.ObjectLocal(l__Engine__85, u20.tire_leak, v100);
			end;
			p51.AreTiresPopped = v99;
		end;
		local v101 = l__vectorToObjectSpace__6(l__Engine__85.CFrame, l__Engine__85.Velocity);
		local l__magnitude__102 = v101.magnitude;
		local v103 = p51.RotYSlow or 0;
		local v104 = v103 + (v89 - v103) * 0.1;
		p51.RotYSlow = v104;
		p51.VisualTurnAngle = v104 * 0.5;
		local v105 = p51.Gear or 1;
		local v106 = p51.LastGear or 1;
		local v107 = p51.t3 or 0;
		local v108
		if v106 ~= v105 then
			v108 = l__Gears__87[2 + v106] * (1 - v107 * v107) + l__Gears__87[2 + v105] * v107 * v107;
			local v109 = v107 + p52 * 1 / 0.23;
			p51.t3 = v109;
			if v109 >= 1 then
				p51.LastGear = v105;
				p51.t3 = 0;
			end;
		else
			v108 = l__Gears__87[2 + v105];
		end;
		local v110 = v108 ^ 0.5 * (l__magnitude__102 / 120);
		if v2.IsNaN(v110) then
			v110 = 0;
		end;
		local v111 = math.clamp(v110, 0, 3);
		local l__FieldOfView__112 = l__CurrentCamera__8.FieldOfView;
		l__CurrentCamera__8.FieldOfView = l__FieldOfView__112 + ((v111 < 0.825155 and v111 * v111 * v111 or 1 - math.exp(-v111)) * 30 + 70 - l__FieldOfView__112) * 0.7;
		local l__Volume__113 = p51.Sounds.Drift.Volume;
		local v114
		if l__magnitude__102 > 30 and (u21.HandBrake and v89 ~= 0) then
			v114 = l__Volume__113 + (0.3 - l__Volume__113) * 0.06;
		else
			v114 = l__Volume__113 + (0 - l__Volume__113) * 0.1;
		end;
		p51.Sounds.Drift.Volume = v114;
		local v115 = p51.Throttle or 0;
		local v116 = v115 + (v88 - v115) * 0.1;
		p51.Throttle = v116;
		local v117 = 60 * math.abs(v101.Z) * p52 / l__Wheels__86[1].VisualHalfHeight;
		local v118 = v117 * l__Gears__87[1] * l__Gears__87[2 + v105] * 60 / (math.pi * 2);
		if v83 - (p51.LastGearSwitch or 0) > 0.5 then
			if v118 > 7000 and v105 < 5 then
				v105 = v105 + 1;
				p51.LastGearSwitch = v83;
			elseif v118 < 3000 and v105 > 1 then
				v105 = v105 - 1;
				p51.LastGearSwitch = v83;
			end;
		end;
		p51.Gear = v105;
		local v119 = math.pi * 0.15 * v89;
		p51.Angle = v119;
		local l__Nitro__120 = p51.Nitro;
		local v121 = Config.f + p51.GarageEngineSpeed * 1.5;
		for v124, v125 in next, l__Wheels__86, nil do
			local v126 = l__vectorToObjectSpace__6(l__Engine__85.CFrame, v125.Part.Velocity);
			local v127 = math.abs(v126.Z) >= 0.001 and v126.Z / math.abs(v126.Z) or -1;
			local v128 = -l__u__93 * l__Vector3_new__3(0, 0, 1) * v126 + -l__v__94 * l__Vector3_new__3(0, 0, 1) * v126 * math.abs(v126.Z);
			local v129
			local v130
			if v125.Front then
				if v127 <= 0 then
					v129 = 300;
				else
					v129 = 2500;
				end;
				if game:GetService("Lighting"):FindFirstChild("IsRaining") then
					v129 = v129 * 0.85;
				end;
				if u21.HandBrake then
					v129 = 1000;
				end;
				v128 = v128 + -l__Vector3_new__3(v129 / 206 * p51.Mass * math.clamp(v126.X, -50, 50), 0, 0);
			elseif v125.Back then
				if v127 <= 0 then
					v130 = 2500;
				else
					v130 = 300;
				end;
				if u21.HandBrake then
					v130 = Config.DriftFriction;
				end;
				v128 = v128 + -l__Vector3_new__3(v130 / 206 * p51.Mass * math.clamp(v126.X, -50, 50), 0, 0);
			end;
			v125.ForceFriction = v2.Clampv3(v128, -1000000, 1000000);
			local v131
			if v88 >= 0 and v125.Front or v125.Back then
				v131 = -v121 * p51.Mass * l__Vector3_new__3(0, 0, math.cos(v119)) * l__Gears__87[1] * (v88 > 0 and l__Gears__87[2 + v105] or l__Gears__87[2]) * v116;
				if v88 == 0 then
					if math.abs(v101.Z) >= 1 then
						v131 = v131 - v126.Z / math.abs(v126.Z) * v95 * l__Vector3_new__3(0, 0, 1);
					else
						l__Engine__85.Velocity = u10;
					end;
				end;
			else
				v131 = u10;
			end;
			local v132 = 20;
			if l__Nitro__120 then
				v132 = 20;
			else
				v132 = 0;
			end;
			v125.ForceDrive = v131 + v132 * p51.Mass * l__Vector3_new__3(0, 0, -1);		
		end
		p51.WheelRotation = (p51.WheelRotation + v101.Z * p52 / l__Wheels__86[1].VisualHalfHeight) % (2 * math.pi);
		u22(p51, p52, true);
		v6[p51.Make].UpdateHQ(p51, p52);
		local v133 = math.clamp(math.abs(v101.Z), 1, 70) ^ 0.5 * 6;
		if l__magnitude__102 < 4 then
			v133 = 0;
		elseif l__magnitude__102 < 14 then
			v133 = v133 * 0.4;
		elseif l__magnitude__102 < 70 then
			v133 = v133 * 0.66;
		end;
		p51.EngineTorque.Torque = p51.Mass * l__Vector3_new__3(0, -math.sin(v119) * 30 * math.sign(-v101.Z) * v133 * Config.TurnSpeed, 0);
		if not l__Wheels__86[1].Hit or not l__Wheels__86[2].Hit then
			l__Engine__85.RotVelocity = l__Engine__85.RotVelocity:lerp(l__Engine__85.CFrame:vectorToWorldSpace(l__Vector3_new__3(0.5, 0, 0)), 0.2);
		end;
		local l__IKP__134 = p51.IKP;
		if l__IKP__134 then
			local l__IKP__135 = v6[p51.Make].IKP;
			if l__IKP__135 then
				l__IKP__135(p51, l__IKP__134);
			end;
		end;
		local v136 = p51.RPMSlow or 0;
		local v137 = v136 + (math.clamp(v117 * l__Gears__87[1] * v108 * 60 / (math.pi * 2) / 7000, 0, 1) - v136) * 0.1;
		p51.RPMSlow = v137;
		u23(p51, v137);
		u24.setBrakelightsEnabled(l__Model__84, v88 <= 0);
	end, 
	UpdateLQ = function(p53, p54)
		local l__Engine__138 = p53.Model:FindFirstChild("Engine");
		if not l__Engine__138 then
			return;
		end;
		if not p53.Config then -- Was not in the original code, added by me to fix some errors popping up ~drxck
			return
		end
		local l__Gears__139 = p53.Config.Gears;
		local v140 = l__vectorToObjectSpace__6(l__Engine__138.CFrame, l__Engine__138.Velocity);
		p53.VisualTurnAngle = -l__Engine__138.RotVelocity.Y * 0.3;
		local l__Wheels__141 = p53.Wheels;
		p53.WheelRotation = (p53.WheelRotation + v140.Z * p54 / l__Wheels__141[1].VisualHalfHeight) % (2 * math.pi);
		u22(p53, p54, false);
		local l__IKP__142 = p53.IKP;
		if l__IKP__142 then
			local l__IKP__143 = v6[p53.Make].IKP;
			if l__IKP__143 then
				l__IKP__143(p53, l__IKP__142);
			end;
		end;
		local v144 = 60 * math.abs(v140.Z) * p54 / l__Wheels__141[1].VisualHalfHeight * l__Gears__139[1] * l__Gears__139[3] * 60;
		local v145 = p53.RPMSlow or 0;
		local v146 = v145 + (math.clamp(v144 / (math.pi * 2) / 7000, 0, 1) - v145) * 0.1;
		p53.RPMSlow = v146;
		u23(p53, v146);
	end, 
	SetEvent = function(p55)
		u25 = p55;
	end
};
