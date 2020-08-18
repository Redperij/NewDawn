/datum/map/new_dawn

	base_floor_type = /turf/simulated/floor/reinforced/airless
	base_floor_area = /area/maintenance/exterior

	post_round_safe_areas = list (
		/area/centcom,
		/area/shuttle/escape/centcom,
		/area/shuttle/escape_pod3/centcom,
		/area/shuttle/escape_pod4/centcom,
		/area/shuttle/escape_pod9/centcom,
		/area/shuttle/escape_pod10/centcom,
		/area/shuttle/transport1/centcom,
		/area/shuttle/administration/centcom,
		/area/shuttle/specops/centcom,
	)

//Halls
/area/hallway/central
	name = "\improper Центральный Коридор"
	icon_state = "centhall"

/area/hallway/central/north
	name = "\improper Северный Центральный Коридор"
	icon_state = "centhall"

/area/hallway/central/east
	name = "\improper Восточный Центральный Коридор"
	icon_state = "centhall"

/area/hallway/central/south
	name = "\improper Южный Центральный Коридор"
	icon_state = "centhall"

/area/hallway/central/west
	name = "\improper Западный Центральный Коридор"
	icon_state = "centhall"

/area/hallway/north
	name = "\improper Северный Коридор"
	icon_state = "northhall"

/area/hallway/north/dorms
	name = "\improper Коридор у Жилых Помещений"
	icon_state = "northhall"

/area/hallway/east
	name = "\improper Восточный Коридор"
	icon_state = "easthall"

/area/hallway/east/departure
	name = "\improper Отбытие"
	icon_state = "escape"

/area/hallway/south
	name = "\improper Южный Коридор"
	icon_state = "southhall"

/area/hallway/south/engineering
	name = "\improper Инженерный Коридор"
	icon_state = "southhall"

/area/hallway/west
	name = "\improper Западный Коридор"
	icon_state = "westhall"

/area/hallway/west/assistant
	name = "\improper Ассистентский Коридор"
	icon_state = "ashall"

/area/hallway/west/entry
	name = "\improper Прибытие"
	icon_state = "entry"

/area/hallway/west/guest
	name = "\improper Гостевой Коридор"
	icon_state = "guesthall"

//Maintenance
/area/maintenance/central
	name = "Центральные Тех-тоннели"
	icon_state = "maintcentral"

/area/maintenance/north
	name = "Северные Тех-тоннели"
	icon_state = "maintcentral"

/area/maintenance/north/brig
	name = "Тех-тоннели Брига"
	icon_state = "maint_security"

/area/maintenance/north/eva
	name = "Тех-тоннели Вкд"
	icon_state = "maint_eva"

/area/maintenance/east
	name = "Восточные Тех-тоннели"
	icon_state = "maintcentral"

/area/maintenance/east/dormitories
	name = "Тех-тоннели Жилых Помещений"
	icon_state = "maint_dormitory"

/area/maintenance/east/bar
	name = "Тех-тоннели бара"
	icon_state = "maint_bar"

/area/maintenance/east/library
	name = "Тех-тоннели библиотеки"
	icon_state = "maint_library"

/area/maintenance/east/research
	name = "Тех-тоннели Исследовательского Отдела"
	icon_state = "maint_research"

/area/maintenance/east/med
	name = "Тех-тоннели Медицинского Отдела"
	icon_state = "maint_research"

/area/maintenance/south
	name = "Южные Тех-тоннели"
	icon_state = "maintcentral"

/area/maintenance/south/engine
	name = "Тех-тоннели Реактора"
	icon_state = "maint_engine"

/area/maintenance/south/engineering
	name = "Инженерные Тех-тоннели"
	icon_state = "maint_engineering"

/area/maintenance/west
	name = "Западные Тех-тоннели"
	icon_state = "maintcentral"

/area/maintenance/west/cargo
	name = "Тех-тоннели Отдела Логистики"
	icon_state = "maint_cargo"

/area/maintenance/west/arrival
	name = "Тех-тоннели Прибытия"
	icon_state = "maint_arrival"

//Safe_rooms
/area/crew_quarters/safe_room
	name = "\improper Защищённое Помещение"
	icon_state = "crew_quarters"
	sound_env = SMALL_ENCLOSED
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED

/area/crew_quarters/safe_room/bridge
	name = "\improper Защищённое Помещение Мостика"

// Substations
/area/maintenance/substation
	name = "Подстанция"
	icon_state = "substation"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_engine_equip)

/area/maintenance/substation/rnd
	name = "Исследовательская Подстанция"

/area/maintenance/substation/medical
	name = "Медицинская Подстанция"

/area/maintenance/substation/bridge
	name = "Подстанция Мостика"

/area/maintenance/substation/cargo
	name = "Подстанция Отдела Логистики"

/area/maintenance/substation/arrival
	name = "Подстанция Прибытия"

/area/maintenance/substation/engineering
	name = "Инженерная Подстанция"

/area/maintenance/substation/atmos
	name = "Подстанция Атмоса"

/area/maintenance/substation/brig
	name = "Подстанция Брига"

/area/maintenance/substation/cryo
	name = "Подстанция Крио"

/area/maintenance/substation/dormitories
	name = "Подстанция Жилых Помещений"

/area/maintenance/substation/departure
	name = "Подстанция Отбытия"

/area/bridge/storage
	name = "\improper Склад Мостика"
	req_access = list(access_bridge)

// Shuttles
/area/shuttle/transport1/centcom
	icon_state = "shuttle"
	name = "\improper Транспортный Шаттл Цент-комма"

/area/shuttle/escape_shuttle/station
	name = "Спасательный Шаттл"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

//New Dawn large pods
/area/shuttle/escape_pod1/station
	name = "Спасательный Челнок Один"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

/area/shuttle/escape_pod2/station
	name = "Спасательный Челнок Два"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

/area/shuttle/escape_pod3/station
	name = "Спасательный Челнок Три"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

//New Dawn small pods

/area/shuttle/escape_pod4/station
	name = "Спасательный Челнок Четыре"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

/area/shuttle/escape_pod5/station
	name = "Спасательный Челнок Пять"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

/area/shuttle/escape_pod6/station
	name = "Спасательный Челнок Шесть"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

/area/shuttle/escape_pod7/station
	name = "Спасательный Челнок Семь"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

/area/shuttle/escape_pod8/station
	name = "Спасательный Челнок Восемь"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

/area/shuttle/escape_pod9/station
	name = "Спасательный Челнок Девять"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

//Charon

/area/exploration_shuttle/
	name = "\improper Харон"
	icon_state = "shuttlered"
	base_turf = /turf/simulated/floor/plating
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED

