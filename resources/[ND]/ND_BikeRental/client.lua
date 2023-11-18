NDCore = exports["ND_Core"]:GetCoreObject()

local selectedBike
local ped
local pedCoords
local rentedBikes = {}

-- Functions

function distanceFromPed(coords)
    return #(pedCoords - coords)
end

CreateThread(function()
    for _, location in pairs(Config.locations) do
        local blip = AddBlipForCoord(location)
        SetBlipSprite(blip, 494)
        SetBlipColour(blip, 26)
        SetBlipScale(blip, 0.6)
        SetBlipAsShortRange(blip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString("Bike Rental")
        EndTextCommandSetBlipName(blip)
    end

    while true do
        Wait(500)
        ped = PlayerPedId()
        pedCoords = GetEntityCoords(ped)
        vehicle = GetVehiclePedIsIn(ped)
    end
end)

function getBikes()
    local bikes = {}
    for id, bike in pairs(Config.cycles) do
        bikes[#bikes + 1] = {
            title = bike.name,
            onSelect = function(args)
                selectedBike = id
                TriggerServerEvent("bikeRental:pay", id)
            end,
            metadata = {
                {label = 'Price', value = bike.price},
            }
        }
    end
    return bikes
end

RegisterNetEvent("bikeRental:confirm")
AddEventHandler("bikeRental:confirm", function()
    if not selectedBike then return end
    local bike = Config.cycles[selectedBike]
    RequestModel(bike.hash)
    while not HasModelLoaded(bike.hash) do
        Wait(10)
    end
    local veh = CreateVehicle(bike.hash, pedCoords.x, pedCoords.y, pedCoords.z, GetEntityHeading(ped), true, true)
    SetPedIntoVehicle(ped, veh, -1)
    lib.hideTextUI()
    selectedBike = nil 
    lib.notify({
        title = 'Purchase Successful',
        description = 'You purchased ' .. bike.name .. ". - $" .. bike.price,
        position = 'bottom',
        type = "success"
    })
    rentedBikes[veh] = veh
end)

RegisterNetEvent("bikeRental:deny")
AddEventHandler("bikeRental:deny", function()
    if not selectedBike then return end
    selectedBike = nil 
    lib.notify({
        title = 'Purchase Error',
        description = 'Not enough cash. - $' .. bike.price .. " needed.",
        position = 'bottom',
        style = {
            backgroundColor = '#141517',
            color = '#909296'
        },
        icon = 'ban',
        iconColor = '#C53030'
    })
end)

-- Rentals

lib.registerContext({ -- Rentals select menu
    id = 'cycles_menu',
    title = 'Choose your bike',
    options = getBikes(),
})

local checked = false
local notified = false

Citizen.CreateThread(function()
    local wait = 500
    while true do
        Wait(wait)
        if not IsPlayerDead(player) then
            for _, locations in pairs(Config.locations) do
                local dist = distanceFromPed(locations)
                if dist < 1.0 then
                    wait = 0
                    if not notified then
                        if rentedBikes[vehicle] then
                            lib.showTextUI('[E] - Return Bike')
                        elseif vehicle == 0 then
                            lib.showTextUI('[E] - Open Rentals')
                        end
                        notified = true
                    end
                    if IsControlJustPressed(0, 51) then
                        if rentedBikes[vehicle] then
                            DeleteEntity(vehicle)
                            lib.notify({
                                title = 'Bike Returned',
                                description = "Thank you for returning the bike!",
                                position = 'bottom',
                                type = "success"
                            })
                        elseif vehicle == 0 then
                            lib.showContext('cycles_menu')
                        end
                        wait = 500
                    end
                    break
                elseif dist < 6.5 then
                    wait = 0
                    DrawMarker(38, locations.x, locations.y, locations.z - 0.2, 0, 0, 0, 0, 0, 0, 0.5, 0.5, 0.5, 46, 121, 242, 255, false, true, false, false)
                    if notified then
                        lib.hideTextUI()
                        notified = false
                    end
                    break
                else
                    if notified then
                        lib.hideTextUI()
                        notified = false
                    end
                    wait = 500
                end

            end
        end
    end
end)