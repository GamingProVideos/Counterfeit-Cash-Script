ESX = exports["es_extended"]:getSharedObject()
-- Notify Cops
function CopsNotify()
    if ESX.GetPlayerData().job == "police" then
        ESX.ShowNotification(TranslateCap('PoliceNot'))  
    
        Citizen.CreateThread(function(...)
    
          local blipA = AddBlipForRadius(768.05, -3185.19, 5.9, 100.0)
    
          SetBlipHighDetail(blipA, true)
    
          SetBlipColour(blipA, 1)
    
          SetBlipAlpha (blipA, 128)
    
    
    
          --local blipB = AddBlipForCoord(768.05, -3185.19, 5.9)
          local blipB = Config.PoliceBlip
          SetBlipSprite               (blipB, 458)
    
          SetBlipDisplay              (blipB, 4)
    
          SetBlipScale                (blipB, 1.0)
    
          SetBlipColour               (blipB, 1)
    
          SetBlipAsShortRange         (blipB, true)
    
          SetBlipHighDetail           (blipB, true)
    
          BeginTextCommandSetBlipName ("STRING")
    
          AddTextComponentString      ("Printing In Progress")
    
          EndTextCommandSetBlipName   (blipB)
    
    
    
          local timer = GetGameTimer()
    
          while GetGameTimer() - timer < 30000 do
    
            Citizen.Wait(0)
    
          end
    
    
    
          RemoveBlip(blipA)
    
          RemoveBlip(blipB)
    
        end)
    
      end

end