Config = {}

Config.Debug = true

Config.Plant = {
    WaterPerUse = 10, -- How many water points it should add to the plant.

    WaterTime = 5, -- How long to water the plant.
    HarvestTime = 5, -- How long to harvest the plant.
    PlantTime = 5, -- How long to plant the seed.

    WaterPostDelay = 0, -- Cooldown for Watering.
    MaxPlayerPlants = 5, -- Maximum plants a player can grow at a time.
    RenderDistance = 30.0, -- Distance to render spawned plants.

    -- Don't change the below unless needed.

    GrowingTick = 10, -- How often to tick the growing loop (only when growing).
    GrowingPerTick = 0.01, -- How much to add to the percent in the growing lerp.
}

-- Weed
-- Cocaine
-- Heroin

Config.Seeds = {
    ['corn_seed'] = {
        Prop = {
            Model = `prop_plant_fern_02a`,
            Offsets = {
                Start = vector4(0.0, 1.0, -1.0, 0.0),
                End = vector4(0.0, 0.0, 1.0, 0.0),
            }
        }, 
        Rewards = {
            {name = "corn_raw", min = 1, max = 2},
        },
        Materials = {"Farm", "Farm2", "Farm3"}, -- If planting location has this material, plant.
        Zones = {vector4(-98.9300, 1911.5332, 196.8396, 10.0)}, -- If planting location is inside this range, plant.
        WaterNeeded = 100,
    },
    ['tomato_seed'] = {
        Prop = {
            Model = `prop_plant_fern_02a`,
            Offsets = {
                Start = vector4(0.0, 1.0, -1.0, 0.0),
                End = vector4(0.0, 0.0, 1.0, 0.0),
            }
        }, 
        Rewards = {
            {name = "tomato_raw", min = 1, max = 2},
        },
        Materials = {"Farm", "Farm2", "Farm3"}, -- If planting location has this material, plant.
        Zones = {vector4(-98.9300, 1911.5332, 196.8396, 10.0)}, -- If planting location is inside this range, plant.
        WaterNeeded = 100,
    },
    ['wheat_seed'] = {
        Prop = {
            Model = `prop_plant_fern_02a`,
            Offsets = {
                Start = vector4(0.0, 1.0, -1.0, 0.0),
                End = vector4(0.0, 0.0, 1.0, 0.0),
            }
        }, 
        Rewards = {
            {name = "wheat_raw", min = 1, max = 2},
        },
        Materials = {"Farm", "Farm2", "Farm3"}, -- If planting location has this material, plant.
        Zones = {vector4(-98.9300, 1911.5332, 196.8396, 10.0)}, -- If planting location is inside this range, plant.
        WaterNeeded = 100,
    },
    ['broccoli_seed'] = {
        Prop = {
            Model = `prop_plant_fern_02a`,
            Offsets = {
                Start = vector4(0.0, 1.0, -1.0, 0.0),
                End = vector4(0.0, 0.0, 1.0, 0.0),
            }
        }, 
        Rewards = {
            {name = "broccoli_raw", min = 1, max = 2},
        },
        Materials = {"Farm", "Farm2", "Farm3"}, -- If planting location has this material, plant.
        Zones = {vector4(-98.9300, 1911.5332, 196.8396, 10.0)}, -- If planting location is inside this range, plant.
        WaterNeeded = 100,
    },
    ['carrot_seed'] = {
        Prop = {
            Model = `prop_plant_fern_02a`,
            Offsets = {
                Start = vector4(0.0, 1.0, -1.0, 0.0),
                End = vector4(0.0, 0.0, 1.0, 0.0),
            }
        }, 
        Rewards = {
            {name = "carrot_raw", min = 1, max = 2},
        },
        Materials = {"Farm", "Farm2", "Farm3"}, -- If planting location has this material, plant.
        Zones = {vector4(-98.9300, 1911.5332, 196.8396, 10.0)}, -- If planting location is inside this range, plant.
        WaterNeeded = 100,
    },
    ['potato_seed'] = {
        Prop = {
            Model = `prop_plant_fern_02a`,
            Offsets = {
                Start = vector4(0.0, 1.0, -1.0, 0.0),
                End = vector4(0.0, 0.0, 1.0, 0.0),
            }
        }, 
        Rewards = {
            {name = "potato_raw", min = 1, max = 2},
        },
        Materials = {"Farm", "Farm2", "Farm3"}, -- If planting location has this material, plant.
        Zones = {vector4(-98.9300, 1911.5332, 196.8396, 10.0)}, -- If planting location is inside this range, plant.
        WaterNeeded = 100,
    },
    ['pickle_seed'] = {
        Prop = {
            Model = `prop_plant_fern_02a`,
            Offsets = {
                Start = vector4(0.0, 1.0, -1.0, 0.0),
                End = vector4(0.0, 0.0, 1.0, 0.0),
            }
        }, 
        Rewards = {
            {name = "pickle_raw", min = 1, max = 2},
        },
        Materials = {"Farm", "Farm2", "Farm3"}, -- If planting location has this material, plant.
        Zones = {vector4(-98.9300, 1911.5332, 196.8396, 10.0)}, -- If planting location is inside this range, plant.
        WaterNeeded = 100,
    },
    ['weed_seed'] = {
        Prop = {
            Model = `bkr_prop_weed_lrg_01a`,
            Offsets = {
                Start = vector4(0.0, 1.0, -2.4, 0.0),
                End = vector4(0.0, 0.0, 1.8, 0.0),
            }
        }, 
        Rewards = {
            {name = "weed_raw", min = 1, max = 2},
        },
        Materials = {"Farm", "Farm2", "Farm3"}, -- If planting location has this material, plant.
        Zones = {vector4(-98.9300, 1911.5332, 196.8396, 10.0)}, -- If planting location is inside this range, plant.
        WaterNeeded = 100,
    },
    ['cocaine_seed'] = {
        Prop = {
            Model = `bkr_prop_weed_lrg_01a`,
            Offsets = {
                Start = vector4(0.0, 1.0, -2.4, 0.0),
                End = vector4(0.0, 0.0, 1.8, 0.0),
            }
        }, 
        Rewards = {
            {name = "cocaine_raw", min = 1, max = 2},
        },
        Materials = {"Farm", "Farm2", "Farm3"}, -- If planting location has this material, plant.
        Zones = {vector4(-98.9300, 1911.5332, 196.8396, 10.0)}, -- If planting location is inside this range, plant.
        WaterNeeded = 100,
    },
    ['heroin_seed'] = {
        Prop = {
            Model = `bkr_prop_weed_lrg_01a`,
            Offsets = {
                Start = vector4(0.0, 1.0, -2.4, 0.0),
                End = vector4(0.0, 0.0, 1.8, 0.0),
            }
        }, 
        Rewards = {
            {name = "heroin_raw", min = 1, max = 2},
        },
        Materials = {"Farm", "Farm2", "Farm3"}, -- If planting location has this material, plant.
        Zones = {vector4(-98.9300, 1911.5332, 196.8396, 10.0)}, -- If planting location is inside this range, plant.
        WaterNeeded = 10,
    },
}