/area/exploration_shuttle/cockpit
	name = "\improper Харон - Рубка"
	req_access = list(access_expedition_shuttle)

/area/exploration_shuttle/atmos
	name = "\improper Харон - Отсек Атмоса"

/area/exploration_shuttle/power
	name = "\improper Харон - Машинный Отсек"

/area/exploration_shuttle/crew
	name = "\improper Харон - Отсек Команды"

/area/exploration_shuttle/cargo
	name = "\improper Харон - Грузовой Отсек"

/area/exploration_shuttle/airlock
	name = "\improper Харон - Шлюз"
/*
//Aquila

/area/aquila
	name = "\improper SEV Aquila"
	icon_state = "shuttlered"
	base_turf = /turf/simulated/floor/reinforced/airless
	requires_power = 1
	dynamic_lighting = 1
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED

/area/aquila/cockpit
	name = "\improper SEV Aquila - Cockpit"
	req_access = list(access_aquila)

/area/aquila/maintenance
	name = "\improper SEV Aquila - Maintenance"
	req_access = list(access_solgov_crew)

/area/aquila/storage
	name = "\improper SEV Aquila - Storage"
	req_access = list(access_solgov_crew)

/area/aquila/secure_storage
	name = "\improper SEV Aquila - Secure Storage"
	req_access = list(access_aquila)

/area/aquila/mess
	name = "\improper SEV Aquila - Mess Hall"

/area/aquila/passenger
	name = "\improper SEV Aquila - Passenger Compartment"

/area/aquila/medical
	name = "\improper SEV Aquila - Medical"

/area/aquila/head
	name = "\improper SEV Aquila - Head"

/area/aquila/airlock
	name = "\improper SEV Aquila - Airlock Compartment"
	req_access = list(access_solgov_crew)
*/
//Guppy

/area/guppy_hangar/start
	name = "\improper Гуппи"
	icon_state = "shuttlered"
	requires_power = 1
	dynamic_lighting = 1
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED
	req_access = list(access_guppy)


//Petrov

/area/shuttle/petrov
	name = "\improper СИС Петров"
	requires_power = 1
	dynamic_lighting = 1
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED
	req_access = list(access_petrov)

/area/shuttle/petrov/cell1
	name = "\improper СИС Петров - Камера Изоляции 1"
	icon_state = "shuttle"
/area/shuttle/petrov/cell2
	name = "\improper СИС Петров - Камера Изоляции 2"
	icon_state = "shuttlegrn"
/area/shuttle/petrov/cell3
	name = "\improper СИС Петров - Камера Изоляции 3"
	icon_state = "shuttle"

/area/shuttle/petrov/hallwaya
	name = "\improper СИС Петров - Коридор"
	icon_state = "escape"

/area/shuttle/petrov/security
	name = "\improper СИС Петров - Офис Охраны"
	icon_state = "checkpoint1"
	req_access = list(access_petrov_security)

/area/shuttle/petrov/rd
	icon_state = "heads_rd"
	name = "\improper СИС Петров - Офис Руководителя Исследований"
	icon_state = "head_quarters"
	req_access = list(access_petrov_rd)

/area/shuttle/petrov/cockpit
	name = "\improper СИС Петров - Рубка"
	icon_state = "shuttlered"
	req_access = list(access_petrov_helm)

/area/shuttle/petrov/maint
	name = "\improper СИС Петров - Обслуживание"
	icon_state = "engine"
	req_access = list(access_petrov_maint)

/area/shuttle/petrov/analysis
	name = "\improper СИС Петров - Анализ"
	icon_state = "devlab"
	req_access = list(access_petrov_analysis)

/area/shuttle/petrov/toxins
	name = "\improper СИС Петров - Токсины"
	icon_state = "toxstorage"
	req_access = list(access_petrov_toxins)

/area/shuttle/petrov/rnd
	name = "\improper СИС Петров - Изготовление"
	icon_state = "devlab"

/area/shuttle/petrov/isolation
	name = "\improper СИС Петров - Изолятор"
	icon_state = "xeno_lab"

/area/shuttle/petrov/phoron
	name = "\improper СИС Петров - Сублимация"
	icon_state = "toxstorage"
	req_access = list(access_petrov_phoron)

/area/shuttle/petrov/custodial
	name = "\improper СИС Петров - Камера Хранения"
	icon_state = "decontamination"

/area/shuttle/petrov/equipment
	name = "\improper СИС Петров - Склад Снаряжения"
	icon_state = "locker"

/area/shuttle/petrov/eva
	name = "\improper СИС Петров - ВКД"
	icon_state = "locker"

//Merchant
/area/shuttle/merchant/home
	name = "\improper Торговое Судно"
	icon_state = "shuttlegrn"
	req_access = list(access_merchant)
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED

// Command
/area/command/conference
	name = "Зал для Брифинга"
	icon_state = "head_quarters"
	sound_env = MEDIUM_SOFTFLOOR

/area/command/pathfinder
	name = "\improper Офис Первопроходца"
	icon_state = "head_quarters"
	sound_env = MEDIUM_SOFTFLOOR
	req_access = list(access_pathfinder)

/area/command/disperser
	name = "\improper Рассеиватель Заградительного Поля"
	icon_state = "disperser"
	req_access = list(access_brig)

/area/crew_quarters/heads
	icon_state = "heads"
	req_access = list(access_heads)

/area/crew_quarters/heads/cobed
	icon_state = "heads_cap"
	name = "\improper Командование - Каюта Командира"
	sound_env = MEDIUM_SOFTFLOOR
	req_access = list(access_captain)

/area/crew_quarters/heads/office/co
	icon_state = "heads_cap"
	name = "\improper Командование - Офис Командира"
	sound_env = MEDIUM_SOFTFLOOR
	req_access = list(access_captain)

/area/crew_quarters/heads/office/xo
	icon_state = "heads_hop"
	name = "\improper Командование - Офис Старпома"
	req_access = list(access_hop)

/area/crew_quarters/heads/office/rd
	icon_state = "heads_rd"
	name = "\improper Командование - Офис Руководителя Исследований"
	req_access = list(access_rd)

/area/crew_quarters/heads/office/cmo
	icon_state = "heads_cmo"
	name = "\improper Командование - Офис Главного Врача"
	req_access = list(access_cmo)

/area/crew_quarters/heads/office/ce
	icon_state = "heads_ce"
	name = "\improper Engineering - Офис Главного Инженера"
	req_access = list(access_ce)

/area/crew_quarters/heads/office/cos
	icon_state = "heads_hos"
	name = "\improper Командование - Офис Главы Службы Безопасности"
	req_access = list(access_hos)

