lib.locale()
local QBCore = exports["qb-core"]:GetCoreObject()
local Config, PlayerPed = nil, nil
local blip = nil
CreateThread(function()
    Wait(500)
    Config = lib.callback.await("fx-ilegal::server::init", false)
end)
RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    PlayerPed = QBCore.Functions.GetPlayerData()
end)
RegisterNetEvent('QBCore:Client:OnJobUpdate', function(job)
    PlayerPed.job = job
end)
RegisterNetEvent('QBCore:Client:SetPlayerData', function(val)
    PlayerPed = val
end)
-- CreateThread(function()
--     Wait(500)
--     PlayerPed = QBCore.Functions.GetPlayerData()
-- end) -- Uncomment this if you need to restart the script
local function crearMenu()
    lib.registerContext({
        id = "_ilegal_armas",
        title = locale("client.weapons.title"),
        options = Config.armas,
    })

    lib.registerContext({
        id = "_ilegal_balas",
        title = locale("client.bullets.title"),
        options = Config.balas,
    })
end

local function addBlip(coords, text)
    local blip = AddBlipForCoord(coords.x, coords.y, coords.z)
    SetBlipSprite(blip, 535)
    SetBlipColour(blip, 1)
    SetBlipDisplay(blip, 4)
    SetBlipAlpha(blip, 250)
    SetBlipScale(blip, 0.8)
    SetBlipAsShortRange(blip, false)
    PulseBlip(blip)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(text)
    EndTextCommandSetBlipName(blip)
end
local function changeWalkingState(entity)
    CreateThread(function()
        ResetPedMovementClipset(entity, 1)
        --  lib.requestAnimSet("handsinpockets_1")
        lib.requestAnimSet("move_characters@Jimmy@slow@")
        SetPedMovementClipset(entity, "move_characters@Jimmy@slow@", 1)
        SetPedConfigFlag(entity, 285, true)
        SetPedConfigFlag(entity, 248, true)
        SetPedConfigFlag(entity, 212, true)
        SetPedConfigFlag(entity, 189, true)
    end)
end
local function addPoints(entity, value)
    CreateThread(function()
        local point = lib.points.new({
            coords = GetEntityCoords(entity),
            distance = 15,
            debug = true
        })

        function point:onEnter()
            if PlayerPed.job.type == "leo" then return end
            ClearPedTasks(entity)
            ClearPedTasks(cache.ped)
            TaskTurnPedToFaceEntity(entity, cache.ped, -1)
        end

        function point:onExit()
            TaskWanderInArea(
                entity --[[ Ped ]],
                value.x --[[ number ]],
                value.y --[[ number ]],
                value.z --[[ number ]],
                10.0, 20, 100
            )
        end
    end)
end
local function entityPatroll(entity, value)
    TaskWanderInArea(
        entity --[[ Ped ]],
        value.x --[[ number ]],
        value.y --[[ number ]],
        value.z --[[ number ]],
        10.0, 20, 100
    )
end
local function createTarget(netID)
    exports.ox_target:addEntity(netID, {
        {
            label = locale("client.weapons.buy_weapons"),
            name = "ilegal_armas",
            canInteract = function(entity, distance, coords, name, bone)
                if IsEntityDead(entity) then return false end
                local _coords = GetEntityCoords(cache.ped)
                if #(coords - _coords) > 3.0 then
                    return false
                end
                return true
            end,
            onSelect = function()
                lib.showContext("_ilegal_armas")
            end
        },
        {
            label = locale("client.bullets.buy_weapons"),
            name = "ilegal_balas",
            canInteract = function(entity, distance, coords, name, bone)
                local _coords = GetEntityCoords(cache.ped)
                if #(coords - _coords) > 3.0 then
                    return false
                end
                return true
            end,
            onSelect = function()
                lib.showContext("_ilegal_balas")
            end
        }
    })
end
AddStateBagChangeHandler("init", nil, function(bagName, key, value)
    local entity = GetEntityFromStateBagName(bagName)
    if not entity then return end
    local netID = NetworkGetNetworkIdFromEntity(entity)
    SetBlockingOfNonTemporaryEvents(entity, true)
    SetEntityInvincible(entity, true)
    crearMenu()
    changeWalkingState(entity)
    entityPatroll(entity, value)
    addPoints(entity, value)
    createTarget(netID)
end)
RegisterNetEvent("addblip", function(coords)
    if source == "" then return end
    blip = addBlip(coords, "Ilegal Seller")
end)
AddEventHandler("onResourceStop", function(res)
    if res == cache.resource then
        if DoesBlipExist(blip) then
            RemoveBlip(blip)
        end
    end
end)
