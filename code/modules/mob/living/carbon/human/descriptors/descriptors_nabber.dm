/datum/mob_descriptor/body_length
	name = "длина тела"
	comparative_value_descriptor_equivalent = "примерно той-же длины, что и вы"
	standalone_value_descriptors = list(
		"короткий",
		"коротенький",
		"средней длины",
		"длинноватый",
		"длинный"
		)
	comparative_value_descriptors_smaller = list(
		"слегка короче вас",
		"короче вас",
		"намного короче вас",
		"незначительный по сравнению с вами"
		)
	comparative_value_descriptors_larger = list(
		"слегка длиннее вас",
		"длиннее вас",
		"намного длиннее вас",
		"в два раза больше вас"
		)


/datum/mob_descriptor/body_length/get_first_person_message_start()
	return "Ваше тело"

/datum/mob_descriptor/body_length/get_third_person_message_start(var/datum/gender/my_gender)
	return "[my_gender.Ego] тело"