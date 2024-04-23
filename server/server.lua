local ESX 				= nil
local EnougthCops = false

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

function GetCops()
  if ActivePolice then
          local Players = ESX.GetPlayers()
          policeOnline = 0
          for i = 1, #Players do
              local xPlayer = ESX.GetPlayerFromId(Players[i])
              if xPlayer["job"]["name"] == "police" then
                  policeOnline = policeOnline + 1
              end
          end
          if policeOnline >= Config.MinimumPolice then
              EnougthCops = true
          else
              EnougthCops = false
          end
      else
          EnougthCops = true
          --print("no need police")
  end
end