
ESX = exports["es_extended"]:getSharedObject()

Citizen.CreateThread(function()
    while true do 
        local pedCoords = GetEntityCoords(PlayerPedId())
        local nearMarker = false

        for k,v in pairs(Config.Farming) do 
            local distance = GetDistanceBetweenCoords(pedCoords.x,pedCoords.y,pedCoords.z, v.MarkerCoordination.x,v.MarkerCoordination.y,v.MarkerCoordination.z)

            if distance <= 10 then 
                DrawMarker(v.markertyp, v.MarkerCoordination.x,v.MarkerCoordination.y,v.MarkerCoordination.z, 0.0, 0.0, 0.0, 0.0, v.updown, 0.0, 2.0, 2.0, 2.0, v.red, v.green, v.blue, v.alpha, v.bobUpAndDown, v.faceCamera, 2, nil, nil, false)
                nearMarker = true
            end
        end

        if nearMarker then 
            Citizen.Wait(0)
        else 
            Citizen.Wait(1000)
        end

    end
    
end)







