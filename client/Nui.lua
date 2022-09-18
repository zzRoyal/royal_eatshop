ESX = nil 

Citizen.CreateThread(function()
    while ESX == nil do
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    Citizen.Wait(10)
    end 
end)  

isDead = false

AddEventHandler("esx:onPlayerDeath", function()
  isDead = true
end)


RegisterNetEvent('royalcatcafe:sendNuiCallback')
AddEventHandler('royalcatcafe:sendNuiCallback', function()
    SetNuiFocus(true, true)
    SendNUIMessage({
        message    = "showtypes"
    })
end) 

RegisterCommand("catcafe", function()
    SetNuiFocus(true, true)
    SendNUIMessage({
        message    = "showtypes"
    })
end)

RegisterNUICallback("closetypeselect", function(a, b)
  
    SetNuiFocus(false, false)
    SendNUIMessage({message = "hide"})
  
end)


RegisterNUICallback("selecttype", function(a, b)
    local playerPed = PlayerPedId()
    juegoSeleccionado = tostring(a.menuRoyaltype)
    SetNuiFocus(false, false)
    if juegoSeleccionado == "type1" then
      if isDead  then
        ESX.ShowNotification("No puedes usar esto muerto.")
      else
        ESX.ShowNotification("Se ha pedido tu encargo, se avisará cuando esté listo aproximadamente 30 segundos.")
            TriggerEvent("mythic_progbar:client:progress", {
                name = "unique_action_name",
                duration = 30000,
                label = "Esperando pedido...",
                useWhileDead = false,
                canCancel = true,
                controlDisables = {
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                },
                animation = {
                    animDict = "missheistdockssetup1clipboard@idle_a",
                    anim = "idle_a",
                },
                prop = {
                    model = "prop_paper_bag_small",
                }
            }, function(status)
                if not status then
                end
            end)
            Citizen.Wait(30000)
            TriggerServerEvent("royal_catcafe:addType1")
            print("send log")
      end
    end

    if juegoSeleccionado == "type2" then
      if isDead  then
        ESX.ShowNotification("No puedes usar esto muerto")
      else
        ESX.ShowNotification("Se ha pedido tu encargo, se avisará cuando esté listo aproximadamente 30 segundos.")
            TriggerEvent("mythic_progbar:client:progress", {
                name = "unique_action_name",
                duration = 30000,
                label = "Esperando pedido...",
                useWhileDead = false,
                canCancel = true,
                controlDisables = {
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                },
                animation = {
                    animDict = "missheistdockssetup1clipboard@idle_a",
                    anim = "idle_a",
                },
                prop = {
                    model = "prop_paper_bag_small",
                }
            }, function(status)
                if not status then
                end
            end)
            Citizen.Wait(30000)
            TriggerServerEvent("royal_catcafe:addType2")
            print("send log")
      end
    end

    if juegoSeleccionado == "type3" then
      if isDead  then
      ESX.ShowNotification("No puedes utilizar esto muerto.")
      else
        ESX.ShowNotification("Se ha pedido tu encargo, se avisará cuando esté listo aproximadamente 30 segundos.")
            TriggerEvent("mythic_progbar:client:progress", {
                name = "unique_action_name",
                duration = 30000,
                label = "Esperando pedido...",
                useWhileDead = false,
                canCancel = true,
                controlDisables = {
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                },
                animation = {
                    animDict = "missheistdockssetup1clipboard@idle_a",
                    anim = "idle_a",
                },
                prop = {
                    model = "prop_paper_bag_small",
                }
            }, function(status)
                if not status then
                end
            end)
            Citizen.Wait(30000)
            TriggerServerEvent("royal_catcafe:addType3")
            print("send log")
      end
    end

    if juegoSeleccionado == "type4" then
      if isDead  then
        ESX.ShowNotification("No puedes usar esto muerto")
      else
        ESX.ShowNotification("Se ha pedido tu encargo, se avisará cuando esté listo aproximadamente 30 segundos.")
            TriggerEvent("mythic_progbar:client:progress", {
                name = "unique_action_name",
                duration = 30000,
                label = "Esperando pedido...",
                useWhileDead = false,
                canCancel = true,
                controlDisables = {
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                },
                animation = {
                    animDict = "missheistdockssetup1clipboard@idle_a",
                    anim = "idle_a",
                },
                prop = {
                    model = "prop_paper_bag_small",
                }
            }, function(status)
                if not status then
                end
            end)
            Citizen.Wait(30000)
            TriggerServerEvent("royal_catcafe:addType4")
            print("send log")
      end
    end

        if juegoSeleccionado == "type5" then
      if isDead  then
      ESX.ShowNotification("No puedes utilizar esto muerto.")
      else
        ESX.ShowNotification("Se ha pedido tu encargo, se avisará cuando esté listo aproximadamente 30 segundos.")
            TriggerEvent("mythic_progbar:client:progress", {
                name = "unique_action_name",
                duration = 30000,
                label = "Esperando pedido...",
                useWhileDead = false,
                canCancel = true,
                controlDisables = {
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                },
                animation = {
                    animDict = "missheistdockssetup1clipboard@idle_a",
                    anim = "idle_a",
                },
                prop = {
                    model = "prop_paper_bag_small",
                }
            }, function(status)
                if not status then
                end
            end)
            Citizen.Wait(30000)
            TriggerServerEvent("royal_catcafe:addType5")
            print("send log")
      end
    end

        if juegoSeleccionado == "type6" then
      if isDead  then
            ESX.ShowNotification("No puedes utilizar esto muerto.")
      else
        ESX.ShowNotification("Se ha pedido tu encargo, se avisará cuando esté listo aproximadamente 30 segundos.")
            TriggerEvent("mythic_progbar:client:progress", {
                name = "unique_action_name",
                duration = 30000,
                label = "Esperando pedido...",
                useWhileDead = false,
                canCancel = true,
                controlDisables = {
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                },
                animation = {
                    animDict = "missheistdockssetup1clipboard@idle_a",
                    anim = "idle_a",
                },
                prop = {
                    model = "prop_paper_bag_small",
                }
            }, function(status)
                if not status then
                end
            end)
            Citizen.Wait(30000)
            TriggerServerEvent("royal_catcafe:addType6")
            print("send log")
      end
    end
  
end)