Config.ExchangeSettings = {
    RenderDistance = 30.0, -- If exchange is a ped, what distance to display the ped.
    EnableSkillCheck = true, -- DISABLE IF NOT USING OX_LIB.
    ProcessTime = 5, -- Only used when EnableSkillCheck is false.
}

Config.Exchange = {
-----------------------------------------LS|Process------------------------------------------------
    {--LS
    Type = "Process", -- Find first processable item, then reward per required.
    Blip = {
        Label = "Janes Processing Factory",
        ID = 140,
        Color = 47,
        Scale = 0.85,
    },
    Location = vector4(1037.52, -3205.35, -38.17, 274.99),
    Catalog = {
        ["weed_raw"] = {required = 1, name = "weed", min = 1, max = 7}
    }
},


    {--LS
    Type = "Process", -- Find first processable item, then reward per required.
    Blip = {
        Label = "Known Heroine Processing",
        ID = 51,
        Color = 47,
        Scale = 0.85,
    },
    Location = vector4(495.52, -501.74, 24.78, 123.25),
    Catalog = {
        ["heroine_raw"] = {required = 1, name = "heroine", min = 1, max = 7}
    }
},

    {--LS
    Type = "Process", -- Find first processable item, then reward per required.
    Blip = {
        Label = "Known Cocaine Processing",
        ID = 51,
        Color = 47,
        Scale = 0.85,
    },
    Location = vector4(-195.03, -1314.87, 34.99, 273.72),
    Catalog = {
        ["cocaine_Raw"] = {required = 1, name = "cocaine", min = 1, max = 7}
    }
},
-----------------------------------------LS|Process------------------------------------------------




-----------------------------------------Sandy|Process------------------------------------------------
    {--Sandy
        Type = "Process", -- Find first processable item, then reward per required.
        Blip = {
            Label = "Rustys Factory",
            ID = 51,
            Color = 47,
            Scale = 0.85,
        },
        Location = vector4(1949.22, 3808.66, 32.18, 76.79),
        Catalog = {
            ["heroin_raw"] = {required = 1, name = "heroin", min = 1, max = 3},
        }
    },


    {--Sandy
        Type = "Process", -- Find first processable item, then reward per required.
        Blip = {
            Label = "SnowWhites Processing",
            ID = 51,
            Color = 47,
            Scale = 0.85,
        },
        Location = vector4(1389.32, 3604.73, 38.94, 294.05),
        Catalog = {
            ["cocaine_raw"] = {required = 1, name = "cocaine", min = 1, max = 4},
        }
    },

    {--GrapeSeed
    Type = "Process", -- Find first processable item, then reward per required.
    Blip = {
        Label = "Joels Proccesing Plant",
        ID = 171,
        Color = 47,
        Scale = 0.85,
    },
    Location = vector4(2423.5002, 4985.6943, 45.9, 43.7853),
    Catalog = {
        ["corn_raw"] = {required = 2, name = "corn", min = 1, max = 1},
        ["tomato_raw"] = {required = 2, name = "tomato", min = 1, max = 1},
        ["wheat_raw"] = {required = 2, name = "wheat", min = 1, max = 1},
        ["broccoli_raw"] = {required = 2, name = "broccoli", min = 1, max = 1},
        ["carrot_raw"] = {required = 2, name = "carrot", min = 1, max = 1},
        ["potato_raw"] = {required = 2, name = "potato", min = 1, max = 1},
        ["pickle_raw"] = {required = 2, name = "pickle", min = 1, max = 1}
    }
},
-----------------------------------------Sandy|Process------------------------------------------------


-----------------------------------------Paleto|Process------------------------------------------------
    {--Sandy
    Type = "Process", -- Find first processable item, then reward per required.
    Blip = {
        Label = "Down Process",
        ID = 51,
        Color = 47,
        Scale = 0.85,
    },
    Location = vector4(-212.8, 6357.72, 31.49, 172.52),
    Catalog = {
        ["heroin_raw"] = {required = 1, name = "heroin", min = 1, max = 3},
    }
},


{--Sandy
    Type = "Process", -- Find first processable item, then reward per required.
    Blip = {
        Label = "Roof Top Processing",
        ID = 51,
        Color = 47,
        Scale = 0.85,
    },
    Location = vector4(-516.62, 5315.67, 90.92, 130.69),
    Catalog = {
        ["cocaine_raw"] = {required = 1, name = "cocaine", min = 1, max = 4},
    }
},

{
Type = "Process", -- Find first processable item, then reward per required.
Blip = {
    Label = "Franks Proccesing Plant",
    ID = 171,
    Color = 47,
    Scale = 0.85,
},
Location = vector4(-85.42, 6233.34, 31.09, 129.82       ),
Catalog = {
    ["corn_raw"] = {required = 2, name = "corn", min = 1, max = 1},
    ["tomato_raw"] = {required = 2, name = "tomato", min = 1, max = 1},
    ["wheat_raw"] = {required = 2, name = "wheat", min = 1, max = 1},
    ["broccoli_raw"] = {required = 2, name = "broccoli", min = 1, max = 1},
    ["carrot_raw"] = {required = 2, name = "carrot", min = 1, max = 1},
    ["potato_raw"] = {required = 2, name = "potato", min = 1, max = 1},
    ["pickle_raw"] = {required = 2, name = "pickle", min = 1, max = 1}
}
},
-----------------------------------------Paleto|Process------------------------------------------------


-----------------------------------------LS|Exchange---------------------------------------------------
    {
        Type = "Exchange", -- Go through entire inventory and exchange items for reward.
        Blip = {
            Label = "Janes Head Shop",
            ID = 140,
            Color = 47,
            Scale = 0.85,
        },
        NPCModel = `a_m_o_beach_01`,
        Location = vector4(-1168.62, -1571.69, 3.66, 137),
        Catalog = {
            ["weed"] = {name = "money", min = 45, max = 145}
        }
    },

    {
        Type = "Exchange", -- Go through entire inventory and exchange items for reward.
        Blip = {
            Label = "Kushy Farmacy",
            ID = 140,
            Color = 47,
            Scale = 0.85,
        },
        NPCModel = `u_m_y_chip`,
        Location = vector4(-104.5, -69.5, 58.86, 294.15),
        Catalog = {
            ["weed"] = {name = "money", min = 45, max = 125}
        }
    },

    {
        Type = "Exchange", -- Go through entire inventory and exchange items for reward.
        Blip = {
            Label = "High Times",
            ID = 140,
            Color = 47,
            Scale = 0.85,
        },
        NPCModel = `u_m_y_antonb`,
        Location = vector4(159.53, -253.83, 51.4, 139.95),
        Catalog = {
            ["weed"] = {name = "money", min = 45, max = 215}
        }
    },

    {
        Type = "Exchange", -- Go through entire inventory and exchange items for reward.
        Blip = {
            Label = "Known Heroine Spot",
            ID = 280,
            Color = 47,
            Scale = 0.85,
        },
        NPCModel = `ig_maude`,
        Location = vector4(559.67, -1777.25, 33.4, 23.12),
        Catalog = {
            ["heroine"] = {name = "money", min = 45, max = 165}
        }
    },

    {
        Type = "Exchange", -- Go through entire inventory and exchange items for reward.
        Blip = {
            Label = "Known Cocaine Spot",
            ID = 280,
            Color = 47,
            Scale = 0.85,
        },
        NPCModel = `ig_djtalignazio`,
        Location = vector4(-60.66, -840.49, 43.62, 311.16),
        Catalog = {
            ["cocaine"] = {name = "money", min = 45, max = 275}
        }
    },
-----------------------------------------LS|Exchange---------------------------------------------------



-----------------------------------------SANDY|Exchange---------------------------------------------------
    {
        Type = "Exchange", -- Go through entire inventory and exchange items for reward.
        Blip = {
            Label = "Known Sell spot",
            ID = 280,
            Color = 47,
            Scale = 0.85,
        },
        NPCModel = `u_f_y_dancelthr_01`,
        Location = vector4(1993.25, 3044.88, 47.22, 36.19),
        Catalog = {
            ["cocaine"] = {name = "money", min = 75, max = 250}
        }
    },

    {
        Type = "Exchange", -- Go through entire inventory and exchange items for reward.
        Blip = {
            Label = "Known Sell spot",
            ID = 280,
            Color = 47,
            Scale = 0.85,
        },
        NPCModel = `u_m_y_proldriver_01`,
        Location = vector4(1100.15, 2630.11, 38, 141.64),
        Catalog = {
            ["heroine"] = {name = "money", min = 50, max = 165}
        }
    },

        
    {---Legal
        Type = "Exchange", -- Go through entire inventory and exchange items for reward.
        Blip = {
            Label = "Joels Exchange",
            ID = 280,
            Color = 47,
            Scale = 0.85,
        },
        NPCModel = `a_m_m_farmer_01`,
        Location = vector4(1300.8643, 4318.9258, 37.1653, 301.4995),
        Catalog = {
            ["corn"] = {name = "money", min = 20, max = 236},
            ["tomato"] = {name = "money", min = 20, max = 375},
            ["wheat"] = {name = "money", min = 20, max = 435},
            ["broccoli"] = {name = "money", min = 20, max = 421},
            ["carrot"] = {name = "money", min = 20, max = 415},
            ["potato"] = {name = "money", min = 20, max = 420},
            ["pickle"] = {name = "money", min = 200, max = 450}
                --["weed"] = {name = "money", min = 50, max = 165},
                --["cocaine"] = {name = "money", min = 75, max = 215},
                --["heroin"] = {name = "money", min = 65, max = 175},
        }
    },
-----------------------------------------SANDY|Exchange---------------------------------------------------



-----------------------------------------Paleto|Exchange---------------------------------------------------
{
    Type = "Exchange", -- Go through entire inventory and exchange items for reward.
    Blip = {
        Label = "Known Sell spot",
        ID = 280,
        Color = 47,
        Scale = 0.85,
    },
    NPCModel = `s_m_y_dealer_01`,
    Location = vector4(1100.15, 2630.11, 38, 141.64),
    Catalog = {
        ["cocaine"] = {name = "money", min = 75, max = 250}
    }
},

{
    Type = "Exchange", -- Go through entire inventory and exchange items for reward.
    Blip = {
        Label = "Known Sell spot",
        ID = 280,
        Color = 47,
        Scale = 0.85,
    },
    NPCModel = `s_m_y_dealer_01`,
    Location = vector4(65.67, 6664.15, 31.79, 3.37),
    Catalog = {
        ["heroine"] = {name = "money", min = 50, max = 165}
    }
},

    
{---Legal
    Type = "Exchange", -- Go through entire inventory and exchange items for reward.
    Blip = {
        Label = "Franks Exchange",
        ID = 280,
        Color = 47,
        Scale = 0.85,
    },
    NPCModel = `a_m_m_farmer_01`,
    Location = vector4(-88.5, 6493.56, 32.1, 229.02),
    Catalog = {
        ["corn"] = {name = "money", min = 20, max = 336},
        ["tomato"] = {name = "money", min = 20, max = 475},
        ["wheat"] = {name = "money", min = 20, max = 535},
        ["broccoli"] = {name = "money", min = 20, max = 321},
        ["carrot"] = {name = "money", min = 20, max = 315},
        ["potato"] = {name = "money", min = 20, max = 520},
        ["pickle"] = {name = "money", min = 200, max = 350}
            --["weed"] = {name = "money", min = 50, max = 165},
            --["cocaine"] = {name = "money", min = 75, max = 215},
            --["heroin"] = {name = "money", min = 65, max = 175},
    }
},
}
-----------------------------------------Paleto|Exchange---------------------------------------------------


