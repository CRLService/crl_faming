
ESX = exports["es_extended"]:getSharedObject()




Citizen.CreateThread(function()

    for k,v in pairs(Config.Farming) do

        print("Coords:" .. v.BlipCoordination.x, v.BlipCoordination.y, v.BlipCoordination.z)
        print("Sprite:" .. v.BlipSprite)
        print("Scale:" .. v.Blipscale)
        print("Colour: " .. v.Blipcolour)
        print("Titel:" .. v.Bliptitel)

        blip = AddBlipForCoord(v.BlipCoordination.x, v.BlipCoordination.y, v.BlipCoordination.z)
        SetBlipSprite(blip, v.BlipSprite)
        SetBlipScale(blip, v.Blipscale)
        SetBlipColour(blip, v.Blipcolour)
        SetBlipAsShortRange(blip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(v.Bliptitel)
        EndTextCommandSetBlipName(blip)

    end

end)

local sleep = 0

Citizen.CreateThread(function()

    local nearmarker = false

    for k,v in pairs(Config.Farming) do 
        while true do 
            Citizen.Wait(sleep)
        
            local pedCoords = GetEntityCoords(PlayerPedId())
            local distance = GetDistanceBetweenCoords(pedCoords.x, pedCoords.y, pedCoords.z, v.MarkerCoordination.x,v.MarkerCoordination.y,v.MarkerCoordination.z)
        
            if distance >= 500 then 
                sleep = 5000
            elseif distance <= 500 then
                sleep = 1000
            elseif distance <= 75 then
                sleep = 500
            elseif distance <= 10 then 
                sleep = 0 
                nearmarker = true
            end

                if nearmarker == true then 
                    Citizen.Wait(0)
                    DrawMarker(v.markertyp, v.MarkerCoordination.x,v.MarkerCoordination.y,v.MarkerCoordination.z, 0.0, 0.0, 0.0, 0.0, v.updown, 0.0, 2.0, 2.0, 2.0, v.red, v.green, v.blue, v.alpha, v.bobUpAndDown, v.faceCamera, 2, nil, nil, false)
                end
        end

    end

end)