/area/crew_quarters/heads/office/cl
	icon_state = "heads_cl"
	name = "\improper Командование - Офис Корпоративного Советника"
	req_access = list(access_liaison)

/area/crew_quarters/heads/office/cl/backroom
	icon_state = "heads_cl"
	name = "\improper Командование - Комната Исполнительных Помощников"
	req_access = list(access_liaison)

/area/crew_quarters/heads/office/sgr
	icon_state = "heads_sr"
	name = "\improper Командование - Офис Представителя СолПрава"
	req_access = list(access_representative)

// Engineering
/area/engineering/shieldbay //нужно?
	name = "Shield Bay" //tbt
	icon_state = "engineering"
	req_access = list(access_engine, access_engine_equip)

/area/engineering/bluespace //нужно?
	name = "Bluespace Drive Monitoring" //tbt
	icon_state = "engineering"
	color = COLOR_BLUE_GRAY
	req_access = list(list(access_engine_equip, access_heads), access_engine, access_maint_tunnels)

/area/engineering/bluespace/containment //нужно?
	name = "Bluespace Drive Containment" //tbt
	color = COLOR_BLUE_LIGHT

/area/engineering/atmos/aux
	name = "\improper Вспомогательное Атмосферное Помещение"
	icon_state = "atmos"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_atmospherics)

/area/engineering/hardstorage
	name = "\improper Инженерный Склад"
	icon_state = "engineering_storage"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_engine_equip)

/area/engineering/wastehandling
	name = "\improper Помещение для Отходов Реактора"
	icon_state = "engineering"
	req_access = list(access_engine)

//Vacant Areas
/area/vacant
	name = "\improper Свободная Зона"
	icon_state = "construction"

/area/vacant/prototype //нужно?
	req_access = list(access_engine)

/area/vacant/prototype/control //нужно?
	name = "\improper Prototype Fusion Reactor Control Room"
	icon_state = "engine_monitoring"

/area/vacant/prototype/engine //нужно?
	name = "\improper Prototype Fusion Reactor Chamber"
	icon_state = "firingrange"

/area/vacant/cargo
	name = "\improper Прихожая Отдела Логистики"
	icon_state = "quart"

// Storage
/area/storage/medical
	name = "Медицинский Склад"
	icon_state = "medbay4"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_medical)

// Supply

/area/quartermaster
	req_access = list(access_cargo)

/area/quartermaster/office
	name = "\improper Отдел Логистики"
	icon_state = "quartoffice"

/area/quartermaster/storage
	name = "\improper Склад для Поставок"
	icon_state = "quartstorage"
	sound_env = LARGE_ENCLOSED

/area/quartermaster/sorting
	name ="\improper Сортировочная"
	icon_state = "quartstorage"

/area/quartermaster/deckchief
	name = "\improper Офис Квартирмейстера"
	icon_state = "quart"
	req_access = list(access_qm)

/area/quartermaster/expedition
	name = "\improper Подготовка Экспедиции"
	icon_state = "mining"
	req_access = list(list(access_mining, access_nanotrasen, access_xenoarch))

/area/quartermaster/expedition/eva
	name = "\improper Шахтёрский ВКД"
	icon_state = "mining"
	req_access = list(list(access_mining, access_xenoarch))

/area/quartermaster/expedition/storage
	name = "\improper Шахтёрский Склад"
	icon_state = "mining"
	req_access = list(list(access_mining, access_explorer, access_xenoarch))

/area/quartermaster/expedition/atmos
	name = "\improper Склад Канистр в Ангаре"
	icon_state = "mining"
	req_access = list(list(access_mining, access_explorer, access_xenoarch))

/area/quartermaster/exploration
	name = "\improper Экспедиционное Снаряжение"
	icon_state = "exploration"
	req_access = list(list(access_explorer, access_pathfinder, access_pilot))

/area/quartermaster/exploration/eva
	name = "\improper Экспедиционный ВКД"
	icon_state = "exploration"
	req_access = list(list(access_explorer, access_pathfinder, access_pilot))

/area/quartermaster/exploration/ready_room
	name = "\improper Комната Брифинга Экспедиции"
	icon_state = "exploration"
	req_access = list(list(access_explorer, access_pathfinder, access_pilot))

/area/quartermaster/shuttlefuel
	name = "\improper Топливный Склад"
	icon_state = "toxstorage"
	req_access = list(list(access_hangar, access_cargo))

/area/quartermaster/hangar
	name = "\improper Ангар"
	icon_state = "hangar"
	sound_env = LARGE_ENCLOSED
	req_access = list(access_hangar)

/area/quartermaster/hangar/charon
	name = "\improper Ангар Харона"

/area/quartermaster/hangar/storage
	name = "\improper Ангарный Склад"

/area/quartermaster/hangar/smlvessels
	name = "\improper Ангар Малых Челноков"

// Research
/area/rnd/canister
	name = "\improper Хранилище Канистр в Исследовательском Отделе"
	icon_state = "toxstorage"

/area/rnd/development
	name = "\improper Лаборатория по Разработке"
	icon_state = "devlab"

/area/rnd/entry
	name = "\improper Вход в Исследовательский Отдел"
	icon_state = "decontamination"
	req_access = list()

/area/rnd/locker //нужно?
	name = "\improper Research Locker Room"
	icon_state = "locker"

/area/rnd/storage
	name = "\improper Склад Исследоватеского Отдела"
	icon_state = "storage"

/area/rnd/xenobiology/entry
	name = "\improper Вход в Ксенобиологию"
	icon_state = "xeno_lab"
	req_access = list() // This is a separate vestibule thing, needs low access.

// Crew areas
/area/crew_quarters/laundry
	name = "\improper Прачечная"
	icon_state = "laundry"

/area/crew_quarters/dorms
	name = "\improper Общие Спальни"
	icon_state = "dorms"

/area/crew_quarters/relax
	name = "\improper Комната для Отдыха"
	icon_state = "relax"

/area/crew_quarters/concert
	name = "\improper Концертный Зал"
	icon_state = "concert"

/area/crew_quarters/library
	name = "\improper Библиотека"
	icon_state = "library2"

/area/crew_quarters/bar
	name = "\improper Бар"
	icon_state = "bar"
	sound_env = LARGE_SOFTFLOOR
	req_access = list(access_bar)

/area/crew_quarters/gym
	name = "\improper Gym"
	icon_state = "fitness"

/area/crew_quarters/casino
	name = "\improper Казино"
	icon_state = "casino"

/area/crew_quarters/mess
	name = "\improper Столовая"
	icon_state = "cafeteria"

