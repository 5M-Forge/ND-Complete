NDCore = exports["ND_Core"]:GetCoreObject()

RegisterNetEvent("ND_npwd:refresh", function()
    local src = source
    exports["npwd"]:unloadPlayer(src)
    local player = NDCore.Functions.GetPlayer(src)
    local license = NDCore.Functions.GetPlayerIdentifierFromType("license", src)
    local phoneNumber = player.phoneNumber
    if not phoneNumber then
        phoneNumber = exports.npwd:generatePhoneNumber()
        MySQL.query.await("UPDATE characters SET phone_number = ? WHERE character_id = ?", {phoneNumber, player.id})
    end
    exports["npwd"]:newPlayer({
        source = src,
        identifier = license,
        firstname = player.firstName,
        lastname = player.lastName,
        phoneNumber = phoneNumber
    })
end)