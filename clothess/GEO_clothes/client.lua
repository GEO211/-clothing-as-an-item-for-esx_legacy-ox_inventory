ESX          = nil
local isanim = false
Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
	
end)




RegisterNetEvent('clothes:mask')
AddEventHandler('clothes:mask', function(item, wait, cb)
   local player = PlayerPedId()
   type = 'mask'
   local metadata = ESX.GetPlayerData().inventory[item.slot].metadata
   local skin1 = metadata.accessories
   local skin2 = metadata.accessories2
   if GetPedDrawableVariation(player, 1) == Config.removemask and not isanim then
    isanim = true
	maskonoff()
    Citizen.Wait(1000)
	SetPedComponentVariation(player, 1, skin1, skin2, 3) 
	TriggerServerEvent('remove:clothes', skin1, skin2, type)
	isanim = false
	end

end)

RegisterNetEvent('clothes:ears')
AddEventHandler('clothes:ears', function(item, wait, cb)
    local player = PlayerPedId()
    type = 'ears'
    local metadata = ESX.GetPlayerData().inventory[item.slot].metadata
    local skin1 = metadata.accessories
    local skin2 = metadata.accessories2

    if GetPedPropIndex(player,2) == Config.removeears and not isanim  then
        isanim = true
        earsonoff()
        Citizen.Wait(1000)
        SetPedPropIndex(player, 2, skin1, skin2, true)
    TriggerServerEvent('remove:clothes', skin1, skin2, type)
    isanim = false
    end


end)


RegisterNetEvent('clothes:glasses')
AddEventHandler('clothes:glasses', function(item, wait, cb)
    local player = PlayerPedId()
    type = 'glasses'
    local metadata = ESX.GetPlayerData().inventory[item.slot].metadata
    local skin1 = metadata.accessories
    local skin2 = metadata.accessories2
    if GetPedPropIndex(player,0) == Config.removeglasses and not isanim  then
        isanim = true
        glassesonoff()
        Citizen.Wait(1000)
        SetPedPropIndex(player, 0, skin1, skin2, true)
    TriggerServerEvent('remove:clothes', skin1, skin2, type)
    isanim = false
    end


end)

RegisterNetEvent('clothes:helmet')
AddEventHandler('clothes:helmet', function(item, wait, cb)
    local player = PlayerPedId()
    type = 'helmet'
    local metadata = ESX.GetPlayerData().inventory[item.slot].metadata
    local skin1 = metadata.accessories
    local skin2 = metadata.accessories2
    if GetPedPropIndex(player,0) == Config.removehelmet and not isanim  then
        isanim = true
        hatofon()
        Citizen.Wait(1000)
        SetPedPropIndex(player, 0, skin1, skin2, true)
    TriggerServerEvent('remove:clothes', skin1, skin2, type)
    isanim = false
    end


end)




RegisterNetEvent('clothes:arms')
AddEventHandler('clothes:arms', function(item, wait, cb)
    local player = PlayerPedId()
    type = 'arms'
    local metadata = ESX.GetPlayerData().inventory[item.slot].metadata
    local skin1 = metadata.accessories
    local skin2 = metadata.accessories2
    if GetPedDrawableVariation(player, 3) == Config.removegloves and not isanim  then
        isanim = true
        armsonoff()
     Citizen.Wait(1000)
     SetPedComponentVariation(player, 3, skin1, skin2, 0) 
     TriggerServerEvent('remove:clothes', skin1, skin2, type)
     isanim = false
     end
end)


RegisterNetEvent('clothes:tshirt')
AddEventHandler('clothes:tshirt', function(item, wait, cb)
   local player = PlayerPedId()
   type = 'tshirt'
   local metadata = ESX.GetPlayerData().inventory[item.slot].metadata
   local skin1 = metadata.accessories
   local skin2 = metadata.accessories2
   if GetPedDrawableVariation(player, 8) == Config.removetshirt and not isanim then
    isanim = true
	tshirtonoff()
    Citizen.Wait(1000)
	SetPedComponentVariation(player, 8, skin1, skin2, 2) 
	TriggerServerEvent('remove:clothes', skin1, skin2, type)
	isanim = false
	end

end)

RegisterNetEvent('clothes:torso')
AddEventHandler('clothes:torso', function(item, wait, cb)
   local player = PlayerPedId()
   type = 'torso'
   local metadata = ESX.GetPlayerData().inventory[item.slot].metadata
   local skin1 = metadata.accessories
   local skin2 = metadata.accessories2
   if GetPedDrawableVariation(player, 11) == Config.removetorso and not isanim then
    isanim = true
	torsoonoff()
    Citizen.Wait(1000)
	SetPedComponentVariation(player, 11, skin1, skin2, 3) 
	TriggerServerEvent('remove:clothes', skin1, skin2, type)
	isanim = false
	end

end)