/area/crew_quarters/smoking
	name = "\improper Курилка"
	icon_state = "toilet"

/area/crew_quarters/caf_toilet
	name = "\improper Уборная"
	icon_state = "toilet"
	sound_env = SMALL_ENCLOSED

/area/crew_quarters/galley
	name = "\improper Кухня"
	icon_state = "kitchen"
	req_access = list(access_kitchen)

/area/crew_quarters/galleybackroom
	name = "\improper Кухонный Морозильник"
	icon_state = "kitchen"
	req_access = list(access_kitchen)

/area/crew_quarters/sleep/bunk //нужно?
	name = "\improper Барак"
	icon_state = "Sleep"
	sound_env = SMALL_SOFTFLOOR
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED

/area/crew_quarters/adherent
	name = "\improper Обслуживание Адхерантов"
	icon_state = "robotics"

/area/holocontrol
	name = "\improper Контроль Голопалубы"
	icon_state = "Holodeck"

/area/hydroponics/storage
	name = "\improper Гидропонное Хранилище"

// Tcomms
/area/tcommsat/storage
	name = "\improper Склад Телекоммов"
	icon_state = "tcomsatstore"

// Security

/area/security/prison
	name = "\improper СБ - Тюрьма"
	icon_state = "sec_prison"
	req_access = list(access_brig)

/area/security/prison/solitary
	name = "\improper СБ - Карцер"
	icon_state = "sec_prison"
	req_access = list(access_brig)

/area/security/prison/perma
	name = "\improper СБ - Помещение для Пожизненного Осуждённых"
	icon_state = "sec_prison"
	req_access = list(access_brig)

/area/security/prison/detention
	name = "\improper СБ - СИЗО"
	icon_state = "sec_prison"
	req_access = list(access_brig)

/area/security/prison/punishment
	name = "\improper СБ - Камеры Заключения"
	icon_state = "sec_prison"
	req_access = list(access_brig)

/area/security/bo
	name = "\improper СБ - Надзиратель"
	icon_state = "Warden"
	req_access = list(access_armory)

/area/security/armoury
	name = "\improper СБ - Оружейная"
	icon_state = "Warden"
	req_access = list(access_armory)

/area/security/detectives_office
	name = "\improper СБ - Офис Детектива"
	icon_state = "detective"
	sound_env = MEDIUM_SOFTFLOOR
	req_access = list(access_forensics_lockers)

/area/security/locker
	name = "\improper СБ - Подготовка"
	icon_state = "security"
	req_access = list(access_brig)

/area/security/evidence
	name = "\improper СБ - Хранилище Улик"
	icon_state = "security"
	req_access = list(access_brig)

/area/security/wing
	name = "\improper СБ - Центральное Крыло"
	icon_state = "security"
	req_access = list(access_brig)

/area/security/wing/west
	name = "\improper СБ - Западное Крыло"
	icon_state = "security"
	req_access = list(access_brig)

/area/security/wing/north
	name = "\improper СБ - Северное Крыло"
	icon_state = "security"
	req_access = list(access_brig)

/area/security/entrance
	name = "\improper СБ - Прихожая"
	icon_state = "security"

/area/security/court
	name = "\improper Суд"
	icon_state = "security"

/area/security/torture
	name = "\improper СБ - Пыточная"
	icon_state = "security"
	req_access = list(access_brig)

/area/security/interrogation
	name = "\improper СБ - Допросная"
	icon_state = "security"
	req_access = list(access_brig)

/area/security/meeting
	name = "\improper СБ - Комната для Свиданий"
	icon_state = "security"
	req_access = list(access_brig)

/area/security/rest
	name = "\improper СБ - Помещение для Отдыха"
	icon_state = "security"
	req_access = list(access_brig)

/area/security/latrine
	name = "\improper Гальюн"
	icon_state = "security"
	req_access = list(access_brig)

/area/security/teleport
	name = "\improper СБ - Телепортная"
	icon_state = "security"
	req_access = list(access_brig)

/area/security/gym
	name = "\improper СБ - Спортзал"
	icon_state = "fitness"
	req_access = list(access_brig)

/area/security/special_armory
	name = "\improper Спец Оружейная"
	icon_state = "security"
	req_access = list(access_brig)

// Medbay

/area/medical/equipstorage
	name = "\improper Медицинский Склад"
	icon_state = "medbay4"
	ambience = list('sound/ambience/signal.ogg')
	req_access = list(access_medical_equip)

/area/medical/infirmary
	name = "\improper Медицинский коридор"
	icon_state = "medbay"
	req_access = list(access_medical)

/area/medical/infirmreception
	name = "\improper Медицинская Прихожая"
	icon_state = "medbay2"
	ambience = list('sound/ambience/signal.ogg')
	req_access = list(access_medical)

/area/medical/locker
	name = "\improper Медицинское снаряжение"
	icon_state = "locker"
	req_access = list(access_medical_equip)

/area/crew_quarters/medical
	name = "\improper Медицинская Комната Отдыха"
	icon_state = "crew_quarters"
	req_access = list(access_medical)

/area/medical/subacute
	name = "\improper Палата"
	icon_state = "patients"

/area/medical/counselor
	name = "\improper Офис Психолога"
	icon_state = "medbay3"
	ambience = list('sound/ambience/signal.ogg')
	req_access = list(access_psychiatrist)
	sound_env = SMALL_SOFTFLOOR

/area/medical/assistant
	name = "\improper Дополнительный Медицинский Отсек"
	icon_state = "medbay3"
	ambience = list('sound/ambience/signal.ogg')
	sound_env = SMALL_SOFTFLOOR

/area/medical/washroom
	name = "\improper Медицинская Уборная"
	icon_state = "toilet"
	sound_env = SMALL_ENCLOSED
	req_access = list()

/area/chapel/crematorium
	name = "\improper Крематорий"
	icon_state = "chapel"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_crematorium)

// Shield Rooms
/area/shield //нужно?
	name = "\improper Shield Generator"
	icon_state = "engineering"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_engine_equip)

/area/shield/bridge //нужно?
	name = "\improper Bridge Shield Generator"

// Misc
/area/teleporter
	name = "\improper Телепортная"
	icon_state = "teleporter"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_teleporter)

/area/aux_eva
	name = "\improper ВКД"
	icon_state = "eva"
	req_access = list(access_eva)

/area/thruster
	icon_state = "thruster"
	req_access = list(access_engine)

/area/thruster/ne //нужно?
	name = "\improper North-East Port Nacelle"

/area/thruster/nw //нужно?
	name = "\improper North-West Starboard Nacelle"

