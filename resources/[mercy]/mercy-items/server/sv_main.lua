CallbackModule, PlayerModule, DatabaseModule, FunctionsModule, CommandsModule, EventsModule = nil, nil, nil, nil, nil, nil
local AnchoredBoats = {}

local _Ready = false
AddEventHandler('Modules/server/ready', function()
    TriggerEvent('Modules/server/request-dependencies', {
        'Callback',
        'Player',
        'Database',
        'Functions',
        'Commands',
        'Events',
    }, function(Succeeded)
        if not Succeeded then return end
        CallbackModule = exports['mercy-base']:FetchModule('Callback')
        PlayerModule = exports['mercy-base']:FetchModule('Player')
        DatabaseModule = exports['mercy-base']:FetchModule('Database')
        FunctionsModule = exports['mercy-base']:FetchModule('Functions')
        CommandsModule = exports['mercy-base']:FetchModule('Commands')
        EventsModule = exports['mercy-base']:FetchModule('Events')
        _Ready = true
    end)
end)

Citizen.CreateThread(function() 
    while not _Ready do 
        Citizen.Wait(4) 
    end 

     -- [ Items ] --

     FunctionsModule.CreateUseableItem("idcard", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-chat/client/post-identification', Source, Item.Info.CitizenId, Item.Info.Firstname, Item.Info.Lastname, Item.Info.Date, Item.Info.Sex)
        end
    end)

    -- Food

    FunctionsModule.CreateUseableItem("bread", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-items/client/used-food', Source, Item, "Bread")
        end
    end)

    FunctionsModule.CreateUseableItem("detcord", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-doors/client/used-detcord', Source, Item, "detcord")
        end
    end)

    FunctionsModule.CreateUseableItem("muffin", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-items/client/used-food', Source, Item, "Bread")
        end
    end)

    FunctionsModule.CreateUseableItem("heartstopper", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-items/client/used-food', Source, Item, "Hamburger")
        end
    end)

    FunctionsModule.CreateUseableItem("bleeder", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-items/client/used-food', Source, Item, "Hamburger")
        end
    end)

    FunctionsModule.CreateUseableItem("torpedo", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-items/client/used-food', Source, Item, "Hamburger")
        end
    end)

    FunctionsModule.CreateUseableItem("moneyshot", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-items/client/used-food', Source, Item, "Hamburger")
        end
    end)

    FunctionsModule.CreateUseableItem("fries", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-items/client/used-food', Source, Item, "Fries")
        end
    end)

    FunctionsModule.CreateUseableItem("jailfood", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-items/client/used-food', Source, Item, "Bread")
        end
    end)

    -- Drinks

    FunctionsModule.CreateUseableItem("water", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-items/client/used-water', Source, Item, "Water")
        end
    end)

    FunctionsModule.CreateUseableItem("slushy", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-items/client/used-water', Source, Item, "Cup")
        end
    end)

    FunctionsModule.CreateUseableItem("beer", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-items/client/used-water', Source, Item, "Water")
        end
    end)

    FunctionsModule.CreateUseableItem("milkshake", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-items/client/used-water', Source, Item, "Cup")
        end
    end)

    FunctionsModule.CreateUseableItem("softdrink", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-items/client/used-water', Source, Item, "BSCup")
        end
    end)

    FunctionsModule.CreateUseableItem("coffee", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-items/client/used-water', Source, Item, "BSCoffee")
        end
    end)

    -- Medical

    FunctionsModule.CreateUseableItem("bandage", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-items/client/used-bandage', Source, false)
        end
    end)

    FunctionsModule.CreateUseableItem("ifak", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-items/client/used-bandage', Source, true)
        end
    end)

    FunctionsModule.CreateUseableItem("oxy", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-hospital/client/used-oxy', Source)
        end
    end)

    FunctionsModule.CreateUseableItem("chestarmor", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-items/client/used-chest-armor', Source, Item.ItemName)
        end
    end)

    FunctionsModule.CreateUseableItem("pdchestarmor", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-items/client/used-chest-armor', Source, Item.ItemName)
        end
    end)

    FunctionsModule.CreateUseableItem("beehive", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-jobs/client/bees-place-hive', Source)
        end
    end)

    FunctionsModule.CreateUseableItem("pdbadge", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-police/client/show-badge', Source, Item.Info.Name, Item.Info.Rank, Item.Info.Department, Item.Info.Image)
        end
    end)

    FunctionsModule.CreateUseableItem("clothing-mask", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-clothing/client/take-on-face-wear', Source, 'Mask', Item.Info, Item.Slot, false)
        end
    end)

    FunctionsModule.CreateUseableItem("clothing-glasses", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-clothing/client/take-on-face-wear', Source, 'Glasses', Item.Info, Item.Slot, false)
        end
    end)

    FunctionsModule.CreateUseableItem("clothing-hat", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-clothing/client/take-on-face-wear', Source, 'Hat', Item.Info, Item.Slot, false)
        end
    end)

    FunctionsModule.CreateUseableItem("walkman", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-ui/client/open-walkman', Source)
        end
    end)

    -- Misc

    FunctionsModule.CreateUseableItem("detcord", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-doors/client/used-detcord', Source)
        end
    end)

    FunctionsModule.CreateUseableItem("megaphone", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-items/client/used-megaphone', Source)
        end
    end)

    FunctionsModule.CreateUseableItem("lawnchair", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-items/client/used-lawnchair', Source)
        end
    end)

    FunctionsModule.CreateUseableItem("wheelchair", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-items/client/used-wheelchair', Source)
        end
    end)

    FunctionsModule.CreateUseableItem("present", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-items/client/used-present', Source)
        end
    end)

    FunctionsModule.CreateUseableItem("handcuffs", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-police/client/used-cuffs', Source)
        end
    end)

    FunctionsModule.CreateUseableItem("newscamera", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-items/client/used-newscam', Source)
        end
    end)

    FunctionsModule.CreateUseableItem("newsmic", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-items/client/used-newsmic', Source)
        end
    end)

    -- Wingsuit

    FunctionsModule.CreateUseableItem("wingsuit", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-items/client/used-wingsuit', Source, 'wingsuit')
        end
    end)

    FunctionsModule.CreateUseableItem("wingsuit_b", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-items/client/used-wingsuit', Source, 'wingsuit_b')
        end
    end)

    FunctionsModule.CreateUseableItem("wingsuit_c", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-items/client/used-wingsuit', Source, 'wingsuit_c')
        end
    end)

    -- Grapple

    FunctionsModule.CreateUseableItem("weapon_grapple", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-grapple/client/used-grapple', Source)
        end
    end)

    -- Car

    FunctionsModule.CreateUseableItem("toolbox", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-items/client/used-toolbox', Source)
        end
    end)

    FunctionsModule.CreateUseableItem("tirekit", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-items/client/used-tirekit', Source)
        end
    end)

    FunctionsModule.CreateUseableItem("car-polish", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-items/client/used-carpolish', Source)
        end
    end)

    -- Drugs

    FunctionsModule.CreateUseableItem("joint", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-items/client/used-joint', Source)
        end
    end)

    -- Clothing

    FunctionsModule.CreateUseableItem("hairtie", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-items/client/use-hairtie', Source)
        end
    end)

    FunctionsModule.CreateUseableItem("hairspray", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-items/client/use-hairspray', Source)
        end
    end)

    FunctionsModule.CreateUseableItem("nightvison-goggles", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-items/client/use-nightvison', Source)
        end
    end)

    FunctionsModule.CreateUseableItem("binoculars", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-items/client/used-binoculars', Source)
        end
    end)

    FunctionsModule.CreateUseableItem("pdcamera", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-items/client/use-camera', Source)
        end
    end)

    FunctionsModule.CreateUseableItem("gemstone", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-business/client/used-gemstone', Source, Item.Info)
        end
    end)

    FunctionsModule.CreateUseableItem("radio", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-items/client/used-radio', Source)
        end
    end)

    FunctionsModule.CreateUseableItem("pdradio", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-items/client/used-radio', Source)
        end
    end)

    FunctionsModule.CreateUseableItem("lockpick", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-items/client/used-lockpick', Source, false)
        end
    end)

    FunctionsModule.CreateUseableItem("advlockpick", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-items/client/used-lockpick', Source, true)
        end
    end)

    FunctionsModule.CreateUseableItem("thermitecharge", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-items/client/used-thermite-charge', Source)
        end
    end)

    -- Drugs

    FunctionsModule.CreateUseableItem("weed-seed-female", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-items/client/used-seeds-female', Source)
        end
    end)

    FunctionsModule.CreateUseableItem("scales", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-items/client/used-scales', Source)
        end
    end)

    -- Jobs

    FunctionsModule.CreateUseableItem("fishingrod", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-items/client/used/fishing-rod', Source)
        end
    end)

    FunctionsModule.CreateUseableItem("hunting-bait", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-items/client/used-hunting-bait', Source)
        end
    end)

    FunctionsModule.CreateUseableItem("hunting-knife", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-items/client/used-hunting-knife', Source)
        end
    end)

    FunctionsModule.CreateUseableItem("pickaxe", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-items/client/used-pickaxe', Source)
        end
    end)

    FunctionsModule.CreateUseableItem("evidence", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-items/client/used-evidence', Source)
        end
    end)

    FunctionsModule.CreateUseableItem("spikes", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-items/client/used-spikes', Source)
        end
    end)

    FunctionsModule.CreateUseableItem("gopro", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-misc/client/use-gopro', Source, false)
        end
    end)

    FunctionsModule.CreateUseableItem("gopropd", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-misc/client/use-gopro', Source, true)
        end
    end)

    FunctionsModule.CreateUseableItem("dice", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-misc/client/used-dice', Source)
        end
    end)

    FunctionsModule.CreateUseableItem("scavbox", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-misc/client/open-scav-box', Source, Item.Info.Id)
        end
    end)

    -- Ammo

    FunctionsModule.CreateUseableItem("taser-ammo", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-items/client/reload-ammo', Source, 'AMMO_TASER', 'taser-ammo')
        end
    end)

    FunctionsModule.CreateUseableItem("pistol-ammo", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-items/client/reload-ammo', Source, 'AMMO_PISTOL', 'pistol-ammo')
        end
    end)

    FunctionsModule.CreateUseableItem("smg-ammo", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-items/client/reload-ammo', Source, 'AMMO_SMG', 'smg-ammo')
        end
    end)

    FunctionsModule.CreateUseableItem("rifle-ammo", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-items/client/reload-ammo', Source, 'AMMO_RIFLE', 'rifle-ammo')
        end
    end)

    FunctionsModule.CreateUseableItem("shotgun-ammo", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-items/client/reload-ammo', Source, 'AMMO_SHOTGUN', 'shotgun-ammo')
        end
    end)

    FunctionsModule.CreateUseableItem("rubber-shotgun-ammo", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-items/client/reload-ammo', Source, 'AMMO_RUBBER_SHOTGUN', 'rubber-shotgun-ammo')
        end
    end)

    FunctionsModule.CreateUseableItem("sniper-ammo", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-items/client/reload-ammo', Source, 'AMMO_SNIPER', 'sniper-ammo')
        end
    end)

    FunctionsModule.CreateUseableItem("rubber-shotgun-ammo", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-items/client/reload-ammo', Source, 'AMMO_RUBBER_SHOTGUN', 'rubber-shotgun-ammo')
        end
    end)

    FunctionsModule.CreateUseableItem("emp-ammo", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-items/client/reload-ammo', Source, 'AMMO_EMP', 'emp-ammo')
        end
    end)

    FunctionsModule.CreateUseableItem("paintball-ammo", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-items/client/reload-ammo', Source, 'AMMO_PAINTBALL', 'paintball-ammo')
        end
    end)

    FunctionsModule.CreateUseableItem("revolver-ammo", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-items/client/reload-ammo', Source, 'AMMO_REVOLVER', 'revolver-ammo')
        end
    end)

    FunctionsModule.CreateUseableItem("emp-ammo", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-items/client/reload-ammo', Source, 'AMMO_EMP', 'emp-ammo')
        end
    end)

    -- FunctionsModule.CreateUseableItem("scanner", function(Source, Item)
    -- 	local Player = PlayerModule.GetPlayerBySource(Source)
    --     if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
    --         TriggerClientEvent('mercy-items/client/used-scanner', Source)
    --     end
    -- end)

    -- Vehicle

    FunctionsModule.CreateUseableItem("rental-papers", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-items/client/used-rental-papers', Source, Item.Info.Plate)
        end
    end)

    FunctionsModule.CreateUseableItem("nitrous", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-items/client/used-nitrous', Source)
        end
    end)

    FunctionsModule.CreateUseableItem("clutch-a", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-business/client/hayes-uses-part', Source, 'Clutch', 'A', 'clutch-a')
        end
    end)

    FunctionsModule.CreateUseableItem("clutch-b", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-business/client/hayes-uses-part', Source, 'Clutch', 'B', 'clutch-b')
        end
    end)

    FunctionsModule.CreateUseableItem("clutch-s", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-business/client/hayes-uses-part', Source, 'Clutch', 'S', 'clutch-s')
        end
    end)

    FunctionsModule.CreateUseableItem("axle-a", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-business/client/hayes-uses-part', Source, 'Axle', 'A', 'axle-a')
        end
    end)

    FunctionsModule.CreateUseableItem("axle-b", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-business/client/hayes-uses-part', Source, 'Axle', 'B', 'axle-b')
        end
    end)

    FunctionsModule.CreateUseableItem("axle-s", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-business/client/hayes-uses-part', Source, 'Axle', 'S', 'axle-s')
        end
    end)

    FunctionsModule.CreateUseableItem("brakes-a", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-business/client/hayes-uses-part', Source, 'Brakes', 'A', 'brakes-a')
        end
    end)

    FunctionsModule.CreateUseableItem("brakes-b", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-business/client/hayes-uses-part', Source, 'Brakes', 'B', 'brakes-b')
        end
    end)

    FunctionsModule.CreateUseableItem("brakes-s", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-business/client/hayes-uses-part', Source, 'Brakes', 'S', 'brakes-s')
        end
    end)

    FunctionsModule.CreateUseableItem("engine-a", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-business/client/hayes-uses-part', Source, 'Engine', 'A', 'engine-a')
        end
    end)

    FunctionsModule.CreateUseableItem("engine-b", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-business/client/hayes-uses-part', Source, 'Engine', 'B', 'engine-b')
        end
    end)

    FunctionsModule.CreateUseableItem("engine-s", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-business/client/hayes-uses-part', Source, 'Engine', 'S', 'engine-s')
        end
    end)
    
    FunctionsModule.CreateUseableItem("goldpan-s", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-items/client/used/gold-pan', Source, Item)
        end
    end)

    FunctionsModule.CreateUseableItem("goldpan-m", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-items/client/used/gold-pan', Source, Item)
        end
    end)

    FunctionsModule.CreateUseableItem("goldpan-l", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-items/client/used/gold-pan', Source, Item)
        end
    end)

    -- Sprays
    
    FunctionsModule.CreateUseableItem("spray-angels", function(Source, Item)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
            TriggerClientEvent('mercy-misc/client/used-spay-can', Source, 'spray-angels', 'np_sprays_angels')
        end
    end)

   
    
    -- Chains

    -- FunctionsModule.CreateUseableItem("cerberus-chain", function(Source, Item)
    --     local Player = PlayerModule.GetPlayerBySource(Source)
    --     if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
    --         TriggerClientEvent('mercy-items/client/use-chain', Source, 'cerberus-chain')
    --     end
    -- end)

    -- FunctionsModule.CreateUseableItem("cg-chain", function(Source, Item)
    --     local Player = PlayerModule.GetPlayerBySource(Source)
    --     if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
    --         TriggerClientEvent('mercy-items/client/use-chain', Source, 'cg-chain')
    --     end
    -- end)

    -- FunctionsModule.CreateUseableItem("cg2-chain", function(Source, Item)
    --     local Player = PlayerModule.GetPlayerBySource(Source)
    --     if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
    --         TriggerClientEvent('mercy-items/client/use-chain', Source, 'cg2-chain')
    --     end
    -- end)

    -- FunctionsModule.CreateUseableItem("gg-chain", function(Source, Item)
    --     local Player = PlayerModule.GetPlayerBySource(Source)
    --     if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
    --         TriggerClientEvent('mercy-items/client/use-chain', Source, 'gg-chain')
    --     end
    -- end)

    -- FunctionsModule.CreateUseableItem("gsf-chain", function(Source, Item)
    --     local Player = PlayerModule.GetPlayerBySource(Source)
    --     if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
    --         TriggerClientEvent('mercy-items/client/use-chain', Source, 'gsf-chain')
    --     end
    -- end)
    
    -- FunctionsModule.CreateUseableItem("koil-chain", function(Source, Item)
    --     local Player = PlayerModule.GetPlayerBySource(Source)
    --     if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
    --         TriggerClientEvent('mercy-items/client/use-chain', Source, 'koil-chain')
    --     end
    -- end)

    -- FunctionsModule.CreateUseableItem("mdm-chain", function(Source, Item)
    --     local Player = PlayerModule.GetPlayerBySource(Source)
    --     if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
    --         TriggerClientEvent('mercy-items/client/use-chain', Source, 'mdm-chain')
    --     end
    -- end)

    -- FunctionsModule.CreateUseableItem("nbc-chain", function(Source, Item)
    --     local Player = PlayerModule.GetPlayerBySource(Source)
    --     if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
    --         TriggerClientEvent('mercy-items/client/use-chain', Source, 'nbc-chain')
    --     end
    -- end)

    -- FunctionsModule.CreateUseableItem("rl-chain", function(Source, Item)
    --     local Player = PlayerModule.GetPlayerBySource(Source)
    --     if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
    --         TriggerClientEvent('mercy-items/client/use-chain', Source, 'rl-chain')
    --     end
    -- end)

    -- FunctionsModule.CreateUseableItem("seaside-chain", function(Source, Item)
    --     local Player = PlayerModule.GetPlayerBySource(Source)
    --     if Player.Functions.GetItemBySlot(Item.Slot) ~= nil then
    --         TriggerClientEvent('mercy-items/client/use-chain', Source, 'seaside-chain')
    --     end
    -- end)

    -- [ Events ] --

    EventsModule.RegisterServer("mercy-items/server/receive-first-items", function(Source)
        local Player = PlayerModule.GetPlayerBySource(Source)
        local Info = {}
        Info.CitizenId = Player.PlayerData.CitizenId
        Info.Firstname = Player.PlayerData.CharInfo.Firstname
        Info.Lastname = Player.PlayerData.CharInfo.Lastname
        Info.Date = Player.PlayerData.CharInfo.Date
        Info.Sex = Player.PlayerData.CharInfo.Gender
        Player.Functions.AddItem('idcard', 1, false, Info, true)
        Player.Functions.AddItem('present', 1, false, false, true)
    end)
    
    EventsModule.RegisterServer("mercy-items/server/receive-present-items", function(Source)
        local Player = PlayerModule.GetPlayerBySource(Source)
        local PresentAmount = 3
        for i = 1, PresentAmount, 1 do
            local RandomItem = Config.RandomPresentItems[math.random(1, #Config.RandomPresentItems)]
            Player.Functions.AddItem(RandomItem, 1, false, false, true)
            Player.Functions.AddItem('phone', 1, false, false, true)
        end
    end)

    EventsModule.RegisterServer("mercy-items/server/add-food", function(Source, Amount)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player then
            Player.Functions.SetMetaData("Food", tonumber(Player.PlayerData.MetaData['Food']) + tonumber(Amount))
        end
    end)
    
    EventsModule.RegisterServer("mercy-items/server/add-water", function(Source, Amount)
        local Player = PlayerModule.GetPlayerBySource(Source)
        if Player then
            Player.Functions.SetMetaData("Water", tonumber(Player.PlayerData.MetaData['Water']) + tonumber(Amount))
        end
    end)
    
    CallbackModule.CreateCallback('mercy-items/server/sync-anchor-config', function(Source, Cb)
        Cb(AnchoredBoats)
    end)
end)

-- [ Events ] --

RegisterNetEvent("mercy-items/server/sync-item-anchor", function(Plate, State)
    AnchoredBoats[Plate] = State
    TriggerClientEvent('mercy-items/client/sync-item-anchor', -1, Plate, State, AnchoredBoats)
end)

