/datum/preferences
	var/list/flavor_texts        = list()
	var/list/flavour_texts_robot = list()

/datum/category_item/player_setup_item/physical/flavor
	name = "Flavor"
	sort_order = 4

/datum/category_item/player_setup_item/physical/flavor/load_character(var/savefile/S)
	from_save(S["flavor_texts_general"], pref.flavor_texts["general"])
	from_save(S["flavor_texts_head"], pref.flavor_texts["head"])
	from_save(S["flavor_texts_face"], pref.flavor_texts["face"])
	from_save(S["flavor_texts_eyes"], pref.flavor_texts["eyes"])
	from_save(S["flavor_texts_torso"], pref.flavor_texts["torso"])
	from_save(S["flavor_texts_arms"], pref.flavor_texts["arms"])
	from_save(S["flavor_texts_hands"], pref.flavor_texts["hands"])
	from_save(S["flavor_texts_legs"], pref.flavor_texts["legs"])
	from_save(S["flavor_texts_feet"], pref.flavor_texts["feet"])

	//Flavour text for robots.
	from_save(S["flavour_texts_robot_Default"], pref.flavour_texts_robot["Default"])
	for(var/module in SSrobots.all_module_names)
		from_save(S["flavour_texts_robot_[module]"], pref.flavour_texts_robot[module])

/datum/category_item/player_setup_item/physical/flavor/save_character(var/savefile/S)
	to_save(S["flavor_texts_general"], pref.flavor_texts["general"])
	to_save(S["flavor_texts_head"], pref.flavor_texts["head"])
	to_save(S["flavor_texts_face"], pref.flavor_texts["face"])
	to_save(S["flavor_texts_eyes"], pref.flavor_texts["eyes"])
	to_save(S["flavor_texts_torso"], pref.flavor_texts["torso"])
	to_save(S["flavor_texts_arms"], pref.flavor_texts["arms"])
	to_save(S["flavor_texts_hands"], pref.flavor_texts["hands"])
	to_save(S["flavor_texts_legs"], pref.flavor_texts["legs"])
	to_save(S["flavor_texts_feet"], pref.flavor_texts["feet"])

	to_save(S["flavour_texts_robot_Default"], pref.flavour_texts_robot["Default"])
	for(var/module in SSrobots.all_module_names)
		to_save(S["flavour_texts_robot_[module]"], pref.flavour_texts_robot[module])

/datum/category_item/player_setup_item/physical/flavor/sanitize_character()
	if(!istype(pref.flavor_texts))        pref.flavor_texts = list()
	if(!istype(pref.flavour_texts_robot)) pref.flavour_texts_robot = list()

/datum/category_item/player_setup_item/physical/flavor/content(var/mob/user)
	. += "<b>Особенности:</b><br>"
	. += "<a href='?src=\ref[src];flavor_text=open'>Назначить Особенности</a><br/>"
	. += "<a href='?src=\ref[src];flavour_text_robot=open'>Назначить Особенности Робота</a><br/>"

/datum/category_item/player_setup_item/physical/flavor/OnTopic(var/href,var/list/href_list, var/mob/user)
	if(href_list["flavor_text"])
		switch(href_list["flavor_text"])
			if("open")
			if("general")
				var/msg = sanitize(input(usr,"Напишите обощённое описание своего персонажа, оно будет показываться вне зависимости от ситуации или одежды. Не включайте сюда OOC информацию.","Особенности",html_decode(pref.flavor_texts[href_list["flavor_text"]])) as message, extra = 0)
				if(CanUseTopic(user))
					pref.flavor_texts[href_list["flavor_text"]] = msg
			else
				var/msg = sanitize(input(usr,"Назначить Особенности для [href_list["flavor_text"]].","Особенности",html_decode(pref.flavor_texts[href_list["flavor_text"]])) as message, extra = 0)
				if(CanUseTopic(user))
					pref.flavor_texts[href_list["flavor_text"]] = msg
		SetFlavorText(user)
		return TOPIC_HANDLED

	else if(href_list["flavour_text_robot"])
		switch(href_list["flavour_text_robot"])
			if("open")
			if("Default")
				var/msg = sanitize(input(usr,"Напишите обощённое описание своего юнита, оно будет показываться вне зависимости от модуля.","Особенности",html_decode(pref.flavour_texts_robot["Default"])) as message, extra = 0)
				if(CanUseTopic(user))
					pref.flavour_texts_robot[href_list["flavour_text_robot"]] = msg
			else
				var/msg = sanitize(input(usr,"Напишите обощённое описание своего юнита со слежующим модулем: [href_list["flavour_text_robot"]]. Если оставить это поле пустым, то будет показываться стандартное описание.","Особенности",html_decode(pref.flavour_texts_robot[href_list["flavour_text_robot"]])) as message, extra = 0)
				if(CanUseTopic(user))
					pref.flavour_texts_robot[href_list["flavour_text_robot"]] = msg
		SetFlavourTextRobot(user)
		return TOPIC_HANDLED

	return ..()

