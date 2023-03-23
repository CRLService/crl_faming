Config = {}

-- Enable this if you use ESX 1.75 oder newer
Config.GetSharedObjectfunction = true

--General

Config.Debug = false






--Farming Points

Config.Farming = {
    [1] = {
        --Blip
        BlipCoordination = {x = 16.5541, y = -330.5502,  z = 44.2769},
        BlipSprite = 123,
        Blipscale = 4,
        Blipcolour = 2,
        Bliptitel ="Test",

        --marker
        markertyp = 14,
        MarkerCoordination = {x = 16.5541, y = -330.5502,  z = 44.2769},
        updown = 0.0, -- 180 or 0 
        red = 255,
        green = 240,
        blue = 20,
        alpha = 255,
        bobUpAndDown = true,
        faceCamera = true,
    },
    [2] = {
        --Blip
        BlipCoordination = {x = 31.5541, y = -330.5502,  z = 44.2769},
        BlipSprite = 123,
        Blipscale = 4,
        Blipcolour = 2,
        Bliptitel ="Tes1",

        --marker
        markertyp = 1,
        MarkerCoordination = {x = 31.5541, y = -330.5502,  z = 44.2769},
        updown = 0, -- 180 or 0 
        red = 255,
        green = 240,
        blue = 20,
        alpha = 255,
        bobUpAndDown = true,
        faceCamera = true,
    },
}
