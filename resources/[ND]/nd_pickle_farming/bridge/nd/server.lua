NDCore = exports["ND_Core"]:GetCoreObject()

function RegisterCallback(name, cb)
    lib.callback.register(name, cb)
end

function ShowNotification(target, text)
    TriggerClientEvent(GetCurrentResourceName() .. ":showNotification", target, text)
end

function Search(source, itemArg)
    local item = exports.ox_inventory:Search(source, 'count', itemArg)
    if item ~= nil then
        return item
    else
        return 0
    end
end

function AddItem(source, name, amount)
    if name == "money" or name == "cash" then
        return NDCore.Functions.AddMoney(amount, source, 'cash')
    else
        return exports.ox_inventory:AddItem(source, name, amount)
    end
end

function RemoveItem(source, name, amount)
    return exports.ox_inventory:RemoveItem(source, name, amount)
end

function CanCarryItem(source, name, amount)
    return exports.ox_inventory:CanCarryItem(source, name, amount)
end