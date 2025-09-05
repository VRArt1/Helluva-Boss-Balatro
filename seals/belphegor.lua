SMODS.Seal {
    key = 'belphegor',
    pos = { x = 2, y = 1 },
    config = {
        extra = {
            sleepypoints = 1
        }
    },
    badge_colour = HEX('d80007'),
    atlas = 'helluvaseals',
    unlocked = true,
    discovered = true,
    no_collection = false,
    loc_vars = function(self, info_queue, card)
        return {vars = {card.ability.seal.extra.sleepypoints}}
    end,
    calculate = function(self, card, context)
        if context.cardarea == G.hand and context.main_scoring then
            return { x_mult = card.ability.seal.extra.sleepypoints },
			card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "zZz", colour = HEX("fe06e7")})
        end
        if context.main_scoring and context.cardarea == G.play then
            card.ability.seal.extra.sleepypoints = 1
            card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "I'm tired...", colour = HEX("fe06e7")})
        end
        if context.end_of_round and context.cardarea == G.hand then
		-- and context.other_card == card and context.individual then
            return { func = function()
                    card.ability.seal.extra.sleepypoints = (card.ability.seal.extra.sleepypoints) + 0.5
                    return true
                end }
        end
    end
}