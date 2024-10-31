script:Destroy()
local Remote = game.ReplicatedStorage.Remote.MorphCharacter
local current = 1
local Anim = script:WaitForChild("Walk")


function Morph(player, model, exe)
	print("morph")
	if current == 1 and exe == false then	workspace.CharSelection:ClearAllChildren()
		local new = game.ServerStorage.Morphs:FindFirstChild(model, true):Clone()
		new.Parent = workspace.CharSelection
		new.PrimaryPart.CFrame = workspace.PlayerSpawns.Player1.CFrame + Vector3.new(0,5,0)
		new.PrimaryPart.Anchored = true
		local A = new.Humanoid.Animator:LoadAnimation(Anim)
		A:Play()
		current += 1
		return
	elseif current == 2 and exe == false then
		local new = game.ServerStorage.Morphs:FindFirstChild(model, true):Clone()
		new.Parent = workspace.CharSelection
		new.PrimaryPart.CFrame = workspace.PlayerSpawns.Player2.CFrame + Vector3.new(0,5,0)
		new.PrimaryPart.Anchored = true
		local A = new.Humanoid.Animator:LoadAnimation(Anim)
		A:Play()
		current += 1
		return
	elseif current == 3 and exe == false then
		local new = game.ServerStorage.Morphs:FindFirstChild(model, true):Clone()
		new.Parent = workspace.CharSelection
		new.PrimaryPart.CFrame = workspace.PlayerSpawns.Player3.CFrame + Vector3.new(0,5,0)
		new.PrimaryPart.Anchored = true
		local A = new.Humanoid.Animator:LoadAnimation(Anim)
		A:Play()
		current = 1
		return
	end
	if exe then
		local new = game.ServerStorage.ContinueMorphs:FindFirstChild(model):Clone()
		new.Parent = workspace.CharSelection
		new.PrimaryPart.CFrame = workspace.PlayerSpawns.PlayerEXE.CFrame + Vector3.new(0,5,0)
		new.PrimaryPart.Anchored = true
		local A = new.Humanoid.Animator:LoadAnimation(Anim)
		A:Play()
	end
end

Remote.OnServerEvent:Connect(function(player, model, exe)
	Morph(player, model, exe)
end)