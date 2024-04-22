RegisterServerEvent('DiscordLog')
AddEventHandler('DiscordLog', function(amountToWash)

  local xPlayer = ESX.GetPlayerFromId(source)
  local id = xPlayer.getIdentifier()
  local logs = Config.webhooklink
  local name = xPlayer.getName()
  local DATE = os.date(" %H:%M %d.%m.%y")
  local connect = {
	{
		["color"] = "8663711",
		["title"] = TranslateCap('DiscordWebhookName'),
		["description"] = "".. name .. "\n IDENTIFIER: [" .. id .. "] \n" .. "Laundered money: " .. amountToWash .. "" .. "\nTime: ".. DATE .. "",
		["footer"] = {
		["text"] = Config.servername,
		},
	}
}

PerformHttpRequest(logs, function(err, text, headers) end, 'POST', json.encode({username = Config.WebhookName, embeds = connect}), { ['Content-Type'] = 'application/json' })
end)