RegisterNetEvent('clothes:jeans')
AddEventHandler('clothes:jeans', function(item, wait, cb)
    local player = PlayerPedId()
    type = 'jeans'
    local metadata = ESX.GetPlayerData().inventory[item.slot].metadata
    local skin1 = metadata.accessories
	local skin2 = metadata.accessories2
    
    if GetPedDrawableVariation(player, 4) == Config.removejeans and not isanim then
        isanim = true
        jeansonoff()
     Citizen.Wait(1000)
     SetPedComponentVariation(player, 4, skin1, skin2, 0)  
     TriggerServerEvent('remove:clothes', skin1, skin2, type)
     isanim = false
     end

end)


RegisterNetEvent('clothes:shoes')
AddEventHandler('clothes:shoes', function(item, wait, cb)
     local player = PlayerPedId()
     type = 'shoes'
     local metadata = ESX.GetPlayerData().inventory[item.slot].metadata
     local skin1 = metadata.accessories
     local skin2 = metadata.accessories2
     
     if GetPedDrawableVariation(player, 6) == Config.removeshoes  and not isanim then
        isanim = true
         shoesonoff()
      Citizen.Wait(1000)
      SetPedComponentVariation(player, 6, skin1, skin2, 2)  
      TriggerServerEvent('remove:clothes', skin1, skin2, type)
      isanim = false
      end


end)



RegisterNetEvent('clothes:bag')
AddEventHandler('clothes:bag', function(item, wait, cb)
    local player = PlayerPedId()
    type = 'bag'
    local metadata = ESX.GetPlayerData().inventory[item.slot].metadata
    local skin1 = metadata.accessories
    local skin2 = metadata.accessories2
    
    if GetPedDrawableVariation(player, 5) == Config.removebag  and not isanim then
       isanim = true
        bagonoff()
     Citizen.Wait(1000)
     SetPedComponentVariation(player, 5, skin1, skin2, 2)  
     TriggerServerEvent('remove:clothes', skin1, skin2, type)
     isanim = false
     end
end)


-- command
RegisterCommand("torso", function(source, args, rawCommand)
    local player = PlayerPedId()
    type = 'torso'
    skin1 = GetPedDrawableVariation(player, 11)
    skin2 = GetPedTextureVariation(player, 11)

    skin3 = GetPedDrawableVariation(player, 3)
    skin4 = GetPedTextureVariation(player, 3)

    skin5 = GetPedDrawableVariation(player, 8)
    skin6 = GetPedTextureVariation(player, 8)

    if GetPedDrawableVariation(player, 11) ~= Config.removetorso and not isanim then
    isanim = true
    torsoonoff()
    Citizen.Wait(1000)
    SetPedComponentVariation(player, 11, Config.removetorso, 0, 0)
    if GetPedDrawableVariation(player, 3) ~= Config.removegloves then
        SetPedComponentVariation(player, 3, Config.removegloves, 0, 0)
    end
    SetPedComponentVariation(player, 8, -1, 0, 2)
    
    TriggerServerEvent('add:clothestorso', skin1, skin2, skin3, skin4, skin5, skin6, type)
    isanim = false
    end
end, false) 


RegisterCommand("jeans", function(source, args, rawCommand)
    local player = PlayerPedId()
    type = 'jeans'
    skin1 = GetPedDrawableVariation(player, 4)
    skin2 = GetPedTextureVariation(player, 4)
    if GetPedDrawableVariation(player, 4) ~= Config.removejeans and not isanim then
        isanim = true
        jeansonoff()
    Citizen.Wait(1000)
    SetPedComponentVariation(player, 4, Config.removejeans, 1, 2)
    TriggerServerEvent('add:clothes', skin1, skin2, type)
    isanim = false
    end
end, false) 


RegisterCommand("shoes", function(source, args, rawCommand)
    local player = PlayerPedId()
    type = 'shoes'
    skin1 = GetPedDrawableVariation(player, 6)
    skin2 = GetPedTextureVariation(player, 6)
    if GetPedDrawableVariation(player,6) ~= Config.removeshoes and not isanim then
        isanim = true
        shoesonoff()
    Citizen.Wait(1000)
    SetPedComponentVariation(player, 6, Config.removeshoes, 0, 2)
    TriggerServerEvent('add:clothes', skin1, skin2, type)
    isanim = false
    end
end, false) 

