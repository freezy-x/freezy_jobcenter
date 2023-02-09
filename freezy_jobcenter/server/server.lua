ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent("freezy_jobcenter:setjob1") 
AddEventHandler('freezy_jobcenter:setjob1', function(job)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.setJob("police", 0)
end)

RegisterServerEvent("freezy_jobcenter:setjob2") 
AddEventHandler('freezy_jobcenter:setjob2', function(job)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.setJob("trucker", 0)

end)

RegisterServerEvent("freezy_jobcenter:setjob3") 
AddEventHandler('freezy_jobcenter:setjob3', function(job)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.setJob("poolcleaner", 0)

end)