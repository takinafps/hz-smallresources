
	local blips = { -- Reconfig your locations
    -- {title="LS Car Meet", colour=0, id=777, x=950.81, y=-1698.32, z=29.31}, -- Gabz LS Car Meet
        -- {title="CHANGE ME", colour=0, id=777, x=950.81, y=-1698.32, z=29.31},
		}

Citizen.CreateThread(function()

    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 0.7)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
	  BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)


