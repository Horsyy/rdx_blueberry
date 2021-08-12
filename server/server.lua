RDX = nil
TriggerEvent('rdx:getSharedObject', function(obj) RDX = obj end)

RegisterServerEvent('rdx_blueberry:addBlueBerry')
AddEventHandler('rdx_blueberry:addBlueBerry', function(blueberries, sticks)
	xPlayer = RDX.GetPlayerFromId(source)
	xPlayer.addInventoryItem('blueberry', blueberries)
	xPlayer.addInventoryItem('stick', sticks)
end)

RegisterServerEvent("rdx_blueberry:addHunger")
AddEventHandler('rdx_blueberry:addHunger', function()
	TriggerClientEvent('rdx_status:add', source, 'hunger', 50000)
end)