

RegisterServerEvent('startWashing')
AddEventHandler('startWashing', function(amountToWash)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local playerIdentifier = GetPlayerIdentifier(_source)
    local playerId = _source

    if xPlayer.getAccount('black_money').money < amountToWash then
      TriggerClientEvent('esx:showNotification', _source, TranslateCap('notif4'))
        return
    end

    TriggerClientEvent('progressbar', _source, Config.washtime)
    Citizen.Wait(Config.washtime + 1000)
    local CashAfterTax = amountToWash * Config.Tax

    xPlayer.removeAccountMoney('black_money', amountToWash)
    xPlayer.addMoney(CashAfterTax)

    TriggerClientEvent('esx:showNotification', _source, TranslateCap('notif3')..CashAfterTax..'€')
    TriggerServerEvent('DiscordLog', amountToWash)
end)