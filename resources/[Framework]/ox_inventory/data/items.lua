return {
	['testburger'] = {
		label = 'Test Burger',
		weight = 220,
		degrade = 60,
		client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			export = 'ox_inventory_examples.testburger'
		},
		server = {
			export = 'ox_inventory_examples.testburger',
			test = 'what an amazingly delicious burger, amirite?'
		},
		buttons = {
			{
				label = 'Lick it',
				action = function(slot)
					print('You licked the burger')
				end
			},
			{
				label = 'Squeeze it',
				action = function(slot)
					print('You squeezed the burger :(')
				end
			}
		},
		consume = 0.3
	},

	['bandage'] = {
		label = 'Bandage',
		weight = 115,
		client = {
			anim = { dict = 'missheistdockssetup1clipboard@idle_a', clip = 'idle_a', flag = 49 },
			prop = { model = `prop_rolled_sock_02`, pos = vec3(-0.14, -0.14, -0.08), rot = vec3(-50.0, -50.0, 0.0) },
			disable = { move = true, car = true, combat = true },
			usetime = 2500,
		}
	},
	["nos"] = {
	     label = "NOS Bottle",
	     weight = 2000,
	     stack = false,
	     close = true,
	     client = {
	           disable = { move = true, car = true, combat = true },
        	   usetime = 3500,
	           cancel = true,
   	           export = "ND_Nitro.nos"
  	     }
	},
	["lockpick"] = {
		label = "Lockpick",
		weight = 160,
		consume = 1,
        	stack = true,
       	        close = true,
		client = {
          	  export = "ND_VehicleSystem.lockpick"
		}
	},
	["WEAPON_RADARGUN"] = {
		label = "Rardargun",
		weight = 60,
		consume = 1,
        	stack = false,
       	        close = true,
	},
	["driverid"] = {
		label = "Drivers License",
		weight = 60,
		consume = 1,
        	stack = false,
       	        close = true,
	},
	['corn_seed'] = {
    label = 'Corn Seed',
    weight = 1,
    stack = true,
    close = true,
    description = "This is a seed that grows corn.",
    server = {
        export = 'nd_pickle_farming.seed'
    }
	},

	['corn_raw'] = {
    label = 'Raw Corn',
    weight = 1,
    stack = true,
    close = true,
    description = "You will need to process this."
	},

	['corn'] = {
    label = 'Corn',
    weight = 1,
    stack = true,
    close = true,
	},

	['tomato_seed'] = {
    label = 'Tomato Seed',
    weight = 1,
    stack = true,
    close = true,
    description = "This is a seed that grows a tomato.",
    server = {
        export = 'nd_pickle_farming.seed'
    }
	},

	['tomato_raw'] = {
    label = 'Raw Tomato',
    weight = 1,
    stack = true,
    close = true,
    description = "You will need to process this."
	},

	['tomato'] = {
    label = 'Tomato',
    weight = 1,
    stack = true,
    close = true,
	},

	['wheat_seed'] = {
    label = 'Wheat Seed',
    weight = 1,
    stack = true,
    close = true,
    description = "This is a seed that grows Wheat.",
    server = {
        export = 'nd_pickle_farming.seed'
    }
	},

	['wheat_raw'] = {
    label = 'Raw Wheat',
    weight = 1,
    stack = true,
    close = true,
    description = "You will need to process this."
	},

	['wheat'] = {
    label = 'Wheat',
    weight = 1,
    stack = true,
    close = true,
	},

	['broccoli_seed'] = {
    label = 'Broccoli Seed',
    weight = 1,
    stack = true,
    close = true,
    description = "This is a seed that grows broccoli.",
    server = {
        export = 'nd_pickle_farming.seed'
    }
	},

	['broccoli_raw'] = {
    label = 'Raw Broccoli',
    weight = 1,
    stack = true,
    close = true,
    description = "You will need to process this."
	},

	['broccoli'] = {
    label = 'Broccoli',
    weight = 1,
    stack = true,
    close = true,
	},

	['carrot_seed'] = {
    label = 'Carrot Seed',
    weight = 1,
    stack = true,
    close = true,
    description = "This is a seed that grows a carrot.",
    server = {
        export = 'nd_pickle_farming.seed'
    }
	},

	['carrot_raw'] = {
    label = 'Raw Carrot',
    weight = 1,
    stack = true,
    close = true,
    description = "You will need to process this."
	},

	['carrot'] = {
    label = 'Carrot',
    weight = 1,
    stack = true,
    close = true,
	},

	['potato_seed'] = {
    label = 'Potato Seed',
    weight = 1,
    stack = true,
    close = true,
    description = "This is a seed that grows a potato.",
    server = {
        export = 'nd_pickle_farming.seed'
    }
	},

	['potato_raw'] = {
    label = 'Raw Potato',
    weight = 1,
    stack = true,
    close = true,
    description = "You will need to process this."
	},

	['potato'] = {
    label = 'Potato',
    weight = 1,
    stack = true,
    close = true,
	},

	['pickle_seed'] = {
    label = 'Pickle Seed',
    weight = 1,
    stack = true,
    close = true,
    description = "This is a seed that grows a pickle.",
    server = {
        export = 'nd_pickle_farming.seed'
    }
	},

	['pickle_raw'] = {
    label = 'Raw Pickle',
    weight = 1,
    stack = true,
    close = true,
    description = "You will need to process this."
	},

	['pickle'] = {
    label = 'Pickle',
    weight = 1,
    stack = true,
    close = true,
	},

	['weed_seed'] = {
    label = 'Weed Seed',
    weight = 1,
    stack = true,
    close = true,
    description = "This is a seed that grows weed.",
    server = {
        export = 'nd_pickle_farming.seed'
    }
	},

	['weed_raw'] = {
    label = 'Raw Weed',
    weight = 1,
    stack = true,
    close = true,
    description = "You will need to process this."
	},

	['weed'] = {
    label = 'Weed',
    weight = 1,
    stack = true,
    close = true,
	},

	['cocaine_seed'] = {
    label = 'Cocaine Seed',
    weight = 1,
    stack = true,
    close = true,
    description = "This is a seed that grows cocaine.",
    server = {
        export = 'nd_pickle_farming.seed'
    }
	},

	['cocaine_raw'] = {
    label = 'Raw Cocaine',
    weight = 1,
    stack = true,
    close = true,
    description = "You will need to process this."
	},

	['cocaine'] = {
    label = 'Cocaine',
    weight = 1,
    stack = true,
    close = true,
	},

	['heroin_seed'] = {
    label = 'Heroin Seed',
    weight = 1,
    stack = true,
    close = true,
    description = "This is a seed that grows heroin.",
    server = {
        export = 'nd_pickle_farming.seed'
    }
	},

	['heroin_raw'] = {
    label = 'Raw Heroin',
    weight = 1,
    stack = true,
    close = true,
    description = "You will need to process this."
},

	['heroin'] = {
    label = 'Heroin',
    weight = 1,
    stack = true,
    close = true,
	},

	['garden_pitcher'] = {
    label = 'Garden Pitcher',
    weight = 1,
    stack = true,
    close = true,
	},

	['garden_shovel'] = {
    label = 'Garden Shovel',
    weight = 1,
    stack = true,
    close = true,
	},

	['black_money'] = {
		label = 'Dirty Money',
	},

	['burger'] = {
		label = 'Burger',
		weight = 220,
		client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			notification = 'You ate a delicious burger'
		},
	},

	['cola'] = {
		label = 'eCola',
		weight = 350,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ecola_can`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'You quenched your thirst with cola'
		}
	},

	['parachute'] = {
		label = 'Parachute',
		weight = 8000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 1500
		}
	},

	['garbage'] = {
		label = 'Garbage',
	},

	['paperbag'] = {
		label = 'Paper Bag',
		weight = 1,
		stack = false,
		close = false,
		consume = 0
	},

	['identification'] = {
		label = 'Identification',
	},

	['panties'] = {
		label = 'Knickers',
		weight = 10,
		consume = 0,
		client = {
			status = { thirst = -100000, stress = -25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_cs_panties_02`, pos = vec3(0.03, 0.0, 0.02), rot = vec3(0.0, -13.5, -1.5) },
			usetime = 2500,
		}
	},

	['lockpick'] = {
		label = 'Lockpick',
		weight = 160,
	},

	['phone'] = {
		label = 'Phone',
		weight = 190,
		stack = false,
		consume = 0,
		client = {
			add = function(total)
				if total > 0 then
					pcall(function() return exports.npwd:setPhoneDisabled(false) end)
				end
			end,

			remove = function(total)
				if total < 1 then
					pcall(function() return exports.npwd:setPhoneDisabled(true) end)
				end
			end
		}
	},

	['money'] = {
		label = 'Money',
	},

	['mustard'] = {
		label = 'Mustard',
		weight = 500,
		client = {
			status = { hunger = 25000, thirst = 25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_food_mustard`, pos = vec3(0.01, 0.0, -0.07), rot = vec3(1.0, 1.0, -1.5) },
			usetime = 2500,
			notification = 'You.. drank mustard'
		}
	},

	['water'] = {
		label = 'Water',
		weight = 500,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
			usetime = 2500,
			cancel = true,
			notification = 'You drank some refreshing water'
		}
	},

	['radio'] = {
		label = 'Radio',
		weight = 1000,
		stack = false,
		allowArmed = true
	},

	['armour'] = {
		label = 'Bulletproof Vest',
		weight = 3000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 3500
		}
	},

	['clothing'] = {
		label = 'Clothing',
		consume = 0,
	},

	['mastercard'] = {
		label = 'Mastercard',
		stack = false,
		weight = 10,
	},

	['scrapmetal'] = {
		label = 'Scrap Metal',
		weight = 80,
	},
	["rope"] = {
		label = "Rope",
		weight = 1000,
		stack = true,
		close = true,
		client = {
			export = "rob_atm.rope"
		}
	},
	["dhandledrill"] = {
		label = "D-Handle Drill",
		weight = 3500,
		stack = false,
		close = true,
		client = {
			export = "rob_atm.drill"
		}
	},
}
