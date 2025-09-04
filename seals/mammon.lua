SMODS.Seal {
    key = 'mammon',
    pos = { x = 3, y = 0 },
    config = {
        extra = {
            dollars2 = 2,
            dollars3 = 3,
            dollars4 = 4,
            dollars5 = 5,
            dollars6 = 6,
            dollars7 = 7,
            dollars8 = 8,
            dollars9 = 9,
            dollars10 = 10,
            dollars11 = 10,
            dollars12 = 10,
            dollars13 = 10,
            dollars14 = 11
        }
    },
    badge_colour = HEX('d80007'),
   loc_txt = {
        name = 'Mammon',
        label = 'Mammon',
        text = {
        [1] = 'Earn {C:money}$1{} per {C:chips}chips{}',
        [2] = 'when discarded',
        [3] = '{C:attention}Destroys card{}'
    }
    },
    atlas = 'helluvaseals',
    unlocked = true,
    discovered = true,
    no_collection = false,
        calculate = function(self, card, context)
        if context.discard and context.other_card == card and card:get_id() == 2 then
            return { remove = true, dollars = lenient_bignum(card.ability.seal.extra.dollars2) }
        end
        if context.discard and context.other_card == card and card:get_id() == 3 then
            return { remove = true, dollars = lenient_bignum(card.ability.seal.extra.dollars3) }
        end
        if context.discard and context.other_card == card and card:get_id() == 4 then
            return { remove = true, dollars = lenient_bignum(card.ability.seal.extra.dollars4) }
        end
        if context.discard and context.other_card == card and card:get_id() == 5 then
            return { remove = true, dollars = lenient_bignum(card.ability.seal.extra.dollars5) }
        end
        if context.discard and context.other_card == card and card:get_id() == 6 then
            return { remove = true, dollars = lenient_bignum(card.ability.seal.extra.dollars6) }
        end
        if context.discard and context.other_card == card and card:get_id() == 7 then
            return { remove = true, dollars = lenient_bignum(card.ability.seal.extra.dollars7) }
        end
        if context.discard and context.other_card == card and card:get_id() == 8 then
            return { remove = true, dollars = lenient_bignum(card.ability.seal.extra.dollars8) }
        end
        if context.discard and context.other_card == card and card:get_id() == 9 then
            return { remove = true, dollars = lenient_bignum(card.ability.seal.extra.dollars9) }
        end
        if context.discard and context.other_card == card and card:get_id() == 10 then
            return { remove = true, dollars = lenient_bignum(card.ability.seal.extra.dollars10) }
        end
        if context.discard and context.other_card == card and card:get_id() == 11 then
            return { remove = true, dollars = lenient_bignum(card.ability.seal.extra.dollars11) }
        end
        if context.discard and context.other_card == card and card:get_id() == 12 then
            return { remove = true, dollars = lenient_bignum(card.ability.seal.extra.dollars12) }
        end
        if context.discard and context.other_card == card and card:get_id() == 13 then
            return { remove = true, dollars = lenient_bignum(card.ability.seal.extra.dollars13) }
        end
        if context.discard and context.other_card == card and card:get_id() == 14 then
            return { remove = true, dollars = lenient_bignum(card.ability.seal.extra.dollars14) }
        end
    end
}