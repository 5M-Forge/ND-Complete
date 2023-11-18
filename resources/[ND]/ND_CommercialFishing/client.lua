local show, JobStarted = false, false, {}
pay = 0

function NewBlip()
    local objectif = math.randomchoice(Config.pos)
    local ped = GetPlayerPed(-1)

    local blip = AddBlipForCoord(objectif.x, objectif.y, objectif.z)
    SetBlipSprite(blip, 1)
    SetBlipColour(blip, 2)
    SetBlipRoute(blip, true)
    SetBlipRouteColour(blip, 2)

    local coords = GetEntityCoords(ped)
    local distance = GetDistanceBetweenCoords(coords, objectif.x, objectif.y, objectif.z, true)

    -- add money to the total for completing the task
    pay = pay + Config.Amount

    while true do
        Citizen.Wait(0)
        coords = GetEntityCoords(ped)
        distance = GetDistanceBetweenCoords(coords, objectif.x, objectif.y, objectif.z, true)
        AddTextEntry("press_collect_fish2", 'Press ~INPUT_CONTEXT~ to collect the fish')
        if distance <= 10 then
            DisplayHelpTextThisFrame("press_collect_fish2")
            if IsControlJustPressed(1, 38) then
                RemoveBlip(blip)
                NotifChoise()
                break
            end
        end
    end
    if IsControlJustPressed(1, 73) then
        RemoveBlip(blip)
        drawnotifcolor("Bring back the boat.", 25)
        StopService()
    end
end

function NotifChoise()
    drawnotifcolor("Press ~g~E~w~ for a new location.\nPress ~r~X~w~ if you want to stop the job.", 140)

    local timer = 1200
    while timer >= 1 do
        Citizen.Wait(10)
        timer = timer - 1

        if IsControlJustPressed(1, 38) then
            NewChoise()
            break
        end

        if IsControlJustPressed(1, 73) then
            drawnotifcolor("Bring back the boat.", 25)
            StopService()

            break
        end

        if timer == 1 then
            drawnotifcolor("Bring back the boat.", 25)
            StopService()
            break
        end
    end
end

function NewChoise()
    local route = math.randomchoice(Config.pos)
    local ped = GetPlayerPed(-1)
    local vehicle = GetVehiclePedIsIn(ped, false)

    local blip = AddBlipForCoord(route.x, route.y, route.z)
    SetBlipSprite(blip, 1)
    SetBlipColour(blip, 3)
    SetBlipRoute(blip, true)
    SetBlipRouteColour(blip, 3)
    drawnotifcolor("New location is set, press \n~r~X~w~ if you want to stop the job.", 140)

    local coords = GetEntityCoords(ped)
    local distance = GetDistanceBetweenCoords(coords, route.x, route.y, route.z, true)

    while true do
        Citizen.Wait(0)
        coords = GetEntityCoords(ped)
        distance = GetDistanceBetweenCoords(coords, route.x, route.y, route.z, true)
        AddTextEntry("press_collect_fish", 'Press ~INPUT_CONTEXT~ to collect the fish')
        if distance <= 60 then
            if distance <= 10 then
                DisplayHelpTextThisFrame("press_collect_fish")
                if IsControlJustPressed(1, 38) then
                    RemoveBlip(blip)
                    NewBlip()
                    break
                end
            end
        end
        if IsControlJustPressed(1, 73) then
            RemoveBlip(blip)
            drawnotifcolor("Bring back the boat to get the money.", 140)
            StopService()
            break
        end
    end
end

function StopService()
    local coordsEndService = vector3(-121.27, -2738.35, 0.97)
    local ped = GetPlayerPed(-1)
    AddTextEntry("press_ranger_rubble", 'Press ~INPUT_CONTEXT~ to store the boat')

    local blip = AddBlipForCoord(coordsEndService)
    SetBlipSprite(blip, 1)
    SetBlipColour(blip, 1)
    SetBlipRoute(blip, true)
    SetBlipRouteColour(blip, 1)

    while true do
        Citizen.Wait(0)
        local coords = GetEntityCoords(ped)
        local distance = GetDistanceBetweenCoords(coordsEndService, coords, true)
        if distance <= 10 then
            DisplayHelpTextThisFrame("press_ranger_rubble")
            if IsControlPressed(1, 38) then
                local playerPed = PlayerPedId()
                local vehicle = GetVehiclePedIsIn(playerPed, false)
                if GetEntityModel(vehicle) == GetHashKey("tug") then
                    DeleteEntity(vehicle)
                    DeleteEntity(trashbag)
                    RemoveBlip(blip)
                    drawnotifcolor("You've received ~g~$" .. pay .. "~w~ for completing the job.", 140)
                    TriggerServerEvent('ComFish:GiveReward', pay)
                    JobStarted, show = false, false
                    break
                else
                    local vehicle = GetVehiclePedIsIn(playerPed, false)
                    if GetEntityModel(vehicle) ~= GetHashKey("tug") then
                        drawnotifcolor("Bring back the boat to get the money.", 140)
                        JobStarted, show = true, true
                        break
                    end
                end
            end
        end
    end
end

function StartJob()
    local ped = GetPlayerPed(-1)
    local vehicleName = Config.Boat

    RequestModel(vehicleName)

    while not HasModelLoaded(vehicleName) do
        Wait(500)
    end

    local vehicle = CreateVehicle(vehicleName, -82.40, -2769.05, 1.05, 178.36, true, false)
    SetPedIntoVehicle(ped, vehicle, -1)
    SetEntityAsMissionEntity(vehicle, true, true)
    SetVehicleExtra(vehicle, 2, false)
    SetModelAsNoLongerNeeded(vehicleName)
    JobStarted = true

    NewChoise()
end

Citizen.CreateThread(function()
    AddTextEntry("press_start_job", "Press ~INPUT_CONTEXT~ to start your shift")
    while true do
        Citizen.Wait(0)
        local ped = GetPlayerPed(-1)
        local coords = GetEntityCoords(ped)
        local distance = GetDistanceBetweenCoords(vector3(-95.91, -2767.59, 5.08), coords, true)
        DrawMarker(1, -95.91, -2767.59, 5.08, 0, 0, 0, 0, 0, 0, 2.001, 2.0001, 1.5001, 255, 255, 255, 200, 0, 0, 0, 0)
        if distance <= 2 then
            DisplayHelpTextThisFrame("press_start_job")
            if IsControlPressed(1, 38) then
                StartJob()
            end
        end
    end
end)

function drawnotifcolor(text, color)
    Citizen.InvokeNative(0x92F0DA1E27DB96DC, tonumber(color))
    SetNotificationTextEntry("STRING")
    AddTextComponentString(text)
    DrawNotification(false, true)
end

function math.randomchoice(d)
    local keys = {}
    for key, value in pairs(d) do
        keys[#keys + 1] = key
    end
    index = keys[math.random(1, #keys)]
    return d[index]
end

if Config.ShowBlip then
    local bliplocation = vector3(-95.91, -2767.59, 5.08)
    local blip = AddBlipForCoord(bliplocation.x, bliplocation.y, bliplocation.z)

    SetBlipSprite(blip, 457)
    SetBlipDisplay(blip, 4)
    SetBlipColour(blip, 21)
    SetBlipAsShortRange(blip, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("Commercial Fishing")
    EndTextCommandSetBlipName(blip)
end