/area/thruster/se //нужно?
	name = "\improper South-East Starboard Nacelle"

/area/thruster/sw //нужно?
	name = "\improper South-West Port Nacelle"

/area/engineering/fuelbay //нужно?
	name = "\improper Fuel Bay"
	icon_state = "engineering"
	req_access = list(access_construction)

// Command

/area/bridge
	name = "\improper Мостик"
	icon_state = "bridge"
	req_access = list(access_bridge)

/area/bridge/meeting_room
	name = "\improper Комната для Совещаний"
	icon_state = "bridge_meeting"
	ambience = list()
	sound_env = MEDIUM_SOFTFLOOR

/area/crew_quarters/heads
	icon_state = "head_quarters"
	req_access = list(access_heads)

/area/maintenance/exterior
	name = "\improper Внешние Укрепления"
	icon_state = "maint_exterior"
	area_flags = AREA_FLAG_EXTERNAL
	has_gravity = FALSE
	turf_initializer = /decl/turf_initializer/maintenance/space
	req_access = list(access_external_airlocks, access_maint_tunnels)

// CentCom

/area/centcom/control
	name = "\improper Центральное Командование"

/area/centcom/creed
	name = "Creed's Office" //tbt

/area/centcom/evac
	name = "\improper Спасательный Шаттл Центком"

/area/centcom/ferry
	name = "\improper Транспортный Шаттл Центком"

/area/centcom/living
	name = "\improper Жилые Отсеки Центком"

/area/centcom/suppy
	name = "\improper Шаттл Снабжения Центком"

/area/centcom/test
	name = "\improper Centcom Testing Facility" //tbt

// Solars //tbt
/area/maintenance/auxsolarport
	name = "Solar Maintenance - Port"
	icon_state = "SolarcontrolP"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_engine_equip, access_maint_tunnels)

/area/maintenance/auxsolarstarboard
	name = "Solar Maintenance - Starboard"
	icon_state = "SolarcontrolS"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_engine_equip, access_maint_tunnels)

/area/solar
	area_flags = AREA_FLAG_EXTERNAL
	requires_power = 1
	always_unpowered = 1
	has_gravity = FALSE
	base_turf = /turf/space
	req_access = list(access_engine_equip)

/area/solar/auxstarboard
	name = "\improper Fore Starboard Solar Array"
	icon_state = "panelsA"

/area/solar/port
	name = "\improper Port Auxiliary Solar Array"
	icon_state = "panelsP"

// Maintenance

/area/maintenance/disposal //нужно?
	name = "\improper Утилизатор"
	icon_state = "disposal"

/area/maintenance/incinerator
	name = "\improper Мусоросжигатель"
	icon_state = "disposal"
	req_access = list(list(access_engine, access_medical, access_cargo))

/area/maintenance/waterstore //нужно?
	name = "\improper Цистерна"
	icon_state = "disposal"

// Storage

/area/storage/primary
	name = "Главный Склад Инструментов"
	icon_state = "primarystorage"

/area/storage/misc
	name = "Вспомогательный Склад"
	icon_state = "storage"

/area/storage/tech
	name = "Технический Склад"
	icon_state = "storage"
	req_access = list(access_tech_storage)

/area/storage/tools
	name = "Вспомогательный Склад Инструментов"
	icon_state = "auxstorage"

// Holodecks

/area/holodeck
	name = "\improper Голопалуба"
	icon_state = "Holodeck"
	dynamic_lighting = 0
	sound_env = LARGE_ENCLOSED

/area/holodeck/alphadeck
	name = "\improper Голопалуба Альфа"

/area/holodeck/source_plating
	name = "\improper Голопалуба - Выключена"

/area/holodeck/source_emptycourt
	name = "\improper Голопалуба - Пустая Площадка"
	sound_env = ARENA

/area/holodeck/source_boxingcourt
	name = "\improper Голопалуба - Боксёрский Ринг"
	sound_env = ARENA

/area/holodeck/source_basketball
	name = "\improper Голопалуба - Баскетбольная Площадка"
	sound_env = ARENA

/area/holodeck/source_thunderdomecourt
	name = "\improper Голопалуба - Тандердом"
	sound_env = ARENA

/area/holodeck/source_courtroom
	name = "\improper Голопалуба - Зал Суда"
	sound_env = AUDITORIUM

/area/holodeck/source_beach
	name = "\improper Голопалуба - Пляж"
	sound_env = PLAIN

/area/holodeck/source_wildlife
	name = "\improper Голопалуба - Симуляция Дикой Природы"

/area/holodeck/source_meetinghall
	name = "\improper Голопалуба - Конференц Зал"
	sound_env = AUDITORIUM

/area/holodeck/source_theatre
	name = "\improper Голопалуба - Театр"
	sound_env = CONCERT_HALL

/area/holodeck/source_picnicarea
	name = "\improper Голопалуба - Пикник"
	sound_env = PLAIN

/area/holodeck/source_snowfield
	name = "\improper Голопалуба - Снежная Поляна"
	sound_env = FOREST

/area/holodeck/source_desert
	name = "\improper Голопалуба - Пустыня"
	sound_env = PLAIN

/area/holodeck/source_space
	name = "\improper Голопалуба - Космос"
	has_gravity = 0
	sound_env = SPACE

/area/holodeck/source_cafe
	name = "\improper Голопалуба - Кафе"
	sound_env = PLAIN

/area/holodeck/source_volleyball
	name = "\improper Голопалуба- Волейбол"
	sound_env = PLAIN

/area/holodeck/source_temple
	name = "\improper Голопалуба - Храм"
	sound_env = SMALL_ENCLOSED

/area/holodeck/source_plaza
	name = "\improper Голопалуба- Плаза"
	sound_env = SMALL_ENCLOSED

// Engineering

/area/engineering/atmos/storage
	name = "\improper Атмосферное Хранилище"
	icon_state = "atmos_storage"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_atmospherics)

/area/engineering/engine_room
	name = "\improper Реакторная"
	icon_state = "engine"
	sound_env = LARGE_ENCLOSED
	req_access = list(access_engine, access_engine_equip)

/area/engineering/drone_fabrication //нужно?
	name = "\improper Engineering Drone Fabrication"
	icon_state = "drone_fab"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_robotics)

/area/engineering/engine_monitoring
	name = "\improper Комната Наблюдения за Реактором"
	icon_state = "engine_monitoring"
	req_access = list(access_engine, access_engine_equip)

/area/engineering/engine_smes
	name = "\improper Инженерный СМЕС"
	icon_state = "engine_smes"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_engine, access_engine_equip)

