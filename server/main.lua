local QBCore = exports["qb-core"]:GetCoreObject()
local Sconfig = require "server.sconfig"
local ped = nil
local coords = nil
lib.callback.register("fx-ilegal::server::init", function(source)
    return Sconfig
end)

local function crearNpc()
    local coords = math.random(#Sconfig.coords)
    return Sconfig.coords[coords]
end

RegisterNetEvent("fx-ilegal::server::compraDeArma", function(args)
    local src = source
    local _ped = GetPlayerPed(src)
    local Coords = GetEntityCoords(_ped)
    local pedCoords = GetEntityCoords(ped)
    --local _npcCoords = vec3(coords.x, coords.y, coords.z)
    if #(Coords - pedCoords) > 3.0 then
        print("Stop exploiting!!")
        return
    end
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if Player.PlayerData.job.type == "leo" then return end
    local money = exports.ox_inventory:Search(src, "count", "black_money", false)
    if money >= args.precio then
        exports.ox_inventory:RemoveItem(src, "black_money", args.precio, false, false)
        exports.ox_inventory:AddItem(src, args.hash, args.cantidad, {
            propietario = Player.PlayerData.citizenid
        }, nil, nil)

        TriggerClientEvent('ox_lib:notify', source, {
            title = "Ilegal Buy",
            description = ("You buy %s"):format(exports.ox_inventory:Items()[args.hash].label),
            type = 'success', --'inform' or 'error' or 'success'or 'warning'
            duration = 5000
        })
    else
        TriggerClientEvent('ox_lib:notify', source, {
            title = "Ilegal Buy",
            description = ("You dont have enought black moneyu %s  \nMiss: $%s"):format(
                exports.ox_inventory:Items()[args.hash].label, (math.floor(args.precio - money))),
            type = 'error', --'inform' or 'error' or 'success'or 'warning'
            duration = 5000
        })
        return
    end
end)

CreateThread(function()
    if ped then
        DeleteEntity(ped)
    end
    coords = crearNpc()
    local hash = math.random(#Sconfig.ped)
    ped = CreatePed(4, Sconfig.ped[hash], coords.x, coords.y, coords.z, coords.w, false, false)
    Entity(ped).state:set("init", coords, true)
end)
lib.addCommand("ilegalPed", {
    help = "Where the ped is",
    params = {},
    restricted = 'group.admin'
}, function(source, args, raw)
    TriggerClientEvent("addblip", source, coords)
end)

AddEventHandler("onResourceStop", function(res)
    if cache.resource == res then
        if ped then
            DeleteEntity(ped)
        end
    end
end)
