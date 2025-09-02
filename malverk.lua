-- Alt Textures
AltTexture({
    key = 'backsHELLUVA',
    set = 'Back',
    path = 'helluvaenhancers.png',
	loc_txt = { name = 'Helluva Deck Backs',},
	keys = {'b_red','b_blue','b_yellow','b_green','b_black'},
	display_pos = 'b_red',
	original_sheet = true
})
AltTexture({
    key = 'enhancersHELLUVA',
    set = 'Enhanced',
    path = 'helluvaenhancers.png',
	loc_txt = { name = 'Helluva Enhancers',},
	keys = {'m_bonus','m_stone','m_mult','m_wild'},
	display_pos = 'b_red',
	original_sheet = true
})
AltTexture({
    key = 'jokersHELLUVA',
    set = 'Joker',
    path = 'helluvajokers.png',
	loc_txt = { name = 'Helluva Jokers',},
	keys = {'j_joker', 'j_half', 'j_misprint', 'j_stencil'},
	original_sheet = true
})
AltTexture({
    key = 'sealHELLUVA',
    set = 'Seal',
	loc_txt = { name = 'Helluva Seals',},
    path = 'helluvaenhancers.png',
})
AltTexture({
    key = 'boostersHELLUVAarcana',
    set = 'Booster',
    path = 'helluvaboosters.png',
	loc_txt = { name = 'Helluva Tarot Boosters',},
	keys = {
		'p_arcana_normal_1', 'p_arcana_normal_2', 'p_arcana_normal_3', 'p_arcana_normal_4',
		'p_arcana_jumbo_1','p_arcana_jumbo_2','p_arcana_mega_1', 'p_arcana_mega_2',
	},
	original_sheet = true
})
AltTexture({
    key = 'boostersHELLUVAbuffoon',
    set = 'Booster',
    path = 'helluvaboosters.png',
	loc_txt = { name = 'Helluva Jokers Boosters',},
	keys = { -- 'p_buffon_normal_1', 'p_buffon_normal_2', 'p_buffon_jumbo_1', 'p_buffon_mega_1',
	},
	original_sheet = true
})
AltTexture({
    key = 'tarotsHELLUVA',
    set = 'Tarot',
    path = 'helluvatarots.png',
	loc_txt = { name = 'Helluva Tarot Cards',},
	-- Uncomment below line to remove blank placeholder tarots.
	-- keys = {'c_fool','c_magician','c_high_priestess','c_empress','c_emperor','c_lovers','c_hermit','c_wheel_of_fortune','c_strength','c_hanged_man','c_star','c_moon','c_sun','c_judgement'},
	display_pos = 'c_star',
	original_sheet = true
})
AltTexture({
    key = 'stakesHELLUVA',
    set = 'Stake',
    path = 'helluvachips.png',
	loc_txt = { name = 'Helluva Stakes',},
	original_sheet = true
})


-- Texture Pack
TexturePack {
    key = 'hbcards',
    textures = {
        "hbp_enhancersHELLUVA","hbp_boostersHELLUVAarcana", "hbp_boostersHELLUVAbuffoon",
		"hbp_backsHELLUVA","hbp_jokersHELLUVA","hbp_sealHELLUVA","hbp_tarotsHELLUVA","hbp_stakesHELLUVA"
    },
        loc_txt = {
        name = "Helluva Boss",
        text = {
            "Helluva Boss",
            "playing cards."
        }
    }
}