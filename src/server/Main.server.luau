local Players = game.Players

Players.PlayerAdded:Connect(function(player)
	print(player.Name, "Joint The Game!")
end)

Players.PlayerRemoving:Connect(function(player)
	print("Disconnected Sccussfuly For" .. player.Name)
end)