RegisterCommand("gloves", function(source, args, rawCommand)
    local player = PlayerPedId()
    type = 'arms'
    skin1 = GetPedDrawableVariation(player, 3)
    skin2 = GetPedTextureVariation(player, 3)
    if GetPedDrawableVariation(player,3) ~= Config.removegloves and not isanim  then
        isanim = true
        armsonoff()
    Citizen.Wait(1000)
    SetPedComponentVariation(player, 3, Config.removegloves, 0, 0)
    TriggerServerEvent('add:clothes', skin1, skin2, type)
    isanim = false
    end
end, false) 


RegisterCommand("mask", function(source, args, rawCommand)
    local player = PlayerPedId()
    type = 'mask'
    skin1 = GetPedDrawableVariation(player, 1)
    skin2 = GetPedTextureVariation(player, 1)
    if (GetPedDrawableVariation(player, 1) ~= 0) then
    if (GetPedDrawableVariation(player, 1) ~= Config.removemask) and not isanim then
    isanim = true
    maskonoff()
    Citizen.Wait(1000)
    SetPedComponentVariation(player, 1, Config.removemask, 0, 2)
    TriggerServerEvent('add:clothes', skin1, skin2, type)
    isanim = false
    end
end
end, false) 

RegisterCommand("ears", function(source, args, rawCommand)
    local player = PlayerPedId()
    type = 'ears'
    skin1 = GetPedPropIndex(player, 2)
    skin2 = GetPedPropTextureIndex(player,2)


    if GetPedPropIndex(player,2) ~= Config.removeears and not isanim  then
        isanim = true
        earsonoff()
    Citizen.Wait(1000)
    ClearPedProp(player,2)
    TriggerServerEvent('add:clothes', skin1, skin2, type)
    isanim = false
    end
end, false) 

-- RegisterCommand("glasses", function(source, args, rawCommand)
--     local player = PlayerPedId()
--     type = 'glasses'
--     skin1 = GetPedPropIndex(player, 1)
--     skin2 = GetPedPropTextureIndex(player, 1)


--     if GetPedPropIndex(player,1) ~= Config.removeglasses and not isanim  then
--         isanim = true
--         glassesonoff()
--     Citizen.Wait(1000)
--     ClearPedProp(player, 1)
--     TriggerServerEvent('add:clothes', skin1, skin2, type)
--     isanim = false
--     end
-- end, false) 

-- RegisterCommand('glasses', function(source)
--     if GetPedPropIndex(PlayerPedId(), 1) ~= -1 then
--         PlayClothesAnims("clothingspecs", "take_off", 600)
--         clothes["g"].index = GetPedPropIndex(PlayerPedId(), 1)
--         clothes["g"].texture = GetPedPropTextureIndex(PlayerPedId(), 1)
--         ClearPedProp(PlayerPedId(), 1)
--     elseif clothes["g"].index ~= nil and clothes["g"].texture ~= nil then
--         PlayClothesAnims("clothingspecs", "take_off", 600)  
--         SetPedPropIndex(PlayerPedId(), 1, clothes["g"].index, clothes["g"].texture, false)
--     end
-- end)
         

RegisterCommand("helmet", function(source, args, rawCommand)
    local player = PlayerPedId()
    type = 'helmet'
    skin1 = GetPedPropIndex(player, 0)
    skin2 = GetPedPropTextureIndex(player, 0)

    if GetPedPropIndex(player,0) ~= Config.removehelmet and not isanim  then
        isanim = true
    hatofon()
    Citizen.Wait(1000)
    ClearPedProp(player, 0)
    TriggerServerEvent('add:clothes', skin1, skin2, type)
    isanim = false
    end
end, false) 

RegisterCommand("bag", function(source, args, rawCommand)
    local player = PlayerPedId()
    type = 'bag'
    skin1 = GetPedDrawableVariation(player, 5)
    skin2 = GetPedTextureVariation(player, 5)

    if GetPedDrawableVariation(player, 5) ~= Config.removebag and not isanim  then
        isanim = true
        bagonoff()
    Citizen.Wait(1000)
    SetPedComponentVariation(player, 5, Config.removebag, 0, 2)
    TriggerServerEvent('add:clothes', skin1, skin2, type)
    isanim = false
    end
end, false) 


---end command



RegisterNetEvent('clothes:watches')
AddEventHandler('clothes:watches', function(item, wait, cb)
   local player = PlayerPedId()
   local metadata = ESX.GetPlayerData().inventory[item.slot].metadata
   local skin1 = metadata.accessories
   local skin2 = metadata.accessories2

	if not watches then
	watchesonoff()
	Wait (600)
	ClearPedSecondaryTask(player)
	watches = true
	SetPedPropIndex(player, 6, skin1, skin2, 0)
	elseif watches then
	watches = false
	Wait (600)
	ClearPedSecondaryTask(player)
	ClearPedProp(player,6)
	end
end)


