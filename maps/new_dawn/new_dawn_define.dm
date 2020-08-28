/datum/map/new_dawn
	name = "Рассвет"
	full_name = "Новый Рассвет"
	path = "new_dawn"
	flags = MAP_HAS_BRANCH | MAP_HAS_RANK
	config_path = "config/new_dawn_config.txt"

	station_levels = list(1,2) // I'm not sure if it's necessary.
	admin_levels = list(3,4)
	empty_levels = list(9)
	accessible_z_levels = list("1"=1,"2"=1,"9"=30)
	overmap_size = 35
	overmap_event_areas = 34
	usable_email_tlds = list("new_dawn.ec.scg", "new_dawn.fleet.mil", "freemail.net", "new_dawn.scg")

	allowed_spawns = list("Cryogenic Storage", "Cyborg Storage")
	default_spawn = "Cryogenic Storage"

	station_name  = "Новый рассвет"
	station_short = "Рассвет"
	dock_name     = "СНР"
	boss_name     = "Экспедиционное командование"
	boss_short    = "Командование"
	company_name  = "Центральное Правительство Сола"
	company_short = "СолПрав"

	map_admin_faxes = list(
		"Командование Экспедиционного Корпуса",
		"Логистика Экспедиционного Корпуса",
		"Офис Главы ОЭК",
		"Внутренние Дела ОЭК",
		"ФПС Территориальная Поддержка",
		"ФПС Спец Расследования",
		"ФПС Поимка Беглецов",
		"Сол, Командование Флота",
		"Бюро Дипломатических Дел",
		"Бюро Экстренного Реагирования",
		"Защищённая Служба Маршрутизации"
	)
	//These should probably be moved into the evac controller...
	shuttle_docked_message = "Attention all hands: Jump preparation complete. The bluespace drive is now spooling up, secure all stations for departure. Time to jump: approximately %ETD%."
	shuttle_leaving_dock = "Attention all hands: Jump initiated, exiting bluespace in %ETA%."
	shuttle_called_message = "Attention all hands: Jump sequence initiated. Transit procedures are now in effect. Jump in %ETA%."
	shuttle_recall_message = "Attention all hands: Jump sequence aborted, return to normal operating conditions."

	evac_controller_type = /datum/evacuation_controller/starship

	default_law_type = /datum/ai_laws/solgov
	use_overmap = 1
	num_exoplanets = 1

	away_site_budget = 3
	id_hud_icons = 'maps/new_dawn/icons/assignment_hud.dmi'