/area/engineering/engineering_monitoring
	name = "\improper Инженерная Комната Наблюдения"
	icon_state = "engine_monitoring"
	req_access = list(access_engine)

/area/engineering/foyer //нужно?
	name = "\improper Engineering Foyer"
	icon_state = "engineering_foyer"
	req_access = list()

/area/engineering/locker_room
	name = "\improper Инженерное Снаряжение"
	icon_state = "engineering_locker"
	req_access = list(access_engine)

/area/engineering/engineering_bay //нужно?
	name = "\improper Engineering Bay"
	icon_state = "engineering_locker"
	req_access = list(access_engine)

/area/engineering/storage //нужно?
	name = "\improper Engineering Storage"
	icon_state = "engineering_storage"
	req_access = list(list(access_engine_equip, access_atmospherics))

/area/engineering/atmos
	name = "\improper Атмосферный Отсек"
	icon_state = "atmos"
	sound_env = LARGE_ENCLOSED
	req_access = list(access_atmospherics)

// Medical
/area/medical/chemistry
	name = "\improper Химическая Лаборатория"
	icon_state = "chem"
	req_access = list(access_chemistry)

/area/medical/exam_room
	name = "\improper Помещение для Обследования"
	icon_state = "exam_room"

/area/medical/morgue
	name = "\improper Морг"
	icon_state = "morgue"
	ambience = list('sound/ambience/ambimo1.ogg','sound/ambience/ambimo2.ogg','sound/music/main.ogg')
	req_access = list(access_morgue)

/area/medical/morgue/autopsy
	name = "\improper Аутопсия"
	icon_state = "autopsy"

/area/medical/sleeper
	name = "\improper Центр Оказания Экстреннной Помощи"
	icon_state = "exam_room"

/area/medical/surgery
	name = "\improper Операционная 1"
	icon_state = "surgery"
	req_access = list(access_surgery)

/area/medical/surgery2
	name = "\improper Операционная 2"
	icon_state = "surgery"
	req_access = list(list(access_surgery, access_robotics_engineering))

// Research
/area/assembly
	req_access = list()

/area/assembly/chargebay
	name = "\improper Инженерная Зарядная Станция"
	icon_state = "mechbay"

/area/assembly/rnd_chargebay
	name = "\improper Робототехническая Зарядная Станция"
	icon_state = "mechbay"

/area/assembly/robotics
	name = "\improper Робототехническая"
	icon_state = "robotics"

/area/assembly/mech
	name = "\improper Сборка Мехов"
	icon_state = "mechbay"
	req_access = list(access_robotics_engineering)

/area/assembly/robotics/surgery
	name = "\improper Робототехническая Операционная"

/area/rnd/misc_lab
	name = "\improper Отсек для Различных Исследований"
	icon_state = "misclab"

/area/rnd/research
	name = "\improper Исследовательский Коридор"
	icon_state = "research"

/area/rnd/breakroom
	name = "\improper Исследовательская Зона Отдыха"
	icon_state = "researchbreak"
	req_access = list(list(access_research, access_nanotrasen))

// Shuttles
/area/shuttle/administration/centcom
	name = "\improper Шаттл Администрации"
	icon_state = "shuttlered"
	req_access = list(access_cent_general)
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED

/area/shuttle/escape_pod3/centcom
	icon_state = "shuttle"
	req_access = list(access_cent_general)

/area/shuttle/escape_pod4/centcom
	icon_state = "shuttle"
	req_access = list(access_cent_general)

/area/shuttle/escape_pod9/centcom
	icon_state = "shuttle"
	req_access = list(access_cent_general)

/area/shuttle/escape_pod10/centcom
	icon_state = "shuttle"
	req_access = list(access_cent_general)

/area/supply/dock
	name = "Шаттл Снабжения"
	icon_state = "shuttle3"
	requires_power = 0
	req_access = list(access_cent_storage)

// Secure

/area/prison/solitary
	name = "Карцер для Длительного Заключения"
	icon_state = "brig"
	req_access = list(access_brig)

/area/security/nuke_storage
	name = "\improper Хранилище"
	icon_state = "nuke_storage"
	area_flags = AREA_FLAG_IS_NOT_PERSISTENT
	req_access = list(access_heads_vault)

// Crew

/area/crew_quarters/sleep/cryo
	name = "\improper Крио Отсек"
	icon_state = "Sleep"

/area/hydroponics
	name = "\improper Гидропонный Отсек"
	icon_state = "hydro"

/area/hydroponics/assistant
	name = "\improper Ассистентский Гидропонный Отсек"
	icon_state = "hydro"

/area/janitor
	name = "\improper Коморка Уборщика"
	icon_state = "janitor"
	req_access = list(access_janitor)

// Tcomm
/area/tcommsat/
	ambience = list('sound/ambience/ambisin2.ogg', 'sound/ambience/signal.ogg', 'sound/ambience/signal.ogg', 'sound/ambience/ambigen10.ogg')
	req_access = list(access_tcomsat)

/area/tcommsat/chamber
	name = "\improper Центральный Отсек Телекоммуникаций"
	icon_state = "tcomsatcham"

/area/tcommsat/computer
	name = "\improper Контроль Телекоммуникаций"
	icon_state = "tcomsatcomp"

// AI
/area/turret_protected/ai
	name = "\improper Камера ИИ"
	icon_state = "ai_chamber"
	ambience = list('sound/ambience/ambimalf.ogg')
	req_access = list(access_ai_upload)

/area/turret_protected/ai_upload
	name = "\improper Камера Загрузки ИИ"
	icon_state = "ai_upload"
	ambience = list('sound/ambience/ambimalf.ogg')
	req_access = list(access_ai_upload)

/area/turret_protected/ai_upload_foyer
	name = "\improper  Вход в Камеру Загрузки ИИ"
	icon_state = "ai_foyer"
	ambience = list('sound/ambience/ambimalf.ogg')
	sound_env = SMALL_ENCLOSED
	req_access = list(access_ai_upload)

// Chapel

/area/chapel/main
	name = "\improper Церковь"
	icon_state = "chapel"
	ambience = list('sound/ambience/ambicha1.ogg','sound/ambience/ambicha2.ogg','sound/ambience/ambicha3.ogg','sound/ambience/ambicha4.ogg','sound/music/traitor.ogg')
	sound_env = LARGE_ENCLOSED

/area/chapel/office
	name = "\improper Офис Священнослужителя"
	req_access = list(access_chapel_office)
	color = COLOR_GRAY80
	sound_env = SMALL_SOFTFLOOR

// Merchant

