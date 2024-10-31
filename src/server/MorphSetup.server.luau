local Morphs = game.ServerStorage.Morphs
local ContinueMorphs = game.ServerStorage.ContinueMorphs
local StatMorph = game.ReplicatedStorage.Morphs

for i,v in Morphs:GetChildren() do
	if v:IsA("Model") then
		local strin = Instance.new("StringValue", StatMorph)
		strin.Name = v.Name
		strin.Value = "Surviver"
	end
end
for i,v in ContinueMorphs:GetChildren() do
	if v:IsA("Model") then
		local strin = Instance.new("StringValue", StatMorph)
		strin.Name = v.Name
		strin.Value = "EXE"
	end
end
script:Destroy()