-- Config Tab

SMODS.current_mod.config_tab = function()
  return {
    n = G.UIT.ROOT,
    config = { align = 'cm', padding = 0.05, emboss = 0.05, r = 0.1, colour = G.C.BLACK },
    nodes = {
	
		-- {
			-- n = G.UIT.R,
			-- config = {
			-- padding = 0.25,
			-- align = "cm"
			-- },
			-- nodes = {
				-- {
					-- n = G.UIT.T,
					-- config = {
					-- text = localize("helluvanorestart"),
					-- shadow = true,
					-- scale = 0.75 * 0.8,
					-- colour = HEX("f5d985")
					-- }
				-- }
			-- },
		-- },
		
		{
			n = G.UIT.R,
			config = {
			padding = 0.25,
			align = "cm"
			},
			nodes = {
				{
					n = G.UIT.T,
					config = {
					text = localize("helluvayesrestart"),
					shadow = true,
					scale = 0.75 * 0.8,
					colour = HEX("d80007")
					},
				},
			},
		},
		
		{
			n = G.UIT.R,
			config = { align = 'cl'},
			nodes = {
				{
					n = G.UIT.C,
					-- config = { align = 'cm'},
					nodes = {
					create_toggle {
						label = localize('helluvacustomsuits'),
						ref_table = helluva_config,
						ref_value = 'helluvacustomsuits'
					},
				  },
				},
			},
		},
		{
			n = G.UIT.R,
			-- config = { align = 'cm'},
			nodes = {
			  {
				n = G.UIT.C,
				nodes = {
				  create_toggle {
					label = localize('helluva_quips'),
					ref_table = helluva_config,
					ref_value = 'helluvaquips'
				  },
				},
			  },
			}
		},
		
    }
  }
end

-- Credits Tab

