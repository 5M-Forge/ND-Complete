RegisterNetEvent("ND:setCharacter", function(character)
    TriggerServerEvent("ND_npwd:refresh", character.id)
end)