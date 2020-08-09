local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")

vRPex = {}
Tunnel.bindInterface("bdl_cloakroom",vRPex)

local default = {
    [1885233650] = {
        [1] = { 121,0 },
        [2] = { 4,0 },
        [3] = { 11,0 },
        [4] = { 25,1 },
        [5] = { -1,0 },
        [6] = { 25,0 },
        [7] = { 8,0 },			
        [8] = { 56,0 },
        [9] = { 14,0 },
        [10] = { 19,0 },
        [11] = { 32,1 },
        ["p0"] = { 9,0 },
        ["p1"] = { -1,0 },
        ["p2"] = { -1,0 },
        ["p6"] = { -1,0 },
        ["p7"] = { -1,0 }
    },
    [-1667301416] = {
        [1] = { 121,0 },
        [5] = { -1,0 },
        [7] = { 8,0 },
        [3] = { 14,0 },
        [4] = { 105,0 },
        [8] = { 3,0 },
        [6] = { 25,0 },
        [11] = { 265,0 },
        [9] = { 0,0 },
        [10] = { 16,0 },
        [11] = { 265,1 },
        ["p0"] = { -1,0 },
        ["p1"] = { -1,1 },
        ["p2"] = { -1,0 },
        ["p6"] = { -1,0 },
        ["p7"] = { -1,0 }
    }
}

local default2 = {
    [1885233650] = {
        [1] = { 121,0 },
        [2] = { 4,0 },
        [3] = { 14,0 },
        [4] = { 25,1 },
        [5] = { -1,0 },
        [6] = { 25,0 },
        [7] = { 8,0 },			
        [8] = { 56,0 },
        [9] = { 14,0 },
        [10] = { 18,0 },
        [11] = { 31,1 },
        ["p0"] = { 9,0 },
        ["p1"] = { -1,0 },
        ["p2"] = { -1,0 },
        ["p6"] = { -1,0 },
        ["p7"] = { -1,0 }
    },
    [-1667301416] = {
        [1] = { 121,0 },
        [5] = { -1,0 },
        [7] = { 8,0 },
        [3] = { 14,0 },
        [4] = { 105,0 },
        [8] = { 3,0 },
        [6] = { 25,0 },
        [11] = { 264,0 },
        [9] = { 0,0 },
        [10] = { 15,0 },
        [11] = { 264,1 },
        ["p0"] = { -1,0 },
        ["p1"] = { -1,1 },
        ["p2"] = { -1,0 },
        ["p6"] = { -1,0 },
        ["p7"] = { -1,0 }
    }
}

local k9trainor = {
    [1885233650] = {
        [1] = { 121,0 },
        [2] = { 4,0 },
        [3] = { 0,0 },
        [4] = { 25,1 },
        [5] = { -1,0 },
        [6] = { 25,0 },
        [7] = { 8,0 },			
        [8] = { 57,0 },
        [9] = { 14,0 },
        [10] = { -1,0 },
        [11] = { 38,3 },		
        ["p0"] = { 9,4 },
        ["p1"] = { -1,0 },
        ["p2"] = { -1,0 },
        ["p6"] = { -1,0 },
        ["p7"] = { -1,0 }
    },
    [-1667301416] = {
        [1] = { 121,0 },
        [5] = { -1,0 },
        [7] = { 8,0 },
        [3] = { 14,0 },
        [4] = { 30,0 },
        [8] = { 6,0 },
        [6] = { 25,0 },
        [11] = { 266,1 },
        [9] = { 0,0 },
        [10] = { -1,0 },
        ["p0"] = { -1,0 },
        ["p1"] = { -1,1 },
        ["p2"] = { -1,0 },
        ["p6"] = { -1,0 },
        ["p7"] = { -1,0 }
    }
}

