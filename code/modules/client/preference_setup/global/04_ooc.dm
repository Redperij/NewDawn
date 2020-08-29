/datum/preferences
	// OOC Metadata:
	var/list/ignored_players = list()

/datum/category_item/player_setup_item/player_global/ooc
	name = "OOC"
	sort_order = 4

/datum/category_item/player_setup_item/player_global/ooc/load_preferences(var/savefile/S)
	from_save(S["ignored_players"], pref.ignored_players)


/datum/category_item/player_setup_item/player_global/ooc/save_preferences(var/savefile/S)
	to_save(S["ignored_players"], pref.ignored_players)


/datum/category_item/player_setup_item/player_global/ooc/sanitize_preferences()
	if(!islist(pref.ignored_players))
		pref.ignored_players = list()

/datum/category_item/player_setup_item/player_global/ooc/content(var/mob/user)
	. += "<b>OOC:</b><br>"
	. += "Игнорируемые Игроки<br>"
	for(var/ignored_player in pref.ignored_players)
		. += "[ignored_player] (<a href='?src=\ref[src];unignore_player=[ignored_player]'>Перестать Игнорировать</a>)<br>"
	. += "(<a href='?src=\ref[src];ignore_player=1'>Игнорировать Игрока</a>)"

/datum/category_item/player_setup_item/player_global/ooc/OnTopic(var/href,var/list/href_list, var/mob/user)
	if(href_list["unignore_player"])
		pref.ignored_players -= href_list["unignore_player"]
		return TOPIC_REFRESH

	if(href_list["ignore_player"])
		var/player_to_ignore = sanitize(ckey(input(user, "Кого вы хотите игнорировать?","Игнорировать") as null|text))
		//input() sleeps while waiting for the user to respond, so we need to check CanUseTopic() again here
		if(player_to_ignore && CanUseTopic(user))
			pref.ignored_players |= player_to_ignore
		return TOPIC_REFRESH

	return ..()