/datum/category_item/player_setup_item/physical/flavor/proc/SetFlavorText(mob/user)
	var/HTML = "<meta charset='UTF-8'><body>"
	HTML += "<tt><center>"
	HTML += "<b>Обозначить Особенности</b> <hr />"
	HTML += "<br></center>"
	HTML += "<a href='?src=\ref[src];flavor_text=general'>Общие:</a> "
	HTML += TextPreview(pref.flavor_texts["general"])
	HTML += "<br>"
	HTML += "<a href='?src=\ref[src];flavor_text=head'>Голова:</a> "
	HTML += TextPreview(pref.flavor_texts["head"])
	HTML += "<br>"
	HTML += "<a href='?src=\ref[src];flavor_text=face'>Лицо:</a> "
	HTML += TextPreview(pref.flavor_texts["face"])
	HTML += "<br>"
	HTML += "<a href='?src=\ref[src];flavor_text=eyes'>Глаза:</a> "
	HTML += TextPreview(pref.flavor_texts["eyes"])
	HTML += "<br>"
	HTML += "<a href='?src=\ref[src];flavor_text=torso'>Тело:</a> "
	HTML += TextPreview(pref.flavor_texts["torso"])
	HTML += "<br>"
	HTML += "<a href='?src=\ref[src];flavor_text=arms'>Руки:</a> "
	HTML += TextPreview(pref.flavor_texts["arms"])
	HTML += "<br>"
	HTML += "<a href='?src=\ref[src];flavor_text=hands'>Кисти:</a> "
	HTML += TextPreview(pref.flavor_texts["hands"])
	HTML += "<br>"
	HTML += "<a href='?src=\ref[src];flavor_text=legs'>Ноги:</a> "
	HTML += TextPreview(pref.flavor_texts["legs"])
	HTML += "<br>"
	HTML += "<a href='?src=\ref[src];flavor_text=feet'>Стопы:</a> "
	HTML += TextPreview(pref.flavor_texts["feet"])
	HTML += "<br>"
	HTML += "<hr />"
	HTML += "<tt>"
	show_browser(user, HTML, "window=flavor_text;size=430x300")
	return

/datum/category_item/player_setup_item/physical/flavor/proc/SetFlavourTextRobot(mob/user)
	var/HTML = "<meta charset='UTF-8'><body>"
	HTML += "<tt><center>"
	HTML += "<b>SОбозначить Особенности Робота</b> <hr />"
	HTML += "<br></center>"
	HTML += "<a href='?src=\ref[src];flavour_text_robot=Default'>Стандартные:</a> "
	HTML += TextPreview(pref.flavour_texts_robot["Default"])
	HTML += "<hr />"
	for(var/module in SSrobots.all_module_names)
		HTML += "<a href='?src=\ref[src];flavour_text_robot=[module]'>[module]:</a> "
		HTML += TextPreview(pref.flavour_texts_robot[module])
		HTML += "<br>"
	HTML += "<hr />"
	HTML += "<tt>"
	show_browser(user, HTML, "window=flavour_text_robot;size=430x300")
	return