SMODS.current_mod.extra_tabs = function()
  local scale = 0.75
  return {
    label = localize("helluvacredits"),
    tab_definition_function = function()
      return {
        n = G.UIT.ROOT,
        config = {
          align = "cm",
          padding = 0.05,
          colour = G.C.CLEAR,
        },
        nodes = {
          {
            n = G.UIT.R,
            config = {
              padding = 0,
              align = "cm"
            },
            nodes = {
              {
                n = G.UIT.T,
                config = {
                  text = localize("helluvacredits_thanks"),
                  shadow = true,
                  scale = scale * 0.8,
                  colour = G.C.UI.TEXT_LIGHT
                }
              }
            }
          },
          {
            n = G.UIT.R,
            config = {
              padding = 0,
              align = "cm"
            },
            nodes = {
              {
                n = G.UIT.T,
                config = {
                  text = localize("helluvacredits_lead"),
                  shadow = true,
                  scale = scale * 0.8,
                  colour = G.C.UI.TEXT_LIGHT
                }
              },
              {
                n = G.UIT.T,
                config = {
                  text = "V--R",
                  shadow = true,
                  scale = scale * 0.8,
                  colour = HEX("d80007")
                }
              }
            }
          },
          {
            n = G.UIT.R,
            config = {
              padding = 0,
              align = "cm"
            },
            nodes = {
              {
                n = G.UIT.T,
                config = {
                  text = localize("helluvacredits_card_artist"),
                  shadow = true,
                  scale = scale * 0.8,
                  colour = G.C.UI.TEXT_LIGHT
                }
              },
              {
                n = G.UIT.T,
                config = {
                  text = "GasuGuma",
                  shadow = true,
                  scale = scale * 0.8,
                  colour = HEX("d80007")
                }
              }
            },
          },
		  {
            n = G.UIT.R,
            config = {
              padding = 0,
              align = "cm"
            },
            nodes = {
              {
                n = G.UIT.T,
                config = {
                  text = localize("helluvacredits_metal_card_artist"),
                  shadow = true,
                  scale = scale * 0.8,
                  colour = G.C.UI.TEXT_LIGHT
                }
              },
              {
                n = G.UIT.T,
                config = {
                  text = "Par0lllel",
                  shadow = true,
                  scale = scale * 0.8,
                  colour = HEX("f5d985")
                }
              }
            },
          },
		            {
            n = G.UIT.R,
            config = {
              padding = 0,
              align = "cm"
            },
            nodes = {
              {
                n = G.UIT.T,
                config = {
                  text = localize("helluvacredits_config_coding"),
                  shadow = true,
                  scale = scale * 0.8,
                  colour = G.C.UI.TEXT_LIGHT
                }
              },
              {
                n = G.UIT.T,
                config = {
                  text = "RattlingSnow353",
                  shadow = true,
                  scale = scale * 0.8,
                  colour = HEX("d80007")
                }
              }
            },
          },
          -- {
            -- n = G.UIT.R,
            -- config = {
              -- padding = 0,
              -- align = "cm"
            -- },
            -- nodes = {
              -- {
                -- n = G.UIT.T,
                -- config = {
                  -- text = localize("helluvacredits_joker_logic"),
                  -- shadow = true,
                  -- scale = scale * 0.8,
                  -- colour = G.C.UI.TEXT_LIGHT
                -- }
              -- },
              -- {
                -- n = G.UIT.T,
                -- config = {
                  -- text = "factwixard",
                  -- shadow = true,
                  -- scale = scale * 0.8,
                  -- colour = HEX("d80007")
                -- }
              -- }
            -- },
          -- },
		            -- {
            -- n = G.UIT.R,
            -- config = {
              -- padding = 0,
              -- align = "cm"
            -- },
            -- nodes = {
              -- {
                -- n = G.UIT.T,
                -- config = {
                  -- text = localize("helluvacredits_localization"),
                  -- shadow = true,
                  -- scale = scale * 0.8,
                  -- colour = G.C.UI.TEXT_LIGHT
                -- }
              -- },
              -- {
                -- n = G.UIT.T,
                -- config = {
                  -- text = "PLACEHOLDER",
                  -- shadow = true,
                  -- scale = scale * 0.8,
                  -- colour = HEX("d80007")
                -- }
              -- }
            -- },
          -- },
		  {
            n = G.UIT.R,
            config = {
              padding = 0,
              align = "cm"
            },
            nodes = {
              {
                n = G.UIT.T,
                config = {
                  text = localize("helluvacredits_quippers"),
                  shadow = true,
                  scale = scale * 0.8,
                  colour = G.C.UI.TEXT_LIGHT
                }
              },
			  {
                n = G.UIT.T,
                config = {
                  text = "Cynder",
                  shadow = true,
                  scale = scale * 0.8,
                  colour = HEX("8842AE")
                }
              },
              {
                n = G.UIT.T,
                config = {
                  text = " & Mian",
                  shadow = true,
                  scale = scale * 0.8,
                  colour = HEX("d80007")
                }
              }
            }
          },
          {
            n = G.UIT.R,
            config = {
              padding = 0,
              align = "cm"
            },
            nodes = {
              {
                n = G.UIT.T,
                config = {
                  text = localize("helluvacredits_special_thanks"),
                  shadow = true,
                  scale = scale * 0.8,
                  colour = G.C.UI.TEXT_LIGHT
                }
              },
              {
                n = G.UIT.T,
                config = {
                  text = "Larswijn & Larz",
                  shadow = true,
                  scale = scale * 0.8,
                  colour = HEX("d80007")
                }
              }
            }
          },
		            {
            n = G.UIT.R,
            config = {
              padding = 0,
              align = "cm"
            },
            nodes = {
              {
                n = G.UIT.T,
                config = {
                  text = "",
                  shadow = true,
                  scale = scale * 0.8,
                  colour = G.C.UI.TEXT_LIGHT
                }
              },
              {
                n = G.UIT.T,
                config = {
                  text = "...and you! Fuck you!",
                  shadow = true,
                  scale = scale * 0.8,
                  colour = HEX("d80007")
                }
              }
            }
          },
		  {
            n = G.UIT.R, config = { padding = 0, align = "cm", -- colour = G.C.BLUE 
			},
			nodes = {
				  {
					n = G.UIT.C, config = { padding = 0.2, align = "cl", -- colour = G.C.RED 
					},
					nodes = {
					  UIBox_button({
						-- minw = 3.85,
						colour = HEX("d80007"),
						button = "vrgithub",
						label = {"Github"}
					  }),
					},
				  },
				  {
					n = G.UIT.C, config = { padding = 0.2, align = "cr", -- colour = G.C.YELLOW
					},
					nodes = {
					  UIBox_button({
						-- minw = 3.85,
						colour = HEX("f5d985"),
						button = "vrdonate",
						label = {"Donate"}
					  })
					},
				  },
			},
		},
        },
      }
    end
  }
end

-- Functions

function G.FUNCS.vrgithub(e)
	love.system.openURL("https://github.com/VRArt1/Helluva-Boss-Balatro")
end
function G.FUNCS.vrdonate(e)
  love.system.openURL("https://ko-fi.com/vrart1")
end