RegisterNetEvent('clothes:chain')
AddEventHandler('clothes:chain', function(item, wait, cb)
   local player = PlayerPedId()
   local metadata = ESX.GetPlayerData().inventory[item.slot].metadata
   local skin1 = metadata.accessories
   local skin2 = metadata.accessories2

	if not chain then
	chainonoff()
	Wait (600)
	ClearPedSecondaryTask(player)
	chain = true
	SetPedComponentVariation(player, 7, skin1, skin2, 0)
	elseif chain then
	chainonoff()
	chain = false
	Wait (600)
	SetPedComponentVariation(player, 7, 0, 0, 2)
	ClearPedProp(player,6)
	end
end)


RegisterNetEvent('clothes:bracelet')
AddEventHandler('clothes:bracelet', function(item, wait, cb)
   local player = PlayerPedId()
   local metadata = ESX.GetPlayerData().inventory[item.slot].metadata
   local skin1 = metadata.accessories
   local skin2 = metadata.accessories2

	if not bracelet then
	braceletonoff()
	Wait (600)
	ClearPedSecondaryTask(player)
	bracelet = true
	SetPedPropIndex(player, 7, skin1, skin2, 0)
	elseif bracelet then
	braceletonoff()
	bracelet = false
	Wait (600)
	ClearPedSecondaryTask(player)
	ClearPedProp(player,7)
	end
end)


