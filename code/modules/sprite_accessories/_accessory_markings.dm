//body markings

/datum/sprite_accessory/marking
	icon = 'icons/mob/human_races/species/default_markings.dmi'
	do_colouration = 1 //Almost all of them have it, COLOR_ADD
	//Empty list is unrestricted. Should only restrict the ones that make NO SENSE on other species,
	//like IPC optics overlay stuff.
	species_allowed = null
	var/layer_blend = ICON_OVERLAY
	var/body_parts = list() //A list of bodyparts this covers, in organ_tag defines
	//Reminder: BP_L_FOOT,BP_R_FOOT,BP_L_LEG,BP_R_LEG,BP_L_ARM,BP_R_ARM,BP_L_HAND,BP_R_HAND,BP_CHEST,BP_GROIN,BP_HEAD
	var/draw_target = MARKING_TARGET_SKIN
	var/list/disallows = list() //A list of other marking types to ban from adding when this marking is already added

/datum/sprite_accessory/marking/tat_hive
	name = "Татуировка (Улей, Спина)"
	icon_state = "tat_hive"
	body_parts = list(BP_CHEST)

/datum/sprite_accessory/marking/tat_nightling
	name = "Татуировка (Найтлинг, Спина)"
	icon_state = "tat_nightling"
	body_parts = list(BP_CHEST)

/datum/sprite_accessory/marking/tat_campbell
	name = "Татуировка (Кэмпбелл, П.Рука)"
	icon_state = "tat_campbell"
	body_parts = list(BP_R_ARM)

/datum/sprite_accessory/marking/tat_campbell/left
	name = "Татуировка (Кэмпбелл, Л.Рука)"
	body_parts = list(BP_L_ARM)

/datum/sprite_accessory/marking/tat_tiger1
	name = "Татуировка (Тигриные Полоски, Тело)"
	icon_state = "tat_tiger"
	body_parts = list(BP_CHEST,BP_GROIN)

/datum/sprite_accessory/marking/tat_tiger_arm/left
	name = "Татуировка (Тигр Левая Рука)"
	icon_state = "tat_tiger"
	body_parts = list(BP_L_ARM)

/datum/sprite_accessory/marking/tat_tiger_arm/right
	name = "Татуировка (Тигр Правая Рука)"
	icon_state = "tat_tiger"
	body_parts = list(BP_R_ARM)

/datum/sprite_accessory/marking/tat_tiger_leg
	name = "Татуировка (Тигр Левая Нога)"
	icon_state = "tat_tiger"
	body_parts = list(BP_L_LEG)

/datum/sprite_accessory/marking/tat_tiger_leg/right
	name = "Татуировка (Тигр Правая Нога)"
	icon_state = "tat_tiger"
	body_parts = list(BP_R_LEG)

/datum/sprite_accessory/marking/tigerhead
	name = "Татуировка (Тигр Голова)"
	icon_state = "tigerhead"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/tat_bands_body
	name = "Татуировка (Полоски Тело)"
	icon_state = "bands"
	body_parts = list(BP_CHEST,BP_GROIN)

/datum/sprite_accessory/marking/tat_bands_arm/right
	name = "Татуировка (Полоски Правая Рука)"
	icon_state = "bands"
	body_parts = list(BP_R_ARM)

/datum/sprite_accessory/marking/tat_bands_arm/left
	name = "Татуировка (Полоски Левая Рука)"
	icon_state = "bands"
	body_parts = list(BP_L_ARM)

/datum/sprite_accessory/marking/tat_bands_hand/right
	name = "Татуировка (Полоски Правая Кисть)"
	icon_state = "bands"
	body_parts = list(BP_R_HAND)
/datum/sprite_accessory/marking/tat_bands_hand/left
	name = "Татуировка (Полоски Левая Кисть)"
	icon_state = "bands"
	body_parts = list(BP_L_HAND)
/datum/sprite_accessory/marking/tat_bands_leg/right
	name = "Татуировка (Полоски Правая Нога)"
	icon_state = "bands"
	body_parts = list(BP_R_LEG)
/datum/sprite_accessory/marking/tat_bands_leg/left
	name = "Татуировка (Полоски Левая Нога)"
	icon_state = "bands"
	body_parts = list(BP_L_LEG)