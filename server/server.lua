ESX = nil 

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

print("[royal_eatshop] Working")

RegisterServerEvent('royal_catcafe:addType1')
AddEventHandler('royal_catcafe:addType1', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.addInventoryItem('manzana', 1)
    xPlayer.removeAccountMoney('money', 4) 
    sendToDiscord(Strings['exploit_title'], (Strings['exploit_message']):format(xPlayer.identifier), 15548997)
    TriggerClientEvent('esx:showNotification',source, 'Se ha entregado el pedido, que disfrutes.')
end)

RegisterServerEvent('royal_catcafe:addType2')
AddEventHandler('royal_catcafe:addType2', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.addInventoryItem('taco', 1)
    xPlayer.removeAccountMoney('money', 12) 
    sendToDiscord(Strings['exploit_title'], (Strings['exploit_message']):format(xPlayer.identifier), 15548997)
    TriggerClientEvent('esx:showNotification',source, 'Se ha entregado el pedido, que disfrutes.')
end)

RegisterServerEvent('royal_catcafe:addType3')
AddEventHandler('royal_catcafe:addType3', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.addInventoryItem('hamburguesa', 1)
    xPlayer.removeAccountMoney('money', 6)
    sendToDiscord(Strings['exploit_title'], (Strings['exploit_message']):format(xPlayer.identifier), 15548997)
    TriggerClientEvent('esx:showNotification',source, 'Se ha entregado el pedido, que disfrutes.')
end)

RegisterServerEvent('royal_catcafe:addType4')
AddEventHandler('royal_catcafe:addType4', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.addInventoryItem('patatas', 1)
    xPlayer.removeAccountMoney('money', 2)
    sendToDiscord(Strings['exploit_title'], (Strings['exploit_message']):format(xPlayer.identifier), 15548997)
    TriggerClientEvent('esx:showNotification',source, 'Se ha entregado el pedido, que disfrutes.')
end)

RegisterServerEvent('royal_catcafe:addType5')
AddEventHandler('royal_catcafe:addType5', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.addInventoryItem('cafe', 1)
    xPlayer.removeAccountMoney('money', 9)
    sendToDiscord(Strings['exploit_title'], (Strings['exploit_message']):format(xPlayer.identifier), 15548997)
    TriggerClientEvent('esx:showNotification',source, 'Se ha entregado el pedido, que disfrutes.')
end)

RegisterServerEvent('royal_catcafe:addType6')
AddEventHandler('royal_catcafe:addType6', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.addInventoryItem('zumo', 1)
    xPlayer.removeAccountMoney('money', 7)
    sendToDiscord(Strings['exploit_title'], (Strings['exploit_message']):format(xPlayer.identifier), 15548997)
    TriggerClientEvent('esx:showNotification',source, 'Se ha entregado el pedido, que disfrutes.')
end)

function sendToDiscord(name, message, color)
	local connect = {
		  {
			  ["color"] = color,
			  ["title"] = "**".. name .."**",
			  ["description"] = message,
			  ["footer"] = {
			  ["text"] = "Royal Eat Shop - Script",
			  },
		  }
	  }
	PerformHttpRequest(Config.WebhookLink, function(err, text, headers) end, 'POST', json.encode({username = 'Royal-EatShop', embeds = connect, avatarrl = ''}), { ['Content-Type'] = 'application/json' })
end