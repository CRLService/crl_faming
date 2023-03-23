
Citizen.CreateThread(function()
    for k,v in pairs(Config.Farming) do 
        local blip = AddBlipForCoord(v.BlipCoordination.x, v.BlipCoordination.y, v.BlipCoordination.z)
        SetBlipSprite(blip, v.BlipSprite)
        SetBlipScale(blip, v.Blipscale)
        SetBlipColour(blip, v.Blipcolour)
        SetBlipAsShortRange(blip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(v.Bliptitel)
        EndTextCommandSetBlipName(blip)
    end
end)