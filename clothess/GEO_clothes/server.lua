ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


RegisterServerEvent('remove:clothes')
AddEventHandler('remove:clothes', function(skin1, skin2, type)
	local xPlayer = ESX.GetPlayerFromId(source)
		clothes = type
		
		xPlayer.removeInventoryItem(clothes,1, {accessories = skin1, accessories2 = skin2, description = 'This is a '..clothes..' '..skin1..' '..skin2})
end)


RegisterServerEvent('add:clothes')
AddEventHandler('add:clothes', function(skin1, skin2, type)
	local xPlayer = ESX.GetPlayerFromId(source)
		clothes = type
		
	
		xPlayer.addInventoryItem(clothes, 1, {accessories = skin1, accessories2 = skin2, description = 'This is a '..clothes..' '..skin1..' '..skin2})
		

end)

RegisterServerEvent('add:clothestorso')
AddEventHandler('add:clothestorso', function(skin1, skin2, skin3, skin4, skin5, skin6, type)
	local xPlayer = ESX.GetPlayerFromId(source)
		clothes1 = type
		clothes2 = 'arms'
		clothes3 = 'tshirt'
		xPlayer.addInventoryItem('torso', 1, {accessories = skin1, accessories2 = skin2, description = 'This is a '..clothes1..' '..skin1..' '..skin2})
		xPlayer.addInventoryItem('arms', 1, {accessories = skin3, accessories2 = skin4, description = 'This is a '..clothes2..' '..skin3..' '..skin4})
		xPlayer.addInventoryItem('tshirt', 1, {accessories = skin5, accessories2 = skin6, description = 'This is a '..clothes3..' '..skin5..' '..skin6})
	
	
end)






