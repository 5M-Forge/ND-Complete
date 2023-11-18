Interact = {}
Plants = {}
GlobalState.Plants = Plants

function UpdatePlants()
    GlobalState.Plants = Plants
end

function CreatePlant(source, seed, coords)
    local allowed, err = CanPlayerPlant(source, seed, coords)
    if allowed then
        RemoveItem(source, seed, 1)
        local key = os.time()
        while Plants[key] do
            key = key .. "_1"
            Wait(0)
        end
        SetTimeout((1000 * Config.Plant.PlantTime), function()
            Plants[key] = { source = source, seed = seed, water = 0, coords = coords }
            UpdatePlants()
        end)
        return key
    else
        ShowNotification(source, err)
    end
end

function GetPlayerPlants(source)
    local keys = {}
    for k, v in pairs(Plants) do
        if v.source == source then
            keys[#keys + 1] = k
        end
    end
    return keys
end

function CanPlayerPlant(source, seed, coords)
    local playerPlants = #GetPlayerPlants(source)
    if Search(source, seed) < 1 then
        return false, "You don't have this seed."
    elseif playerPlants + 1 > Config.Plant.MaxPlayerPlants then
        return false, "You have too many plants active (" .. playerPlants .. "/" .. Config.Plant.MaxPlayerPlants .. ")."
    else
        return true
    end
end

function HarvestPlant(key, source)
    local plant = Plants[key]
    local cfg = Config.Seeds[plant.seed]
    if (cfg.Rewards) then
        for i = 1, #cfg.Rewards do
            local reward = cfg.Rewards[i]
            local amount = (reward.min < reward.max and math.random(reward.min, reward.max) or reward.min)
            if CanCarryItem(source, reward.name, amount) then
                AddItem(source, reward.name, amount)
            end
        end
    end
    Plants[key] = nil
    UpdatePlants()
    SetTimeout(500, function()
        TriggerClientEvent("pickle_farming:removePlant", -1, key)
    end)
end

exports('seed', function(event, item, inventory, slot, data)
    if event == 'usingItem' then
        TriggerClientEvent("pickle_farming:plantSeed", inventory.id, item.name)
    end
end)

RegisterCallback("pickle_farming:createPlant", function(source, seed, coords)
    if Interact[source] then
        return false
    end
    Interact[source] = true
    local plant = CreatePlant(source, seed, coords)
    if plant then
        Interact[source] = false
        return plant
    else
        Interact[source] = false
        return false
    end
end)

RegisterCallback("pickle_farming:waterPlant", function(source, key)
    if Interact[source] then
        return false
    end
    Interact[source] = true
    local plant = Plants[key]
    if plant then
        local cfg = Config.Seeds[plant.seed]
        if Search(source, "garden_pitcher") > 0 and Plants[key].water < cfg.WaterNeeded then
            SetTimeout(1000 * Config.Plant.WaterTime, function()
                Interact[source] = false
                local newWater = Plants[key].water + Config.Plant.WaterPerUse
                if newWater > cfg.WaterNeeded then
                    newWater = cfg.WaterNeeded
                elseif newWater < 0 then
                    newWater = 0
                end
                Plants[key].water = newWater
                UpdatePlants()
            end)
            return true
        else
            ShowNotification(source, "You need to have a gardening pitcher.")
            Interact[source] = false
            return false
        end
    else
        Interact[source] = false
        return false
    end
end)

RegisterCallback("pickle_farming:harvestPlant", function(source, key)
    if Interact[source] then
        return false
    end
    Interact[source] = true
    local plant = Plants[key]
    if plant then
        if Search(source, "garden_shovel") > 0 then
            SetTimeout(1000 * Config.Plant.HarvestTime, function()
                HarvestPlant(key, source)
                Interact[source] = false
            end)
            return true
        else
            ShowNotification(source, "You need to have a gardening shovel.")
            Interact[source] = false
            return false
        end
    else
        Interact[source] = false
        return false
    end
end)