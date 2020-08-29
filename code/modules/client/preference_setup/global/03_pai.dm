/datum/category_item/player_setup_item/player_global/pai
	name = "pAI"
	sort_order = 3

	var/icon/pai_preview
	var/datum/paiCandidate/candidate
	var/icon/bgstate = MATERIAL_STEEL
	var/list/bgstate_options = list("FFF", MATERIAL_STEEL, "white")

/datum/category_item/player_setup_item/player_global/pai/load_preferences(var/savefile/S)
	if(!candidate)
		candidate = new()

	if(!preference_mob())
		return

	candidate.savefile_load(preference_mob())

/datum/category_item/player_setup_item/player_global/pai/save_preferences(var/savefile/S)
	if(!candidate)
		return

	if(!preference_mob())
		return

	candidate.savefile_save(preference_mob())

/datum/category_item/player_setup_item/player_global/pai/content(var/mob/user)
	if(!candidate)
		candidate = new()
	if (!pai_preview)
		update_pai_preview(user)

	. += "<b>пИИ:</b><br>"
	if(!candidate)
		log_debug("[user] pAI prefs have a null candidate var.")
		return .
	. += "Имя: <a href='?src=\ref[src];option=name'>[candidate.name ? candidate.name : "Не Выставлено"]</a><br>"
	. += "Описание: <a href='?src=\ref[src];option=desc'>[candidate.description ? TextPreview(candidate.description, 40) : "Не Выставлено"]</a><br>"
	. += "Роль: <a href='?src=\ref[src];option=role'>[candidate.role ? TextPreview(candidate.role, 40) : "Не Выставлено"]</a><br>"
	. += "OOC Комментарии: <a href='?src=\ref[src];option=ooc'>[candidate.comments ? TextPreview(candidate.comments, 40) : "Не Выставлено"]</a><br>"
	. += "<div>Оболочка: <a href='?src=\ref[src];option=chassis'>[candidate.chassis]</a><br>"
	. += "<div>Глагол Говорить: <a href='?src=\ref[src];option=say'>[candidate.say_verb]</a><br>"
	. += "<table><tr style='vertical-align:top'><td><div class='statusDisplay'><center><img src=pai_preview.png width=[pai_preview.Width()] height=[pai_preview.Height()]></center><a href='?src=\ref[src];option=cyclebg'>Изменить Фон</a></div>"
	. += "</td></tr></table>"

/datum/category_item/player_setup_item/player_global/pai/OnTopic(var/href,var/list/href_list, var/mob/user)
	if(href_list["option"])
		var/t
		switch(href_list["option"])
			if("name")
				t = sanitizeName(input(user, "Введите имя своего пИИ", "Глобальная Настройка", candidate.name) as text|null, MAX_NAME_LEN, 1)
				if(t && CanUseTopic(user))
					candidate.name = t
			if("desc")
				t = input(user, "Введите описание для своего пИИ", "Глобальная Настройка", html_decode(candidate.description)) as message|null
				if(!isnull(t) && CanUseTopic(user))
					candidate.description = sanitize(t)
			if("role")
				t = input(user, "Введите роль для своего пИИ", "Глобальная Настройка", html_decode(candidate.role)) as text|null
				if(!isnull(t) && CanUseTopic(user))
					candidate.role = sanitize(t)
			if("ooc")
				t = input(user, "Введите любой OOC комментарий", "Глобальная Настройка", html_decode(candidate.comments)) as message
				if(!isnull(t) && CanUseTopic(user))
					candidate.comments = sanitize(t)
			if("chassis")
				candidate.chassis = input(user,"Как будет выглядеть ваша мобильная оболочка?") as null|anything in GLOB.possible_chassis
				update_pai_preview(user)
			if("say")
				candidate.say_verb = input(user,"Какой глагол будет использоваться для вашей речи?") as null|anything in GLOB.possible_say_verbs
			if("cyclebg")
				bgstate = next_in_list(bgstate, bgstate_options)
				update_pai_preview(user)

		return TOPIC_REFRESH

	return ..()

/datum/category_item/player_setup_item/player_global/pai/proc/update_pai_preview(var/mob/user)
	pai_preview = icon('icons/effects/128x48.dmi', bgstate)
	var/icon/pai = icon('icons/mob/pai.dmi', GLOB.possible_chassis[candidate.chassis], NORTH)
	pai_preview.Scale(48+32, 16+32)

	pai_preview.Blend(pai, ICON_OVERLAY, 25, 22)
	pai = icon('icons/mob/pai.dmi', GLOB.possible_chassis[candidate.chassis], WEST)
	pai_preview.Blend(pai, ICON_OVERLAY, 1, 9)
	pai = icon('icons/mob/pai.dmi', GLOB.possible_chassis[candidate.chassis], SOUTH)
	pai_preview.Blend(pai, ICON_OVERLAY, 49, 5)

	pai_preview.Scale(pai_preview.Width() * 2, pai_preview.Height() * 2)

	send_rsc(user, pai_preview, "pai_preview.png")