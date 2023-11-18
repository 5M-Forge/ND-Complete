NDCore = exports["ND_Core"]:GetCoreObject()

RegisterNetEvent("CarRepair")
AddEventHandler("CarRepair", function(player)
    local player = source
    NDCore.Functions.DeductMoney(500, player, "bank")
end)    