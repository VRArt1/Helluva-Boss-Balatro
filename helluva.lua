local atlas_key = 'hbp_atlas' -- Format: PREFIX_KEY
local atlas_key2 = 'hbp_atlas2' -- Format: PREFIX_KEY
local atlas_path = 'helluvaboss_lc.png' -- Filename for the image in the asset folder
local atlas_path_hc = 'helluvaboss_hc.png' -- Filename for the high-contrast version of the texture, if existing
local atlas_path2 = 'helluvabossgold_lc.png' -- Filename for the image in the asset folder
local atlas_path2_hc = 'helluvabossgold_hc.png' -- Filename for the high-contrast version of the texture, if existing

local suits = {'hearts', 'clubs', 'diamonds', 'spades'} -- Which suits to replace
local ranks = {'2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', "King", "Ace",} -- Which ranks to replace

local description = 'Helluva Boss' -- English-language description, also used as default
local description1 = 'Helluva Boss Red Foil' -- English-language description, also used as default
local description2 = 'Helluva Boss Gold Foil' -- English-language description, also used as default

-- Config
helluva_config = SMODS.current_mod.config

-- UI
local UI, load_error = SMODS.load_file("ui.lua")
if load_error then
  sendDebugMessage ("The error is: "..load_error)
else
  UI()
end

-- Quips
if helluva_config.helluvaquips then
    SMODS.load_file("quips.lua")()
else
end

-- Jokers
if helluva_config.helluvajokers then
	SMODS.Atlas{  
			key = 'helluva_jokers',
			px = 71,
			py = 95,
			path = "helluva_jokers.png",
		}
	-- assert(SMODS.load_file("jokers.lua"))() -- Testing
	SMODS.load_file("jokers.lua")()

	-- Malverk file
	-- assert(SMODS.load_file("malverk.lua"))() -- Testing
	SMODS.load_file("malverk.lua")()

	-- Modicon
	SMODS.Atlas {
	  key = 'modicon',
	  px = 32,
	  py = 32,
	  path = 'modicon.png'
	}
else
end

-- Card Sleeves
if helluva_config.helluvasleeves then
	if next(SMODS.find_mod("CardSleeves")) then
	SMODS.Atlas:take_ownership('casl_sleeve_atlas',
		{
			path = 'helluvasleeves.png', 
		},
		true
	)
	SMODS.Atlases['casl_sleeve_atlas'].mod = SMODS.current_mod
	end
else
end

-- Logo
if helluva_config.helluvalogo then
SMODS.Atlas{
    key = 'balatro',
    px = 333,
    py = 216,
    path = "balatro.png",
    prefix_config = {key = false},
}
else
end

-- UI Suits

if helluva_config.helluvacustomui then -- Check if UI on.
	if helluva_config.helluvacustomsuits then -- Check if custom names on. Full.
		SMODS.Atlas{
			key = 'ui_1',
			px = 18,
			py = 18,
			path = "ui_assets.png",
			prefix_config = {key = false},
		}
		SMODS.Atlas{
			key = 'ui_2',
			px = 18,
			py = 18,
			path = "ui_assets_opt2.png",
			prefix_config = {key = false},
		}
	else -- Custom names off. Face.
		SMODS.Atlas{
			key = 'ui_1',
			px = 18,
			py = 18,
			path = "ui_assets_original.png",
			prefix_config = {key = false},
		}
		SMODS.Atlas{
			key = 'ui_2',
			px = 18,
			py = 18,
			path = "ui_assets_original_opt2.png",
			prefix_config = {key = false},
		}
	end
else
end

-- Deck
SMODS.Atlas{  
    key = atlas_key..'_lc',
    px = 71,
    py = 95,
    path = atlas_path,
    prefix_config = {key = false},
}

if atlas_path_hc then
    SMODS.Atlas{  
        key = atlas_key..'_hc',
        px = 71,
        py = 95,
        path = atlas_path_hc,
        prefix_config = {key = false},
    }
end

for _, suit in ipairs(suits) do
    SMODS.DeckSkin{
        key = suit.."_skin",
        suit = suit:gsub("^%l", string.upper),
        ranks = ranks,
        lc_atlas = atlas_key..'_lc',
        hc_atlas = (atlas_path_hc and atlas_key..'_hc') or atlas_key..'_lc',
        loc_txt = {
            ['en-us'] = description1
        },
        posStyle = 'deck'
    }
end

-- Deck Gold
SMODS.Atlas{  
    key = atlas_key2..'_lc',
    px = 71,
    py = 95,
    path = atlas_path2,
    prefix_config = {key = false},
}

if atlas_path2_hc then
    SMODS.Atlas{  
        key = atlas_key2..'_hc',
        px = 71,
        py = 95,
        path = atlas_path2_hc,
        prefix_config = {key = false},
    }
end

for _, suit in ipairs(suits) do
    SMODS.DeckSkin{
        key = suit.."2_skin",
        suit = suit:gsub("^%l", string.upper),
        ranks = ranks,
        lc_atlas = atlas_key2..'_lc',
        hc_atlas = (atlas_path2_hc and atlas_key2..'_hc') or atlas_key2..'_lc',
        loc_txt = {
            ['en-us'] = description2
        },
        posStyle = 'deck'
    }
end

-- Seals
local NFS = require("nativefs")
to_big = to_big or function(a) return a end
lenient_bignum = lenient_bignum or function(a) return a end

SMODS.Atlas({
    key = "helluvaseals", 
    path = "helluva_seals.png", 
    px = 71,
    py = 95, 
    atlas_table = "ASSET_ATLAS"
}):register()

local function load_seals_folder()
    local mod_path = SMODS.current_mod.path
    local seals_path = mod_path .. "/seals"
    local files = NFS.getDirectoryItemsInfo(seals_path)
    for i = 1, #files do
        local file_name = files[i].name
        if file_name:sub(-4) == ".lua" then
            assert(SMODS.load_file("seals/" .. file_name))()
        end
    end
end

load_seals_folder()