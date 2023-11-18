NDCore = exports["ND_Core"]:GetCoreObject()

RegisterNetEvent("bikeRental:pay")
AddEventHandler("bikeRental:pay", function(id)
    local bike = Config.cycles[id]
    if not bike then return end
    local src = source
    local player = NDCore.Functions.GetPlayer(src)
    if player.cash >= bike.price then
        NDCore.Functions.DeductMoney(bike.price, src, "cash")
        TriggerClientEvent("bikeRental:confirm", src)
        return
    end
    TriggerClientEvent("bikeRental:deny", src)
end)