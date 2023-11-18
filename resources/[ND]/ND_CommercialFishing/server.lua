NDCore = exports["ND_Core"]:GetCoreObject()

RegisterServerEvent('ComFish:GiveReward')
AddEventHandler('ComFish:GiveReward', function(pay)
	local player = source 
	NDCore.Functions.AddMoney(pay, player, "bank")
end)