/area/merchant_station
	name = "\improper Станция Торговцев"
	icon_state = "LP"
	req_access = list(access_merchant)

// ACTORS GUILD
/area/acting
	name = "\improper Организация Актёров Центком-ия"
	icon_state = "red"
	dynamic_lighting = 0
	requires_power = 0

/area/acting/backstage
	name = "\improper Закулисы"

/area/acting/stage
	name = "\improper Сцена"
	dynamic_lighting = 1
	icon_state = "yellow"

// Thunderdome

/area/tdome
	name = "\improper Тандердом"
	icon_state = "thunder"
	requires_power = 0
	dynamic_lighting = 0
	sound_env = ARENA
	req_access = list(access_cent_thunder)

/area/tdome/tdome1
	name = "\improper Тандердом (Команда 1)"
	icon_state = "green"

/area/tdome/tdome2
	name = "\improper Тандердом (Команда 2)"
	icon_state = "yellow"

/area/tdome/tdomeadmin
	name = "\improper Тандердом (Админ.)"
	icon_state = "purple"

/area/tdome/tdomeobserve
	name = "\improper Тандердом (Наблюдатель.)"
	icon_state = "purple"

/***************************************/
/* UNDERGROUND ( Old Station Remains ) */
/***************************************/

// BRIG REMAINS

//insecure brig

/area/remains/insecure/brig
	name = "\improper Заброшенный Бриг"
	icon_state = "security"

/area/remains/insecure/brig/primary_hall
	name = "\improper Главный Коридор Заброшенного Брига"
	icon_state = "security"

/area/remains/insecure/brig/rooms
	name = "\improper Комнаты Заброшенного Брига"
	icon_state = "security"

/area/remains/insecure/brig/rooms/north
	name = "\improper Северные Комнаты Заброшенного Брига"
	icon_state = "Warden"

/area/remains/insecure/brig/rooms/centre
	name = "\improper Центральные Комнаты Заброшенного Брига"
	icon_state = "security"

/area/remains/insecure/brig/rooms/east
	name = "\improper Восточные Комнаты Заброшенного Брига"
	icon_state = "security"

/area/remains/insecure/brig/rooms/south
	name = "\improper Южные Комнаты Заброшенного Брига"
	icon_state = "detective"

//secure brig

/area/remains/secure/brig
	name = "\improper Безопасный Бриг"
	icon_state = "security"

/area/remains/secure/brig/court
	name = "\improper Заброшенный Зал Суда"
	icon_state = "security"

//* EVA, GATEWAY, NUKE, CARGO *//

/area/remains/secure/nuke
	name = "\improper Остатки Хранилища"
	icon_state = "nuke_storage"

/area/remains/insecure/eva
	name = "\improper Остатки ВКД"
	icon_state = "eva"

/area/remains/insecure/gateway
	name = "\improper Заброшенные Врата"
	icon_state = "eva"

/area/remains/insecure/cargo
	name = "\improper Заброшенный Отдел Снабжения"
	icon_state = "quart"

//* CENTER *//

//insecure center

/area/remains/insecure/center
	name = "\improper Заброшенный Центр"
	icon_state = "centhall"

/area/remains/insecure/center/central_hall
	name = "\improper Заброшенный Центральный Коридор"
	icon_state = "centhall"

/area/remains/insecure/center/teleporter
	name = "\improper Остатки Телепротной"
	icon_state = "teleporter"

/area/remains/insecure/center/ai
	name = "\improper Остатки Камеры ИИ"
	icon_state = "ai_foyer"

//secure center

/area/remains/secure/center
	name = "\improper Безопасный Центр"
	icon_state = "bridge"

/area/remains/secure/center/bridge
	name = "\improper Заброшенный Мостик"
	icon_state = "bridge"

/area/remains/secure/center/hop
	name = "\improper Заброшенная Комната Главы Персонала"
	icon_state = "heads_hop"

/area/remains/secure/center/captain
	name = "\improper Остатки Капитанской"
	icon_state = "heads_cap"

//* ARRIVAL *//

//insecure arrival

/area/remains/insecure/arrival
	name = "\improper Остатки Прибытия"
	icon_state = "entry"

/area/remains/insecure/arrival/primaty_hall
	name = "\improper Заброшенный Корридор у Прибытия"
	icon_state = "westhall"

/area/remains/insecure/arrival/rooms
	name = "\improper Остатки Комнат у Прибытия"
	icon_state = "entry"

/area/remains/insecure/arrival/rooms/north
	name = "\improper Остатки Северных Комнат у Прибытия"
	icon_state = "ashall"

/area/remains/insecure/arrival/rooms/south
	name = "\improper Остатки Южных Комнат у Прибытия"
	icon_state = "ashall"

//secure arrival

/area/remains/secure/arrival
	name = "\improper Безопасное Прибытие"
	icon_state = "entry"

/area/remains/secure/arrival/shuttle
	name = "\improper Шаттл Прибытия"
	icon_state = "entry"

/area/remains/secure/arrival/ladder
	name = "\improper Лестница в Прибытии"
	icon_state = "entry"

/area/remains/secure/arrival/checkpoint
	name = "\improper Пункт Охраны в Прибытии"
	icon_state = "security"

//* ENGINEERING *//

// insecure engineering

/area/remains/insecure/engineering
	name = "\improper Заброшенный Инженерный Отсек"
	icon_state = "engine"

/area/remains/insecure/engineering/west
	name = "\improper Заброшенный Западный Инженерный Отсек"
	icon_state = "atmos_storage"

/area/remains/insecure/engineering/east
	name = "\improper Заброшенный Восточный Инженерный Отсек"
	icon_state = "engine"

//secure engineering

/area/remains/secure/engineering
	name = "\improper Безопасный Инженерный Отсек"
	icon_state = "engine"

/area/remains/secure/engineering/ladder
	name = "\improper Лестница в Инженерном Отсеке"
	icon_state = "engineering_foyer"

/area/remains/secure/engineering/south
	name = "\improper Южные Комнаты Инженерного Отсека"
	icon_state = "engineering_storage"

//* DORMS *//

//insecure dorms

/area/remains/insecure/dorms
	name = "\improper Заброшенные Жилые Помещения"
	icon_state = "construction"

/area/remains/insecure/dorms/primary_hall
	name = "\improper Заброшенный Корридор у Жилых Помещений"
	icon_state = "easthall"

/area/remains/insecure/dorms/kitchen
	name = "\improper Остатки Кухни"
	icon_state = "kitchen"

/area/remains/insecure/dorms/kitchen/storage
	name = "\improper Заброшенное Кухонное Хранилище"
	icon_state = "kitchen"

