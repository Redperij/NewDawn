/datum/sprite_accessory/marking/booster
	species_allowed = list(SPECIES_HUMAN)
	subspecies_allowed = list(SPECIES_BOOSTER)
	icon = 'icons/mob/human_races/species/human/subspecies/booster_mods.dmi'

/datum/sprite_accessory/marking/booster/ears
	body_parts = list(BP_HEAD)
	draw_target = MARKING_TARGET_HAIR
	do_colouration = FALSE
	disallows = list(/datum/sprite_accessory/marking/booster/ears)

/datum/sprite_accessory/marking/booster/horns
	body_parts = list(BP_HEAD)
	draw_target = MARKING_TARGET_HAIR
	do_colouration = TRUE
	disallows = list(/datum/sprite_accessory/marking/booster/horns)

/datum/sprite_accessory/marking/booster/ears/cat
	icon_state = "ears_cat"
	name = "Биомод-ые уши (Кот)"

/datum/sprite_accessory/marking/booster/ears/rabbit
	icon_state = "ears_bun"
	name = "Биомод-ые уши (Кролик)"

/datum/sprite_accessory/marking/booster/horns/ram
	icon_state = "horns_ram"
	name = "Биомод-ые рога (Баран)"

/datum/sprite_accessory/marking/booster/horns/unathi
	icon_state = "horns_unathi"
	name = "Биомод-ые рога (Унатх)"

/datum/sprite_accessory/marking/booster/horns/spines_short
	icon_state = "horns_spines_short"
	name = "Биомод-ые рога (Короткие Шипы)"

/datum/sprite_accessory/marking/booster/horns/spines_long
	icon_state = "horns_spines_long"
	name = "Биомод-ые рога (Длинные Шипы)"

/datum/sprite_accessory/marking/booster/horns/frills_long
	icon_state = "horns_frills_long"
	name = "Биомод-ые рога (Длинные Кожные Складки)"

/datum/sprite_accessory/marking/booster/horns/frills_short
	icon_state = "horns_frills_short"
	name = "Биомод-ые рога (Короткие Кожные Складки)"