local tactical = {
    [1885233650] = {
        [1] = { 52,3 },
        [2] = { 4,0 },
        [3] = { 22,0 },
        [4] = { 34,0 },
        [5] = { -1,0 },
        [6] = { 25,0 },
        [7] = { 1,0 },			
        [8] = { 38,0 },
        [9] = { 4,3 },
        [10] = { -1,0 },
        [11] = { 63,0 },
        ["p0"] = { 39,4 },
        ["p1"] = { 25,4 },
        ["p2"] = { -1,0 },
        ["p6"] = { -1,0 },
        ["p7"] = { -1,0 }
    },
    [-1667301416] = {
        [1] = { 126,0 },
        [3] = { 11,0 },
        [4] = { 30,0 },
        [5] = { -1,0 },
        [6] = { 25,0 },
        [7] = { 8,0 },
        [8] = { 3,0 },
        [9] = { 34,0 },
        [10] = { -1,0 },
        [11] = { 264,1 },
        ["p0"] = { 59,9 },
        ["p1"] = { 12,0 },
        ["p2"] = { -1,0 },
        ["p6"] = { -1,0 },
        ["p7"] = { -1,0 }

    }
}

local gtm = {
    [1885233650] = {
   	[1] = { 122,0 },
			[5] = { -1,0 },
			[7] = { 1,0 },
			[3] = { 22,0 },
			[4] = { 32,1 },
			[8] = { 137,0 },
			[6] = { 13,0 },
			[11] = { 51,0 },
			[9] = { -1,0 },
			[10] = { -1,0 },
			["p0"] = { 17,0 },
			["p1"] = { -1,0 },
			["p2"] = { -1,0 },
			["p6"] = { -1,0 },
			["p7"] = { -1,0 }
    },
    [-1667301416] = {
        [1] = { 0,0 },
        [3] = { 14,0 },
        [4] = { 31,0 },
        [5] = { -1,0 },
        [6] = { 62,20 },
        [7] = { 8,0 },	
        [8] = { 8,0 },
        [9] = { 34,0 },
        [10] = { -1,0 },
        [11] = { 265,0 },	
        ["p0"] = { 17,0 },
        ["p1"] = { -1,0 },
        ["p2"] = { -1,0 },
        ["p6"] = { -1,0 },
        ["p7"] = { -1,0 }
    }
}
local transit = {
    [1885233650] = {
        [1] = { 121,0 },
        [5] = { -1,0 },
        [7] = { 0,0 },
        [3] = { 14,0 },
        [4] = { 25,0 },
        [8] = { 15,0 },
        [6] = { 25,0 },
        [11] = { 31,0 },
        [9] = { 10,0 },
        [10] = { -1,0 },
        ["p0"] = { 9,2 },
        ["p1"] = { -1,0 },
        ["p2"] = { -1,0 },
        ["p6"] = { -1,0 },
        ["p7"] = { -1,0 }
    },
	[-1667301416] = {
        [1] = { 121,0 },
        [5] = { -1,0 },
        [7] = { 8,0 },
        [3] = { 14,0 },
        [4] = { 105,1 },
        [8] = { 3,0 },
        [6] = { 25,0 },
        [9] = { 19,0 },
        [10] = { 16,0 },
        [11] = { 265,0 },
        ["p0"] = { -1,0 },
        ["p1"] = { -1,1 },
        ["p2"] = { -1,0 },
        ["p6"] = { -1,0 },
        ["p7"] = { -1,0 }
    }
}

local csi = {
    [1885233650] = {
        [1] = { 121,0 },
        [2] = { 4,0 },
        [3] = { 0,0 },
        [4] = { 25,2 },
        [5] = { -1,0 },
        [6] = { 25,0 },
        [7] = { 8,0 },			
        [8] = { 57,0 },
        [9] = { 29,0 },
        [10] = { -1,0 },
        [11] = { 38,4 },
		["p0"] = { -1,0 },		
        ["p1"] = { -1,0 },
        ["p2"] = { -1,0 },
        ["p6"] = { -1,0 },
        ["p7"] = { -1,0 }
    },
    [-1667301416] = {
        [1] = { 121,0 },
        [5] = { -1,0 },
        [7] = { 8,0 },
        [3] = { 14,0 },
        [4] = { 105,1 },
        [8] = { 6,0 },
        [6] = { 25,0 },
        [11] = { 266,0 },
        [9] = { 0,0 },
        [10] = { -1,0 },
        ["p0"] = { -1,0 },
        ["p1"] = { -1,1 },
        ["p2"] = { -1,0 },
        ["p6"] = { -1,0 },
        ["p7"] = { -1,0 }
    }
}

