GLOBAL_VAR_CONST(PREF_YES, "Да")
GLOBAL_VAR_CONST(PREF_NO, "Нет")
GLOBAL_VAR_CONST(PREF_ALL_SPEECH, "Все Разговоры")
GLOBAL_VAR_CONST(PREF_NEARBY, "Рядом")
GLOBAL_VAR_CONST(PREF_ALL_EMOTES, "Все Эмоуты")
GLOBAL_VAR_CONST(PREF_ALL_CHATTER, "Все Передачи")
GLOBAL_VAR_CONST(PREF_SHORT, "Короткий")
GLOBAL_VAR_CONST(PREF_LONG, "Длинный")
GLOBAL_VAR_CONST(PREF_SHOW, "Показывать")
GLOBAL_VAR_CONST(PREF_HIDE, "Скрывать")
GLOBAL_VAR_CONST(PREF_FANCY, "Классный")
GLOBAL_VAR_CONST(PREF_PLAIN, "Плоский")
GLOBAL_VAR_CONST(PREF_PRIMARY, "Основной")
GLOBAL_VAR_CONST(PREF_ALL, "Все")
GLOBAL_VAR_CONST(PREF_OFF, "Выключен")
GLOBAL_VAR_CONST(PREF_BASIC, "Стандартный")
GLOBAL_VAR_CONST(PREF_FULL, "Полный")
GLOBAL_VAR_CONST(PREF_MIDDLE_CLICK, "скм")
GLOBAL_VAR_CONST(PREF_ALT_CLICK, "alt клик")
GLOBAL_VAR_CONST(PREF_CTRL_CLICK, "ctrl клик")
GLOBAL_VAR_CONST(PREF_CTRL_SHIFT_CLICK, "ctrl shift клик")
GLOBAL_VAR_CONST(PREF_HEAR, "Слышать")
GLOBAL_VAR_CONST(PREF_SILENT, "Беззвучные")
GLOBAL_VAR_CONST(PREF_SHORTHAND, "Сокращение")
GLOBAL_VAR_CONST(PREF_NEVER, "Никогда")
GLOBAL_VAR_CONST(PREF_NON_ANTAG, "Только Не Антаг")
GLOBAL_VAR_CONST(PREF_ALWAYS, "Всегда")

var/list/_client_preferences
var/list/_client_preferences_by_key
var/list/_client_preferences_by_type

/proc/get_client_preferences()
	if(!_client_preferences)
		_client_preferences = list()
		for(var/ct in subtypesof(/datum/client_preference))
			var/datum/client_preference/client_type = ct
			if(initial(client_type.description))
				_client_preferences += new client_type()
	return _client_preferences

/proc/get_client_preference(var/datum/client_preference/preference)
	if(istype(preference))
		return preference
	if(ispath(preference))
		return get_client_preference_by_type(preference)
	return get_client_preference_by_key(preference)

/proc/get_client_preference_by_key(var/preference)
	if(!_client_preferences_by_key)
		_client_preferences_by_key = list()
		for(var/ct in get_client_preferences())
			var/datum/client_preference/client_pref = ct
			_client_preferences_by_key[client_pref.key] = client_pref
	return _client_preferences_by_key[preference]

/proc/get_client_preference_by_type(var/preference)
	if(!_client_preferences_by_type)
		_client_preferences_by_type = list()
		for(var/ct in get_client_preferences())
			var/datum/client_preference/client_pref = ct
			_client_preferences_by_type[client_pref.type] = client_pref
	return _client_preferences_by_type[preference]

/datum/client_preference
	var/description
	var/key
	var/list/options = list(GLOB.PREF_YES, GLOB.PREF_NO)
	var/default_value

/datum/client_preference/New()
	. = ..()

	if(!default_value)
		default_value = options[1]

/datum/client_preference/proc/may_set(client/given_client)
	return TRUE

/datum/client_preference/proc/changed(var/mob/preference_mob, var/new_value)
	return

/*********************
* Player Preferences *
*********************/

/datum/client_preference/play_admin_midis
	description ="Админские миди"
	key = "SOUND_MIDI"

