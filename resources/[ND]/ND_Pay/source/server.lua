--================================--
--      ND_Pay 1.0                --
--      by BreezyTheDev           --
--		GNU License v3.0		  --
--================================--


-- ND_Framework export
NDCore = exports["ND_Core"]:GetCoreObject()

-- Commands
if Settings.Pay.Toggle then
    RegisterCommand(Settings.Pay.Command, function(source, args, rawCommand)
        local player = source
        local target = tonumber(args[1])
        local amount = tonumber(args[2])
        if target ~= nil and amount ~= nil then
            NDCore.Functions.TransferBank(amount, player, target)
        else
           -- Wrong syntax, it's /pay <id> <amount>
           TriggerClientEvent('chatMessage', source, '^1ERROR: Wrong usage. /pay <id> <amount>')
        end
    end, false)
end

if Settings.Give.Toggle then
    RegisterCommand(Settings.Give.Command, function(source, args, rawCommand)
        local player = source
        local amount = tonumber(args[1])
        if amount ~= nil then
            NDCore.Functions.GiveCashToNearbyPlayer(player, amount)
        else
           -- Wrong syntax, it's /give <amount>
           TriggerClientEvent('chatMessage', source, '^1ERROR: Wrong usage. /give <amount>')
        end
    end, false)
end

if Settings.AddMoney.Toggle then
    RegisterCommand(Settings.AddMoney.Command, function(source, args, rawCommand)
        local player = source
        local target = tonumber(args[1])
        if not target then
            TriggerClientEvent('chat:addMessage', player, '^1ERROR: Wrong usage. /addmoney <id> <cash:bank> <amount>')
            return
        end

        local option = args[2]
        if not option or (option ~= "bank" and option ~= "cash") then
            TriggerClientEvent('chat:addMessage', player, '^1ERROR: Wrong usage. /addmoney <id> <cash:bank> <amount>')
            return
        end

        local amount = tonumber(args[3])
        if not amount then
            TriggerClientEvent('chat:addMessage', player, '^1ERROR: Wrong usage. /addmoney <id> <cash:bank> <amount>')
            return
        end

        if amount == 0 then
            TriggerClientEvent('chat:addMessage', player, '^1ERROR: Gotta be over 0. /addmoney <id> <cash:bank> <amount>')
            return
        end

        if not IsPlayerAceAllowed(player, Settings.AddMoney.Ace) then
            TriggerClientEvent('chat:addMessage', player, '^1ERROR: You need permission for this command!')
            return
        end

        NDCore.Functions.AddMoney(amount, target, option)
        TriggerClientEvent('chat:addMessage', player, "^1[ND-PAY] ^3You have successfully added $" .. amount .. " to " .. GetPlayerName(target) .. "'s account")
    end, false)
end

if Settings.RemoveMoney.Toggle then
    RegisterCommand(Settings.RemoveMoney.Command, function(source, args, rawCommand)
        local player = source
        local target = tonumber(args[1])
        if not target then
            TriggerClientEvent('chat:addMessage', player, '^1ERROR: Wrong usage. /removemoney <id> <cash:bank> <amount>')
            return
        end

        local option = args[2]
        if not option or (option ~= "bank" and option ~= "cash") then
            TriggerClientEvent('chat:addMessage', player, '^1ERROR: Wrong usage. /removemoney <id> <cash:bank> <amount>')
            return
        end

        local amount = tonumber(args[3])
        if not amount then
            TriggerClientEvent('chat:addMessage', player, '^1ERROR: Wrong usage. /removemoney <id> <cash:bank> <amount>')
            return
        end

        if amount == 0 then
            TriggerClientEvent('chat:addMessage', player, '^1ERROR: Gotta be over 0. /removemoney <id> <cash:bank> <amount>')
            return
        end

        if not IsPlayerAceAllowed(player, Settings.RemoveMoney.Ace) then
            TriggerClientEvent('chat:addMessage', player, '^1ERROR: You need permission for this command!')
            return
        end

        NDCore.Functions.DeductMoney(amount, target, option)
        TriggerClientEvent('chat:addMessage', player, "^1[ND-PAY] ^3You have successfully removed $" .. amount .. " from " .. GetPlayerName(target) .. "'s account")
    end, false)
end