/area/remains/insecure/dorms/hidroponics
	name = "\improper Заброшенная Гидропоника"
	icon_state = "hydro"

//secure dorms

/area/remains/secure/dorms
	name = "\improper Безопасные Жилые Помещения"
	icon_state = "crew_quarters"

/area/remains/secure/dorms/bar
	name = "\improper Остатки Бара"
	icon_state = "bar"

//* DEPARTURE *//

//insecure departure

/area/remains/insecure/departure
	name = "\improper Заброшенное Отбытие"
	icon_state = "escape"

/area/remains/insecure/departure/lounge
	name = "\improper Заброшеннное ОТбытие"
	icon_state = "escape"

/area/remains/insecure/departure/library
	name = "\improper Остатки Библиотеки"
	icon_state = "crew_quarters"

/area/remains/insecure/departure/chapel
	name = "\improper Заброшенная Церковь"
	icon_state = "chapel"

//secure departure

/area/remains/secure/departure
	name = "\improper Безопасное Отбытие"
	icon_state = "escape"

/area/remains/secure/departure/lounge
	name = "\improper Запрошенная Комната в Отбытии"
	icon_state = "security"

//* RESEARCH & DEVELOPMENT *//

//insecure rnd

/area/remains/insecure/rnd
	name = "\improper Остатки Исследовательского Отдела"
	icon_state = "research"

/area/remains/insecure/rnd/rooms
	name = "\improper Заброшенные Лаборатории"
	icon_state = "research"

/area/remains/insecure/rnd/rooms/north
	name = "\improper Заброшенные Северные Лаборатории"
	icon_state = "research"

/area/remains/insecure/rnd/rooms/west
	name = "\improper Заброшенные Западные Лаборатории"
	icon_state = "researchbreak"

/area/remains/insecure/rnd/rooms/east
	name = "\improper Заброшенные Восточные Лаборатории"
	icon_state = "toxstorage"

//secure rnd

/area/remains/secure/rnd
	name = "\improper Безопасный Исследовательский Отдел"
	icon_state = "research"

/area/remains/secure/rnd/ladder
	name = "\improper Лестница в Исследовательском Отделе"
	icon_state = "misclab"

/area/remains/secure/rnd/rd
	name = "\improper Остатки Офиса Директора по Исследованиям"
	icon_state = "heads_rd"

//* MEDICAL *//

//insecure med

/area/remains/insecure/med
	name = "\improper Заброшенный Медицинский Департамент"
	icon_state = "medbay"

/area/remains/insecure/med/morgue
	name = "\improper Остатки Морга"
	icon_state = "morgue"

/area/remains/insecure/med/rooms
	name = "\improper Заброшенные Медицинские Помещения"
	icon_state = "medbay"

/area/remains/insecure/med/rooms/south
	name = "\improper Заброшенные Южные Медицинские Помещения"
	icon_state = "medbay"

/area/remains/insecure/med/rooms/north
	name = "\improper Заброшенные Северные Медицинские Помещения"
	icon_state = "medbay2"

/area/remains/insecure/med/rooms/center
	name = "\improper Заброшенные Центральные Медицинские Помещения"
	icon_state = "surgery"

//secure med

/area/remains/secure/med
	name = "\improper Безопасный Медицинский Отсек"
	icon_state = "medbay"

/area/remains/secure/med/ladder
	name = "\improper Лестница в Медицинском Отсеке"
	icon_state = "patients"

/area/remains/secure/med/toxlab_entry
	name = "\improper Заброшенный Вход в Лабораторию по Изучению Токсинов"
	icon_state = "chem"

/area/remains/secure/med/room
	name = "\improper Заброшенная Комната в Медицинском Отсеке"
	icon_state = "medbay"

/area/remains/secure/med/room/north
	name = "\improper Северная Заброшенная Комната в Медицинском Отсеке"
	icon_state = "medbay3"

/area/remains/secure/med/room/centeral
	name = "\improper Центральная Заброшенная Комната в Медицинском Отсеке"
	icon_state = "medbay4"

//* MAINTENANCE REMAINS *//

//insecure maintenance

/area/remains/insecure/maintenance
	name = "\improper Заброшенные Тех-тоннели"
	icon_state = "maintcentral"

/area/remains/insecure/maintenance/brig
	name = "\improper Заброшенные Тех-тоннели Брига"
	icon_state = "maint_security"

/area/remains/insecure/maintenance/brig/west
	name = "\improper Заброшенные Западные Тех-тоннели Брига"
	icon_state = "maint_security"

/area/remains/insecure/maintenance/brig/east
	name = "\improper Заброшенные Восточные Тех-тоннели Брига"
	icon_state = "maint_security"

/area/remains/insecure/maintenance/cargo
	name = "\improper Заброшенные Тех-тоннели Отдела Снабжения"
	icon_state = "maint_cargo"

/area/remains/insecure/maintenance/eng
	name = "\improper Заброшенные Тех-тоннели Инженерного Отдела"
	icon_state = "maint_engineering"

/area/remains/insecure/maintenance/library
	name = "\improper Заброшенные Тех-тоннели Библиотеки"
	icon_state = "maint_library"

/area/remains/insecure/maintenance/departure
	name = "\improper Заброшенные Тех-тоннели Отбытия"
	icon_state = "maintcentral"

/area/remains/insecure/maintenance/med
	name = "\improper Заброшенные Тех-тоннели Медицинского Отдела"
	icon_state = "maint_research"

//secure maintenance

/area/remains/secure/maintenance
	name = "\improper Безопасные Заброшенные Тех-тоннели"
	icon_state = "maintcentral"

/area/remains/secure/maintenance/brig
	name = "\improper Заброшенные Тех-тоннели Брига"
	icon_state = "maint_security"

/area/remains/secure/maintenance/brig/west
	name = "\improper Опечатанные Западные Тех-тоннели Брига"
	icon_state = "maint_security"

/area/remains/secure/maintenance/brig/east
	name = "\improper Опечатанные Восточные Тех-тоннели Брига"
	icon_state = "maint_security"

/area/remains/secure/maintenance/rnd
	name = "\improper Опечатанные Тех-тоннели Исследовательского Отдела"
	icon_state = "maint_research"

//* USED AREAS* //

/area/remains/secure/used
	name = "\improper Используемые Помещения"
	icon_state = "storage"

/area/remains/secure/used/bunker
	name = "\improper Бункер Глав"
	icon_state = "heads"

/area/remains/secure/used/bartender
	name = "\improper Склад Бармена"
	icon_state = "storage"

/area/remains/secure/used/kitchen_storage
	name = "\improper Кухонный Склад"
	icon_state = "storage"