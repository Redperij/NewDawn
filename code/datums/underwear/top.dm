/datum/category_item/underwear/top
	underwear_name = "bra"
	underwear_type = /obj/item/underwear/top

/datum/category_item/underwear/top/none
	name = "Ничего"
	always_last = TRUE
	underwear_type = null

/datum/category_item/underwear/top/none/is_default(var/gender)
	return gender != FEMALE

/datum/category_item/underwear/top/bra
	is_default = TRUE
	name = "Ливчик"
	icon_state = "bra"
	has_color = TRUE

/datum/category_item/underwear/top/bra/is_default(var/gender)
	return gender == FEMALE

/datum/category_item/underwear/top/sports_bra
	name = "Спортивный ливчик"
	icon_state = "sports_bra"
	has_color = TRUE

/datum/category_item/underwear/top/sports_bra_alt
	name = "Спортивный ливчик, альт"
	icon_state = "sports_bra_alt"
	has_color = TRUE

/datum/category_item/underwear/top/lacy_bra
	name = "Кружевной ливчик"
	icon_state = "lacy_bra"

/datum/category_item/underwear/top/lacy_bra_alt
	name = "Кружевной ливчик, альт"
	icon_state = "lacy_bra_alt"

/datum/category_item/underwear/top/halterneck_bra
	name = "Нашейеый ливчик"
	icon_state = "halterneck_bra"
	has_color = TRUE

/datum/category_item/underwear/top/tube_top
	name = "Топ"
	underwear_name = "tube top"
	icon_state = "tubetop"
	has_color = TRUE