Config.Blips = {
    {
        Label = "Farming Fields",
        ID = 677,
        Color = 47,
        Scale = 0.85,
        Location = vector3(2516.3718, 4845.3442, 36.1397)
    },
    {
        Label = "Farming Fields",
        ID = 677,
        Color = 47,
        Scale = 0.85,
        Location = vector3(2225.2822, 5586.5454, 53.8013)
    },
    {
        Label = "Farming Fields",
        ID = 677,
        Color = 47,
        Scale = 0.85,
        Location = vector3(-98.9300, 1911.5332, 196.8396)
    },
    {
        Label = "Janes Garden",
        ID = 140,
        Color = 47,
        Scale = 0.75,
        Location = vector3(1057.24, -3205.6, -39.12)
    },

    {
        Label = "Heroine Hills",
        ID = 51,
        Color = 47,
        Scale = 0.75,
        Location = vector3(2391.39, 3666.28, 53.34)
    },

    {
        Label = "Paleto Public Farm",
        ID = 590,
        Color = 47,
        Scale = 0.75,
        Location = vector3(741.22, 6471.1, 29.32)
    },

    {
        Label = "Known Grow Spot",
        ID = 590,
        Color = 47,
        Scale = 0.75,
        Location = vector3(-394.76, -1549.55, 12.83)
    },
}