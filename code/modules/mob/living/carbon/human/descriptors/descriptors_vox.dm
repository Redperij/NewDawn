/datum/mob_descriptor/vox_markings
	name = "отметки на шее"
	chargen_label = "отметки на шее (ранг)"
	skip_species_mention = TRUE
	standalone_value_descriptors = list(
		"крайне простые",
		"незатейливые",
		"обычные",
		"сложные",
		"обезкураживающе комплексные"
		)
	chargen_value_descriptors = list(
		"слуга"  =     1,
		"рабочий" =      2,
		"пушечное мясо" = 3,
		"рэйдер" =        4,
		"лидер" =        5
		)
	comparative_value_descriptor_equivalent = "такой-же важности, как и ваши"
	comparative_value_descriptors_smaller = list(
		"слегка менее важные, нежели ваши",
		"менее важные, нежели ваши",
		"незначительны и не достоины вашего внимания"
		)
	comparative_value_descriptors_larger = list(
		"слегка более важные, нежели ваши",
		"более важные, нежели ваши",
		"означающие необходимость вашего повиновения и уважения"
		)

/datum/mob_descriptor/vox_markings/get_first_person_message_start()
	. = "Ваши отметки на шее:"

/datum/mob_descriptor/vox_markings/get_third_person_message_start(var/datum/gender/my_gender)
	. = "[my_gender.Ego] отметки на шее:"