-- animation

		function torsoonoff()
        exports['mythic_progbar']:Progress({
            name = "unique_action_name",
            duration = 1000,
            label = "loading...",
            useWhileDead = false,
            canCancel = false,
            controlDisables = {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
                                },
                    Animation = {
                            animationDictionary = "clothingtie", 
                            animationName = "try_tie_negative_a",
                        },
                    DisableControls = {
                        Mouse = false,
                        Player = false,
                        Vehicle = false
                    }                                
                })
                 
			end
			
			function hatofon()
        exports['mythic_progbar']:Progress({
            name = "unique_action_name",
            duration = 1000,
            label = "loading...",
            useWhileDead = false,
            canCancel = false,
            controlDisables = {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
                                },
					
                      
						Animation = {
                            
                            animationDictionary = "missheist_agency2ahelmet", 
                            animationName = "take_off_helmet_stand",
                        },
						
                    DisableControls = {
                        Mouse = false,
                        Player = false,
                        Vehicle = false
                    }                                
                })
                 
			end
			
				function maskonoff()
        exports['mythic_progbar']:Progress({
            name = "unique_action_name",
            duration = 1000,
            label = "loading...",
            useWhileDead = false,
            canCancel = false,
            controlDisables = {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
                                },
					
                      
						Animation = {
                            
                            animationDictionary = "mp_masks@standard_car@ds@", 
                            animationName = "put_on_mask",
                        },
						
                    DisableControls = {
                        Mouse = false,
                        Player = false,
                        Vehicle = false
                    }                                
                })
                 
			end
			
			function earsonoff()
        exports['mythic_progbar']:Progress({
            name = "unique_action_name",
            duration = 1000,
            label = "loading...",
            useWhileDead = false,
            canCancel = false,
            controlDisables = {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
                                },
					
                      
						Animation = {
                            
                            animationDictionary = "mp_cp_stolen_tut", 
                            animationName = "b_think",
                        },
						
                    DisableControls = {
                        Mouse = false,
                        Player = false,
                        Vehicle = false
                    }                                
                })
                 
			end
			
			function tshirtonoff()
        exports['mythic_progbar']:Progress({
            name = "unique_action_name",
            duration = 1000,
            label = "loading...",
            useWhileDead = false,
            canCancel = false,
            controlDisables = {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
                                },
					
                      
						Animation = {
                            
                            animationDictionary = "clothingtie", 
                            animationName = "try_tie_negative_a",
                        },
						
                    DisableControls = {
                        Mouse = false,
                        Player = false,
                        Vehicle = false
                    }                                
                })
                 
			end
			
			function armsonoff()
        exports['mythic_progbar']:Progress({
            name = "unique_action_name",
            duration = 1000,
            label = "loading...",
            useWhileDead = false,
            canCancel = false,
            controlDisables = {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
                                },
					
                      
						Animation = {
                            
                            animationDictionary = "nmt_3_rcm-10", 
                            animationName = "cs_nigel_dual-10",
                        },
						
                    DisableControls = {
                        Mouse = false,
                        Player = false,
                        Vehicle = false
                    }                                
                })
                 
			end
			
				function jeansonoff()
        exports['mythic_progbar']:Progress({
            name = "unique_action_name",
            duration = 1000,
            label = "loading...",
            useWhileDead = false,
            canCancel = false,
            controlDisables = {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
                                },
					
                      
						Animation = {
                            
                            animationDictionary = "re@construction", 
                            animationName = "out_of_breath",
                        },
						
                    DisableControls = {
                        Mouse = false,
                        Player = false,
                        Vehicle = false
                    }                                
                })
                 
			end
			
				function shoesonoff()
        exports['mythic_progbar']:Progress({
            name = "unique_action_name",
            duration = 1000,
            label = "loading...",
            useWhileDead = false,
            canCancel = false,
            controlDisables = {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
                                },
					
                      
						Animation = {
                            
                            animationDictionary = "random@domestic", 
                            animationName = "pickup_low",
                        },
						
                    DisableControls = {
                        Mouse = false,
                        Player = false,
                        Vehicle = false
                    }                                
                })
                 
			end
			
				function bagonoff()
        exports['mythic_progbar']:Progress({
            name = "unique_action_name",
            duration = 1000,
            label = "loading...",
            useWhileDead = false,
            canCancel = false,
            controlDisables = {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
                                },
					
                      
						Animation = {
                            
                            animationDictionary = "anim@heists@ornate_bank@grab_cash", 
                            animationName = "intro",
                        },
						
                    DisableControls = {
                        Mouse = false,
                        Player = false,
                        Vehicle = false
                    }                                
                })
                 
			end
			
			function watchesonoff()
        exports['mythic_progbar']:Progress({
            name = "unique_action_name",
            duration = 1000,
            label = "loading...",
            useWhileDead = false,
            canCancel = false,
            controlDisables = {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
                                },
					
                      
						Animation = {
                            
                            animationDictionary = "nmt_3_rcm-10", 
                            animationName = "cs_nigel_dual-10",
                        },
						
                    DisableControls = {
                        Mouse = false,
                        Player = false,
                        Vehicle = false
                    }                                
                })
                 
			end
			
			function chainonoff()
        exports['mythic_progbar']:Progress({
            name = "unique_action_name",
            duration = 1000,
            label = "loading...",
            useWhileDead = false,
            canCancel = false,
            controlDisables = {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
                                },
					
                      
						Animation = {
                            
                            animationDictionary = "clothingtie", 
                            animationName = "try_tie_positive_a",
                        },
						
                    DisableControls = {
                        Mouse = false,
                        Player = false,
                        Vehicle = false
                    }                                
                })
                 
			end
			
			function braceletonoff()
        exports['mythic_progbar']:Progress({
            name = "unique_action_name",
            duration = 1000,
            label = "loading...",
            useWhileDead = false,
            canCancel = false,
            controlDisables = {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
                                },
					
                      
						Animation = {
                            
                            animationDictionary = "nmt_3_rcm-10", 
                            animationName = "cs_nigel_dual-10",
                        },
						
                    DisableControls = {
                        Mouse = false,
                        Player = false,
                        Vehicle = false
                    }                                
                })
                 
			end
			
			function glassesonoff()
        exports['mythic_progbar']:Progress({
            name = "unique_action_name",
            duration = 1000,
            label = "loading...",
            useWhileDead = false,
            canCancel = false,
            controlDisables = {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
                                },
					
                      
						Animation = {
                            
                            animationDictionary = "clothingspecs", 
                            animationName = "take_off",
                        },
						
                    DisableControls = {
                        Mouse = false,
                        Player = false,
                        Vehicle = false
                    }                                
                })
                 
			end
			
			


            




--[[
RegisterNetEvent('clothes:tshirt')
AddEventHandler('clothes:tshirt', function(item, wait, cb)
	local player = PlayerPedId()
	local metadata = ESX.GetPlayerData().inventory[item.slot].metadata
	local skin1 = metadata.accessories
    local skin2 = metadata.accessories2

    if not tshirt then
	tshirtonoff()
	Wait (600)
	ClearPedSecondaryTask(player)
	tshirt = true
	SetPedComponentVariation(player, 8, skin1, skin2, 0)
	elseif tshirt then
	tshirtonoff()
	tshirt = false
	Wait (600)
	ClearPedSecondaryTask(player)
	SetPedComponentVariation(player, 8, -1, 0, 2)

	end
end)]]