RegisterServerEvent("default")
AddEventHandler("default",function()
    local user_id = vRP.getUserId(source)
    local custom = default
    if custom then
        local old_custom = vRPclient.getCustomization(source)
        local idle_copy = {}

        idle_copy = vRP.save_idle_custom(source,old_custom)
        idle_copy.modelhash = nil

        for k,v in pairs(custom[old_custom.modelhash]) do
            idle_copy[k] = v
        end
        vRPclient._setCustomization(source,idle_copy)
    end
end)

RegisterServerEvent("default2")
AddEventHandler("default2",function()
    local user_id = vRP.getUserId(source)
    local custom = default2
    if custom then
        local old_custom = vRPclient.getCustomization(source)
        local idle_copy = {}

        idle_copy = vRP.save_idle_custom(source,old_custom)
        idle_copy.modelhash = nil

        for k,v in pairs(custom[old_custom.modelhash]) do
            idle_copy[k] = v
        end
        vRPclient._setCustomization(source,idle_copy)
    end
end)

RegisterServerEvent("k9trainor")
AddEventHandler("k9trainor",function()
    local user_id = vRP.getUserId(source)
    local custom = k9trainor
    if custom then
        local old_custom = vRPclient.getCustomization(source)
        local idle_copy = {}

        idle_copy = vRP.save_idle_custom(source,old_custom)
        idle_copy.modelhash = nil

        for k,v in pairs(custom[old_custom.modelhash]) do
            idle_copy[k] = v
        end
        vRPclient._setCustomization(source,idle_copy)
    end
end)

RegisterServerEvent("tactical")
AddEventHandler("tactical",function()
    local user_id = vRP.getUserId(source)
    local custom = tactical
    if custom then
        local old_custom = vRPclient.getCustomization(source)
        local idle_copy = {}

        idle_copy = vRP.save_idle_custom(source,old_custom)
        idle_copy.modelhash = nil

        for k,v in pairs(custom[old_custom.modelhash]) do
            idle_copy[k] = v
        end
        vRPclient._setCustomization(source,idle_copy)
    end
end)

RegisterServerEvent("gtm")
AddEventHandler("gtm",function()
    local user_id = vRP.getUserId(source)
    local custom = gtm
    if custom then
        local old_custom = vRPclient.getCustomization(source)
        local idle_copy = {}

        idle_copy = vRP.save_idle_custom(source,old_custom)
        idle_copy.modelhash = nil

        for k,v in pairs(custom[old_custom.modelhash]) do
            idle_copy[k] = v
        end
        vRPclient._setCustomization(source,idle_copy)
    end
end)

RegisterServerEvent("transit")
AddEventHandler("transit",function()
    local user_id = vRP.getUserId(source)
    local custom = transit
    if custom then
        local old_custom = vRPclient.getCustomization(source)
        local idle_copy = {}

        idle_copy = vRP.save_idle_custom(source,old_custom)
        idle_copy.modelhash = nil

        for k,v in pairs(custom[old_custom.modelhash]) do
            idle_copy[k] = v
        end
        vRPclient._setCustomization(source,idle_copy)
    end
end)

RegisterServerEvent("csi")
AddEventHandler("csi",function()
    local user_id = vRP.getUserId(source)
    local custom = csi
    if custom then
        local old_custom = vRPclient.getCustomization(source)
        local idle_copy = {}

        idle_copy = vRP.save_idle_custom(source,old_custom)
        idle_copy.modelhash = nil

        for k,v in pairs(custom[old_custom.modelhash]) do
            idle_copy[k] = v
        end
        vRPclient._setCustomization(source,idle_copy)
    end
end)

RegisterServerEvent("off-uniform")
AddEventHandler("off-uniform",function()
    local user_id = vRP.getUserId(source)
    vRP.removeCloak(source)
end)

function vRPex.checkOfficer()
	local source = source
	local user_id = vRP.getUserId(source)
    if vRP.hasPermission(user_id,"lspd.permission") or vRP.hasPermission(user_id,"oos-lspd.permission") then
        return true
	end
end