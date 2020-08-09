local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")

vRPex = Tunnel.getInterface("bdl_cloakroom")

local menuactive = false
function ToggleActionMenu()
	menuactive = not menuactive
	if menuactive then
		SetNuiFocus(true,true)
		TransitionToBlurred(1000)
		SendNUIMessage({ showmenu = true })
	else
		SetNuiFocus(false)
		TransitionFromBlurred(1000)
		SendNUIMessage({ hidemenu = true })
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
--[ BUTTON ]-----------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("ButtonClick",function(data,cb)
	if data == "default" then
		TriggerServerEvent("default")
	
	elseif data == "default2" then
		TriggerServerEvent("default2")

	elseif data == "gtm" then
		TriggerServerEvent("gtm")

	elseif data == "tactical" then
		TriggerServerEvent("tactical")

	elseif data == "k9trainor" then
		TriggerServerEvent("k9trainor")

	elseif data == "transit" then
		TriggerServerEvent("transit")
		
	elseif data == "csi" then
		TriggerServerEvent("csi")

	elseif data == "off-uniform" then
		TriggerServerEvent("off-uniform")

	elseif data == "fechar" then
		ToggleActionMenu()
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
--[ LOCAIS ]-----------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
local clothes = {
	{ ['x'] = -455.2, ['y'] = 6015.57, ['z'] = 31.72 },
	{ ['x'] = -1098.09, ['y'] = -831.86, ['z'] = 14.29 }
}
-----------------------------------------------------------------------------------------------------------------------------------------
--[ MENU ]-------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	SetNuiFocus(false,false)
	while true do
		Citizen.Wait(1)

		for k,v in pairs(clothes) do
			local ped = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(ped))
			local bowz,cdz = GetGroundZFor_3dCoord(v.x,v.y,v.z)
			local distance = GetDistanceBetweenCoords(v.x,v.y,cdz,x,y,z,true)
			local clothes = clothes[k]
			
			if distance <= 20 then
			DrawMarker(21, clothes.x, clothes.y, clothes.z-0.6,0,0,0,0.0,0,0,0.5,0.5,0.4,255,0,0,50,0,0,0,1)
				if distance <= 1.2 then
					if IsControlJustPressed(0,38) and vRPex.checkOfficer() then
						ToggleActionMenu()
					end
				end
			end
		end
	end
end)