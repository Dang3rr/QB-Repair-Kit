local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Commands.Add("repairveh", "Repair veh (repair kit needed!)", {}, false, function(source, args)
	local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemByName("repairkit") ~= nil then
	TriggerClientEvent('qb-repair:client:triggerMenu', source)
	else
        TriggerClientEvent('QBCore:Notify', source, 'You don\'t have a repair kit on you', 'error')
	end
end)