/datum/client_preference/play_lobby_music
	description ="Музыка в лобби"
	key = "SOUND_LOBBY"

/datum/client_preference/play_lobby_music/changed(var/mob/preference_mob, var/new_value)
	if(new_value == GLOB.PREF_YES)
		if(isnewplayer(preference_mob))
			GLOB.using_map.lobby_track.play_to(preference_mob)
	else
		sound_to(preference_mob, sound(null, repeat = 0, wait = 0, volume = 85, channel = GLOB.lobby_sound_channel))

/datum/client_preference/play_ambiance
	description ="Звуки окружения"
	key = "SOUND_AMBIENCE"

/datum/client_preference/play_ambiance/changed(var/mob/preference_mob, var/new_value)
	if(new_value == GLOB.PREF_NO)
		sound_to(preference_mob, sound(null, repeat = 0, wait = 0, volume = 0, channel = GLOB.lobby_sound_channel))
		sound_to(preference_mob, sound(null, repeat = 0, wait = 0, volume = 0, channel = GLOB.ambience_sound_channel))

/datum/client_preference/ghost_ears
	description ="Уши Призрака"
	key = "CHAT_GHOSTEARS"
	options = list(GLOB.PREF_ALL_SPEECH, GLOB.PREF_NEARBY)

/datum/client_preference/ghost_sight
	description ="Зрение Призрака"
	key = "CHAT_GHOSTSIGHT"
	options = list(GLOB.PREF_ALL_EMOTES, GLOB.PREF_NEARBY)

/datum/client_preference/ghost_radio
	description ="Радио Призрака"
	key = "CHAT_GHOSTRADIO"
	options = list(GLOB.PREF_ALL_CHATTER, GLOB.PREF_NEARBY)

/datum/client_preference/language_display
	description = "Отображение Названий Языков"
	key = "LANGUAGE_DISPLAY"
	options = list(GLOB.PREF_SHORTHAND, GLOB.PREF_FULL, GLOB.PREF_OFF)

/datum/client_preference/ghost_follow_link_length
	description ="Ссылки на Следование для Призрака"
	key = "CHAT_GHOSTFOLLOWLINKLENGTH"
	options = list(GLOB.PREF_SHORT, GLOB.PREF_LONG)

/datum/client_preference/chat_tags
	description ="Метки Чата"
	key = "CHAT_SHOWICONS"
	options = list(GLOB.PREF_SHOW, GLOB.PREF_HIDE)

/datum/client_preference/show_typing_indicator
	description ="Индикатор Набора Текста"
	key = "SHOW_TYPING"
	options = list(GLOB.PREF_SHOW, GLOB.PREF_HIDE)

/datum/client_preference/show_typing_indicator/changed(var/mob/preference_mob, var/new_value)
	if(new_value == GLOB.PREF_HIDE)
		preference_mob.remove_typing_indicator()

/datum/client_preference/show_ooc
	description ="OOC Чат"
	key = "CHAT_OOC"
	options = list(GLOB.PREF_SHOW, GLOB.PREF_HIDE)

/datum/client_preference/show_aooc
	description ="AOOC Чат"
	key = "CHAT_AOOC"
	options = list(GLOB.PREF_SHOW, GLOB.PREF_HIDE)

/datum/client_preference/show_looc
	description ="LOOC Чат"
	key = "CHAT_LOOC"
	options = list(GLOB.PREF_SHOW, GLOB.PREF_HIDE)

/datum/client_preference/show_dsay
	description ="Чат Мёртвых"
	key = "CHAT_DEAD"
	options = list(GLOB.PREF_SHOW, GLOB.PREF_HIDE)

/datum/client_preference/show_progress_bar
	description ="Ползунок Прогресса"
	key = "SHOW_PROGRESS"
	options = list(GLOB.PREF_SHOW, GLOB.PREF_HIDE)

/datum/client_preference/browser_style
	description = "Фэйковый стиль браузера NanoUI"
	key = "BROWSER_STYLED"
	options = list(GLOB.PREF_FANCY, GLOB.PREF_PLAIN)

/datum/client_preference/autohiss
	description = "Автоматическое Коверканье Речи"
	key = "AUTOHISS"
	options = list(GLOB.PREF_OFF, GLOB.PREF_BASIC, GLOB.PREF_FULL)

