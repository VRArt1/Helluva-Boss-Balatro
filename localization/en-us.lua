if helluva_config.helluvacustomsuits then
    SPADENAME = "Crown"
    CLUBNAME = "Moon"
    DIAMONDNAME = "Mammon"
else
    SPADENAME = "Spade"
    CLUBNAME = "Club"
    DIAMONDNAME = "Diamond"
end

return {
	descriptions = {
		Back={
            b_checkered={
                name="Checkered Deck",
                text={
                    "Start run with",
                    "{C:attention}26{C:spades} "..SPADENAME.."s{} and",
                    "{C:attention}26{C:hearts} Hearts{} in deck",
                },
            },
        },
        Blind={
            bl_club={
                name="The Club",
                text={
                    "All "..CLUBNAME.."s cards",
                    "are debuffed",
                },
            },
            bl_goad={
                name="The Goad",
                text={
                    "All "..SPADENAME.." cards",
                    "are debuffed",
                },
            },
            bl_serpent={
                name="The Serpent",
                text={
                    "After Play or Discard,",
                    "always draw 3 cards",
                },
            },
            bl_window={
                name="The Window",
                text={
                    "All "..DIAMONDNAME.." cards",
                    "are debuffed",
                },
            },
        },

		Tarot={
            c_chariot={
                name="Stella",
                text={
                    "This {C:attention}bitch{} enhances",
                    "{C:attention}#1#{} selected card",
                    "into a {C:attention}#2#",
                },
            },
            c_death={
                name="Glitz & Glam",
                text={
                    "Select {C:attention}#1#{} cards,",
                    "{C:dark_edition}mirror{} the {C:attention}left{} card",
                    "into the {C:attention}right{} card",
                    "{C:inactive}(Drag to rearrange)",
                },
            },
            c_devil={
                name="Lucifier",
                text={
                    "Enhances {C:attention}#1#{} selected",
                    "card into a",
                    "{C:attention}#2#",
                },
            },
            c_emperor={
                name="Moxxie",
                text={
                    "Creates up to {C:attention}#1#",
                    "random {C:tarot}Tarot{} cards",
                    "{C:inactive}(Must have room)",
                },
            },
            c_empress={
                name="Millie",
                text={
                    "Enhances {C:attention}#1#",
                    "selected cards to",
                    "{C:attention}#2#s",
                },
            },
            c_fool={
                name="Fizzarolli",
                text={
                    "Creates the last",
                    "{C:tarot}Tarot{} or {C:planet}Planet{} card",
                    "used during this run",
                    "{s:0.8,C:tarot}Fizzarolli{s:0.8} excluded",
                },
            },
            c_hanged_man={
                name="Striker",
                text={
                    "Assassinates up to",
                    "{C:attention}#1#{} selected cards",
                },
            },
            c_heirophant={
                name="Andrealphus",
                text={
                    "Enhances {C:attention}#1#",
                    "selected cards to",
                    "{C:attention}#2#s",
                },
            },
            c_hermit={
                name="Mammon",
                text={
                    "Embezzels money",
                    "{C:inactive}(Max of {C:money}$#1#{C:inactive})",
                },
            },
            c_high_priestess={
                name="Sallie May",
                text={
                    "Creates up to {C:attention}#1#",
                    "random {C:planet}Planet{} cards",
                    "{C:inactive}(Must have room)",
                },
            },
            c_judgement={
                name="Human Loona",
                text={
                    "Creates a random",
                    "{C:attention}Joker{} card",
                    "{C:inactive}(Must have room)",
                },
            },
            c_justice={
                name="Satan",
                text={
                    "Enhances {C:attention}#1#{} selected",
                    "card into a",
                    "{C:attention}#2#",
                },
            },
            c_lovers={
                name="Verosika",
                text={
                    "Sluts up {C:attention}#1#{}",
                    "selected card",
                    "into a {C:attention}#2#",
                },
            },
            c_magician={
                name="Octavia",
                text={
                    "Enhances {C:attention}#1#{}",
                    "selected cards to",
                    "{C:attention}#2#s",
                },
            },
            c_moon={
                name="Barbie",
                text={
                    "Converts up to",
                    "{C:attention}#1#{} selected cards",
                    "to {V:1}#2#{}",
                },
            },
            c_star={
                name="Blitzo",
                text={
                    "Converts up to",
                    "{C:attention}#1#{} selected cards",
                    "to {V:1}#2#{}",
                },
            },
            c_strength={
                name="Loona",
                text={
                    "Increases rank of",
                    "up to {C:attention}#1#{} selected",
                    "cards by {C:attention}1",
                },
            },
            c_sun={
                name="Asmodeus",
                text={
                    "Converts up to",
                    "{C:attention}#1#{} selected cards",
                    "to {V:1}#2#{}",
                },
            },
            c_temperance={
                name="Vortex",
                text={
                    "Gives the total sell",
                    "value of all current",
                    "Jokers {C:inactive}(Max of {C:money}$#1#{C:inactive})",
                    "{C:inactive}(Currently {C:money}$#2#{C:inactive})",
                },
            },
            c_tower={
                name="Crimson",
                text={
                    "Enhances {C:attention}#1#{} selected",
                    "card into a",
                    "{C:attention}#2#",
                },
            },
            c_wheel_of_fortune={
                name="Beelzebub",
                text={
                    "{C:green}#1# in #2#{} chance to add",
                    "{C:dark_edition}Foil{}, {C:dark_edition}Holographic{}, or",
                    "{C:dark_edition}Polychrome{} edition",
                    "to a random {C:attention}Joker",
                },
            },
            c_world={
                name="Stolas",
                text={
                    "Converts up to",
                    "{C:attention}#1#{} selected cards",
                    "to {V:1}#2#{}",
                },
            },
        },
		Joker={
			j_arrowhead={
                name="Arrowhead",
                text={
                    "Played cards with",
                    "{C:spades}"..SPADENAME.."{} suit give",
                    "{C:chips}+#1#{} Chips when scored",
                },
                unlock={
                    "Have at least {E:1,C:attention}#1#",
                    "cards with {E:1,C:attention}#2#",
                    "suit in your deck",
                },
            },
            j_flower_pot={
                name="Flower Pot",
                text={
                    "{X:mult,C:white} X#1# {} Mult if poker",
                    "hand contains a",
                    "{C:diamonds}"..DIAMONDNAME.."{} card, {C:clubs}"..CLUBNAME.."{} card,",
                    "{C:hearts}Heart{} card, and {C:spades}"..SPADENAME.."{} card",
                },
                unlock={
                    "Reach Ante",
                    "level {E:1,C:attention}#1#",
                },
            },
            j_onyx_agate={
                name="Onyx Agate",
                text={
                    "Played cards with",
                    "{C:clubs}"..CLUBNAME.."{} suit give",
                    "{C:mult}+#1#{} Mult when scored",
                },
                unlock={
                    "Have at least {E:1,C:attention}#1#",
                    "cards with {E:1,C:attention}#2#",
                    "suit in your deck",
                },
            },
            j_rough_gem={
                name="Rough Gem",
                text={
                    "Played cards with",
                    "{C:diamonds}"..DIAMONDNAME.."{} suit earn",
                    "{C:money}$#1#{} when scored",
                },
                unlock={
                    "Have at least {E:1,C:attention}#1#",
                    "cards with {E:1,C:attention}#2#",
                    "suit in your deck",
                },
            },
            j_seeing_double={
                name="Seeing Double",
                text={
                    "{X:mult,C:white} X#1# {} Mult if played",
                    "hand has a scoring",
                    "{C:clubs}"..CLUBNAME.."{} card and a scoring",
                    "card of any other {C:attention}suit",
                },
                unlock={
                    "Play a hand",
                    "that contains",
                    "{E:1,C:attention}#1#",
                },
            },
            j_smeared={
                name="Smeared Joker",
                text={
                    "{C:hearts}Hearts{} and {C:diamonds}"..DIAMONDNAME.."s",
                    "count as the same suit,",
                    "{C:spades}"..SPADENAME.."s{} and {C:clubs}"..CLUBNAME.."s",
                    "count as the same suit",
                },
                unlock={
                    "Have at least {C:attention}#1#",
                    "{E:1,C:attention}#2#{} in",
                    "your deck",
                },
            },
			j_odd_todd={
                name="Horse Stolas",
                text={
                    "Played cards with",
                    "{C:attention}odd{} rank give",
                    "{C:chips}+#1#{} Chips when scored",
                    "{C:inactive}(A, 9, 7, 5, 3)",
                },
			},
			j_family={
                name="I.M.P.",
                text={
                    "{X:mult,C:white} X#1# {} Mult if played",
                    "hand contains",
                    "a {C:attention}#2#",
                },
                unlock={
                    "Win a run",
                    "without playing",
                    "a {E:1,C:attention}#1#",
                },
            },
		}
	},
    misc = {
        suits_plural = { Spades=SPADENAME.."s", Hearts="Hearts", Clubs=CLUBNAME.."s", Diamonds=DIAMONDNAME.."s", },
        suits_singular = { Spade=SPADENAME, Heart="Heart", Club=CLUBNAME, Diamond=DIAMONDNAME, },
		dictionary={ 
			h_4_7_of_clubs="four 7 of "..CLUBNAME.."s",
			
			-- Config

			helluvanorestart = "Restart Not Required",
			helluvayesrestart = "Restart Required",
			helluvacustomsuits = "Custom Suits",
			helluva_quips = "Quips",

			-- Credits
			
			helluvacredits = "Credits",
			helluvacredits_thanks = "Thanks to",
			helluvacredits_lead = "Lead Developer: ",
			helluvacredits_card_artist = "Card Art: ",
			helluvacredits_metal_card_artist = "Metal Card Art: ",
			helluvacredits_config_coding = "Config Coding: ",
			helluvacredits_joker_logic = "Joker Logic: ",
			helluvacredits_localization = "Localization: ",
			helluvacredits_quippers = "Quips: ",
			helluvacredits_special_thanks = "Special Thanks: ",
			donate = "Donate",
		},
		quips = {
		
			-- Wins
			
			hbp_andrealphuswin = {''},
			hbp_asmodeuswin = {'You\'re the most inspiring person I\'ve ever known.'}, -- Mian
			hbp_barbiewin = {''},
			hbp_beelzebubwin = {'Hell yeah the honey is flowing tonight!','You are my new favorite person.'}, -- Mian
			hbp_blitzowin = {'You really know how to put on a show.','Would it fuck up the moment if we made out right now?'}, -- Mian
			hbp_crimsonwin = {''},
			hbp_fizzwin = {'You\'re my little', '{C:attention}pog champ{}!'},
			hbp_glitzglamwin = {''},
			hbp_humanloonawin = {''},
			hbp_loonawin = {''},
			hbp_luciferwin = {''},
			hbp_mammonwin = {'You\'re a', 'bloody legend!'},
			hbp_milliewin = {''},
			hbp_moxxiewin = {''},
			hbp_octaviawin = {''},
			hbp_salliemaywin = {''},
			hbp_satanwin = {''},
			hbp_stellawin = {''},
			hbp_stolaswin = {''},
			hbp_strikerwin = {'I\'d like to take this moment to sing a song', 'I wrote just now about you winning.'}, -- Mian
			hbp_verosikawin = {''},
			hbp_vortexwin = {''},
		
			-- Losses
			
			hbp_andrealphusloss = {''},
			hbp_asmodeusloss = {''},
			hbp_barbieloss = {''},
			hbp_beelzebubloss = {''},
			hbp_blitzoloss = {'HAAAAAA! Loser!'}, -- Cynder
			hbp_crimsonloss = {'This is what happens when you cross me.'},
			hbp_fizzloss = {'That wasn\'t very', '{C:attention}sigma{} of you.'},
			hbp_glitzglamloss = {'You\'re a clown bitch.'},
			hbp_humanloonaloss = {''},
			hbp_loonaloss = {''},
			hbp_luciferloss = {''},
			hbp_mammonloss = {''},
			hbp_millieloss = {'I love you hon, but for fuck\'s sake!'}, -- Mian
			hbp_moxxieloss = {''},
			hbp_octavialoss = {'I think you\'d like this song,', 'it\'s called {C:attention}fuck you{}.'},
			hbp_salliemayloss = {''},
			hbp_satanloss = {''},
			hbp_stellaloss = {'You are a goddamn embarrassment!', 'I\'m not spending another moment with your imp fucking face!'}, -- Mian
			hbp_stolasloss = {'You, you\'re... you\'re a- A CUNT!'}, -- Cynder
			hbp_strikerloss = {'Don\'t worry little one, you never stood a chance.'}, -- Mian
			hbp_verosikaloss = {''},
			hbp_vortexloss = {'Well, guess it\'s time to bounce.'}, -- Mian
		}
	}
}