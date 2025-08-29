-- Load Config file
helluva_config = SMODS.current_mod.config
-- Load UI file
local UI, load_error = SMODS.load_file("ui.lua")
if load_error then
  sendDebugMessage ("The error is: "..load_error)
else
  UI()
end
-- Load Quips file
if helluva_config.helluvaquips then
    SMODS.load_file("quips.lua")()
else
end

assert(SMODS.load_file("jokers.lua"))()
-- Load Jokers file
SMODS.Atlas{  
        key = 'helluva_jokers',
        px = 71,
        py = 95,
        path = "helluva_jokers.png",
    }
	
SMODS.load_file("jokers.lua")()

local atlas_key = 'hbp_atlas' -- Format: PREFIX_KEY
local atlas_path = 'helluvaboss_lc.png' -- Filename for the image in the asset folder
local atlas_path_hc = 'helluvaboss_hc.png' -- Filename for the high-contrast version of the texture, if existing

local suits = {'hearts', 'clubs', 'diamonds', 'spades'} -- Which suits to replace
local ranks = {'2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', "King", "Ace",} -- Which ranks to replace

local description = 'Helluva Boss' -- English-language description, also used as default

-- Modicon
SMODS.Atlas {
  key = 'modicon',
  px = 32,
  py = 32,
  path = 'modicon.png'
}

-- Card Sleeves
SMODS.Atlas:take_ownership('casl_sleeve_atlas',
	{
		path = 'helluvasleeves.png', 
	},
	true
)
SMODS.Atlases['casl_sleeve_atlas'].mod = SMODS.current_mod

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

-- UI suits

if helluva_config.helluvacustomsuits then
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
else
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


-- Cards
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
            ['en-us'] = description
        },
        posStyle = 'deck'
    }
end

-- Malverk
AltTexture({
    key = 'enhancersHELLUVA',
    set = 'Enhanced',
    path = 'helluvaenhancers.png',
	keys = {'b_red','b_blue','b_yellow','b_green','b_black','m_bonus','m_stone'},
	display_pos = 'b_red',
	original_sheet = true
})

AltTexture({
    key = 'jokersHELLUVA',
    set = 'Joker',
    path = 'helluvajokers.png',
	keys = {'j_joker', 'j_half'},
	original_sheet = true
})

AltTexture({
    key = 'tarotsHELLUVA',
    set = 'Tarot',
    path = 'helluvatarots.png',
	-- Uncomment below line to remove blank placeholder tarots.
	-- keys = {'c_fool','c_magician','c_high_priestess','c_empress','c_emperor','c_lovers','c_hermit','c_wheel_of_fortune','c_strength','c_hanged_man','c_star','c_moon','c_sun','c_judgement'},
	original_sheet = true
})

AltTexture({
    key = 'sealHELLUVA',
    set = 'Seal',
    path = 'helluvaenhancers.png',
})

TexturePack {
    key = 'cards',
    textures = {
        "hbp_enhancersHELLUVA","hbp_jokersHELLUVA","hbp_tarotsHELLUVA","hbp_sealHELLUVA"
    },
        loc_txt = {
        name = "Helluva Boss",
        text = {
            "Helluva Boss",
            "playing card backs,",
	    "jokers, enhancers,",
	    "seals and tarots."
        }
    }
}