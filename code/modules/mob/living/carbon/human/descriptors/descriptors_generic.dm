/datum/mob_descriptor/height
	name = "высота"
	standalone_value_descriptors = list(
		"очень короткий",
		"короткий",
		"среднего роста",
		"высокий",
		"очень высокий"
		)
	comparative_value_descriptor_equivalent = "примерно того-же роста"
	comparative_value_descriptors_smaller = list(
		"слегка короче вас",
		"короче вас",
		"в разы короче вас",
		"низкий и незначительный по сравнению с вами"
		)
	comparative_value_descriptors_larger = list(
		"слегка выше вас",
		"выше вас",
		"в разы выше вас",
		"Гуливер, по сравнению с вами"
		)

/datum/mob_descriptor/build
	name = "строение"
	comparative_value_descriptor_equivalent = "примерно того-же строения"
	standalone_value_descriptors = list(
		"очень хилый",
		"хилый",
		"среднего строения",
		"хорошо-построенный",
		"мускулистый"
		)
	comparative_value_descriptors_smaller = list(
		"слегка хилее вас",
		"хилее вас",
		"намного хилее вас",
		"доходяга, по сравнению с вами"
		)
	comparative_value_descriptors_larger = list(
		"слегка лучше построен, чем вы",
		"лучше построен, чем вы",
		"в разы лучше выстроен, чем вы",
		"затмевающий вас"
		)