/datum/client_preference/hardsuit_activation
	description = "Клавиша для Активирования Модуля Рига"
	key = "HARDSUIT_ACTIVATION"
	options = list(GLOB.PREF_MIDDLE_CLICK, GLOB.PREF_CTRL_CLICK, GLOB.PREF_ALT_CLICK, GLOB.PREF_CTRL_SHIFT_CLICK)

/datum/client_preference/holster_on_intent
	description = "Доставание Оружия с Оглядкой на Намерение"
	key = "HOLSTER_ON_INTENT"

/datum/client_preference/show_credits
	description = "Показывать Титры"
	key = "SHOW_CREDITS"

/datum/client_preference/show_ckey_credits
	description = "Показывать Ckey в Титрах/Списке Спец Ролей"
	key = "SHOW_CKEY_CREDITS"
	options = list(GLOB.PREF_HIDE, GLOB.PREF_SHOW)

/datum/client_preference/play_instruments
	description ="Игра на Инструментах"
	key = "SOUND_INSTRUMENTS"

/datum/client_preference/give_personal_goals
	description = "Получать Персональные Цели"
	key = "PERSONAL_GOALS"
	options = list(GLOB.PREF_NEVER, GLOB.PREF_NON_ANTAG, GLOB.PREF_ALWAYS)

/datum/client_preference/show_department_goals
	description = "Показывать Цели Департамента"
	key = "DEPT_GOALS"
	options = list(GLOB.PREF_SHOW, GLOB.PREF_HIDE)

/datum/client_preference/examine_messages
	description ="Сообщения при Осмотре"
	key = "EXAMINE_MESSAGES"
	options = list(GLOB.PREF_SHOW, GLOB.PREF_HIDE)

/datum/client_preference/goonchat
	description = "Использовать Goon Чат"
	key = "USE_GOONCHAT"

/datum/client_preference/goonchat/changed(var/mob/preference_mob, var/new_value)
	if(preference_mob && preference_mob.client)
		var/client/C = preference_mob.client
		if(new_value == GLOB.PREF_YES)
			C.chatOutput.loaded = FALSE
			C.chatOutput.start()
		else
			C.force_white_theme()
			winset(C, "output", "is-visible=true;is-disabled=false")
			winset(C, "browseroutput", "is-visible=false")

/********************
* General Staff Preferences *
********************/

/datum/client_preference/staff
	var/flags

/datum/client_preference/staff/may_set(client/given_client)
	if(ismob(given_client))
		var/mob/M = given_client
		given_client = M.client
	if(!given_client)
		return FALSE
	if(flags)
		return check_rights(flags, 0, given_client)
	else
		return given_client && given_client.holder

/datum/client_preference/staff/show_chat_prayers
	description = "Молитвы в Чате"
	key = "CHAT_PRAYER"
	options = list(GLOB.PREF_SHOW, GLOB.PREF_HIDE)

/datum/client_preference/staff/play_adminhelp_ping
	description = "Админхэлпы"
	key = "SOUND_ADMINHELP"
	options = list(GLOB.PREF_HEAR, GLOB.PREF_SILENT)

/datum/client_preference/staff/show_rlooc
	description ="Весь LOOC Чат"
	key = "CHAT_RLOOC"
	options = list(GLOB.PREF_SHOW, GLOB.PREF_HIDE)

/********************
* Admin Preferences *
********************/

/datum/client_preference/staff/show_attack_logs
	description = "Attack Log Messages"
	key = "CHAT_ATTACKLOGS"
	options = list(GLOB.PREF_SHOW, GLOB.PREF_HIDE)
	flags = R_ADMIN
	default_value = GLOB.PREF_HIDE

/********************
* Debug Preferences *
********************/

/datum/client_preference/staff/show_debug_logs
	description = "Debug Log Messages"
	key = "CHAT_DEBUGLOGS"
	options = list(GLOB.PREF_SHOW, GLOB.PREF_HIDE)
	default_value = GLOB.PREF_HIDE
	flags = R_ADMIN|R_DEBUG