/datum/job/submap
	branch = /datum/mil_branch/civilian
	rank =   /datum/mil_rank/civ/civ
	allowed_branches = list(/datum/mil_branch/civilian)
	allowed_ranks = list(/datum/mil_rank/civ/civ)
	required_language = null

/datum/map/new_dawn
	branch_types = list(
		/datum/mil_branch/expeditionary_corps,
		/datum/mil_branch/fleet,
		/datum/mil_branch/civilian,
		/datum/mil_branch/solgov,
		/datum/mil_branch/army,
		/datum/mil_branch/alien,
		/datum/mil_branch/skrell_fleet
	)

	spawn_branch_types = list(
		/datum/mil_branch/expeditionary_corps,
		/datum/mil_branch/fleet,
		/datum/mil_branch/civilian,
		/datum/mil_branch/solgov,
		/datum/mil_branch/alien,
		/datum/mil_branch/skrell_fleet
	)

	species_to_branch_blacklist = list(
		/datum/species/human   = list(/datum/mil_branch/alien, /datum/mil_branch/skrell_fleet),
		/datum/species/machine = list(/datum/mil_branch/alien, /datum/mil_branch/skrell_fleet),
		/datum/species/vox     = list(
			/datum/mil_branch/expeditionary_corps,
			/datum/mil_branch/fleet,
			/datum/mil_branch/civilian,
			/datum/mil_branch/solgov,
			/datum/mil_branch/skrell_fleet
		)
	)

	species_to_branch_whitelist = list(
		/datum/species/diona        = list(/datum/mil_branch/civilian),
		/datum/species/nabber       = list(/datum/mil_branch/civilian),
		/datum/species/skrell       = list(/datum/mil_branch/civilian, /datum/mil_branch/expeditionary_corps, /datum/mil_branch/skrell_fleet),
		/datum/species/unathi       = list(/datum/mil_branch/civilian, /datum/mil_branch/expeditionary_corps),
		/datum/species/unathi/yeosa = list(/datum/mil_branch/civilian, /datum/mil_branch/expeditionary_corps),
		/datum/species/adherent     = list(/datum/mil_branch/civilian),
		/datum/species/vox          = list(/datum/mil_branch/alien)
	)

	species_to_rank_blacklist = list(
		/datum/species/machine = list(
			/datum/mil_branch/solgov = list(
				/datum/mil_rank/sol/agent
			)
		)
	)

	species_to_rank_whitelist = list(
		/datum/species/machine = list(
			/datum/mil_branch/expeditionary_corps = list(
				/datum/mil_rank/ec/e3,
				/datum/mil_rank/ec/e5,
				/datum/mil_rank/ec/e7,
				/datum/mil_rank/ec/o1
			),
			/datum/mil_branch/fleet = list(
				/datum/mil_rank/fleet/e1,
				/datum/mil_rank/fleet/e2,
				/datum/mil_rank/fleet/e3,
				/datum/mil_rank/fleet/e4,
				/datum/mil_rank/fleet/e5,
				/datum/mil_rank/fleet/e6,
				/datum/mil_rank/fleet/e7,
				/datum/mil_rank/fleet/o1
			)
		),
		/datum/species/skrell = list(
			/datum/mil_branch/expeditionary_corps = list(
				/datum/mil_rank/ec/e3,
				/datum/mil_rank/ec/e5,
				/datum/mil_rank/ec/e7,
				/datum/mil_rank/ec/o1
			)
		),
		/datum/species/unathi = list(
			/datum/mil_branch/expeditionary_corps = list(
				/datum/mil_rank/ec/e3,
				/datum/mil_rank/ec/e5
			)
		),
		/datum/species/unathi/yeosa = list(
			/datum/mil_branch/expeditionary_corps = list(
				/datum/mil_rank/ec/e3,
				/datum/mil_rank/ec/e5
			)
		),
		/datum/species/vox = list(
			/datum/mil_branch/alien = list(
				/datum/mil_rank/alien
			)
		)
	)

/*
 *  Branches
 *  ========
 */

/datum/mil_branch/expeditionary_corps
	name = "Экспедиционный Корпус"
	name_short = "ЭКЦПСС"
	email_domain = "torch.ec.scg" //tbt

	rank_types = list(
		/datum/mil_rank/ec/e3,
		/datum/mil_rank/ec/e5,
		/datum/mil_rank/ec/e7,
		/datum/mil_rank/ec/o1,
		/datum/mil_rank/ec/o3,
		/datum/mil_rank/ec/o5,
		/datum/mil_rank/ec/o6
	)

	spawn_rank_types = list(
		/datum/mil_rank/ec/e3,
		/datum/mil_rank/ec/e5,
		/datum/mil_rank/ec/e7,
		/datum/mil_rank/ec/o1,
		/datum/mil_rank/ec/o3,
		/datum/mil_rank/ec/o5,
		/datum/mil_rank/ec/o6
	)

	assistant_job = /datum/job/crew

	min_skill = list(	SKILL_SCIENCE = SKILL_BASIC,
						SKILL_EVA     = SKILL_BASIC)

/datum/mil_branch/fleet
	name = "Флот"
	name_short = "ФЦПСС"
	email_domain = "torch.fleet.mil" //tbt

	rank_types = list(
		/datum/mil_rank/fleet/e1,
		/datum/mil_rank/fleet/e2,
		/datum/mil_rank/fleet/e3,
		/datum/mil_rank/fleet/e4,
		/datum/mil_rank/fleet/e5,
		/datum/mil_rank/fleet/e6,
		/datum/mil_rank/fleet/e7,
		/datum/mil_rank/fleet/e8,
		/datum/mil_rank/fleet/e9,
		/datum/mil_rank/fleet/e9_alt1,
		/datum/mil_rank/fleet/e9_alt2,
		/datum/mil_rank/fleet/e9_alt3,
		/datum/mil_rank/fleet/o1,
		/datum/mil_rank/fleet/o2,
		/datum/mil_rank/fleet/o3,
		/datum/mil_rank/fleet/o4,
		/datum/mil_rank/fleet/o5,
		/datum/mil_rank/fleet/o6,
		/datum/mil_rank/fleet/o7,
		/datum/mil_rank/fleet/o8,
		/datum/mil_rank/fleet/o9,
		/datum/mil_rank/fleet/o10,
		/datum/mil_rank/fleet/o10_alt
	)

	spawn_rank_types = list(
		/datum/mil_rank/fleet/e2,
		/datum/mil_rank/fleet/e3,
		/datum/mil_rank/fleet/e4,
		/datum/mil_rank/fleet/e5,
		/datum/mil_rank/fleet/e6,
		/datum/mil_rank/fleet/e7,
		/datum/mil_rank/fleet/e8,
		/datum/mil_rank/fleet/e9,
		/datum/mil_rank/fleet/e9_alt1,
		/datum/mil_rank/fleet/o1,
		/datum/mil_rank/fleet/o2,
		/datum/mil_rank/fleet/o3,
		/datum/mil_rank/fleet/o4,
		/datum/mil_rank/fleet/o5
	)

	assistant_job = /datum/job/crew
	min_skill = list(	SKILL_WEAPONS = SKILL_BASIC,
						SKILL_EVA     = SKILL_BASIC)

/datum/mil_branch/army
	name = "Армия"
	name_short = "ВСЦПСС"
	email_domain = "army.mil"

	rank_types = list(
		/datum/mil_rank/army/e1,
		/datum/mil_rank/army/e2,
		/datum/mil_rank/army/e3,
		/datum/mil_rank/army/e4,
		/datum/mil_rank/army/e5,
		/datum/mil_rank/army/e6,
		/datum/mil_rank/army/e7,
		/datum/mil_rank/army/e8,
		/datum/mil_rank/army/e8_alt,
		/datum/mil_rank/army/e9,
		/datum/mil_rank/army/e9_alt1,
		/datum/mil_rank/army/e9_alt2,
		/datum/mil_rank/army/o1,
		/datum/mil_rank/army/o2,
		/datum/mil_rank/army/o3,
		/datum/mil_rank/army/o4,
		/datum/mil_rank/army/o5,
		/datum/mil_rank/army/o6,
		/datum/mil_rank/army/o7,
		/datum/mil_rank/army/o8,
		/datum/mil_rank/army/o9,
		/datum/mil_rank/army/o10,
		/datum/mil_rank/army/o10_alt
	)

	assistant_job = /datum/job/crew
	min_skill = list(	SKILL_HAULING = SKILL_ADEPT,
	                    SKILL_WEAPONS = SKILL_BASIC,
	                    SKILL_COMBAT  = SKILL_BASIC)

/datum/mil_branch/civilian
	name = "Гражданский"
	name_short = "Грж"
	email_domain = "freemail.net"
	allow_custom_email = TRUE

	rank_types = list(
		/datum/mil_rank/civ/civ,
		/datum/mil_rank/civ/contractor,
		/datum/mil_rank/civ/synthetic
	)

	spawn_rank_types = list(
		/datum/mil_rank/civ/civ,
		/datum/mil_rank/civ/contractor,
		/datum/mil_rank/civ/synthetic
	)

/datum/mil_branch/solgov
	name = "Сотрудник СолПрава"
	name_short = "ЦПСС"
	email_domain = "torch.scg" //tbt

	rank_types = list(
		/datum/mil_rank/sol/gov,
		/datum/mil_rank/sol/agent,
		/datum/mil_rank/sol/scientist
	)

	spawn_rank_types = list(
		/datum/mil_rank/sol/gov,
		/datum/mil_rank/sol/agent,
		/datum/mil_rank/sol/scientist
	)

/datum/mil_branch/terran
	name = "Независимый Флот"
	name_short = "НФГКК" // Независимый Флот Гильгамешской Колониальной Конфедерации
	email_domain = "gilgamesh.navy.mil"

	rank_types = list(
		/datum/mil_rank/terran/e1,
		/datum/mil_rank/terran/e3,
		/datum/mil_rank/terran/e4,
		/datum/mil_rank/terran/e6,
		/datum/mil_rank/terran/e7,
		/datum/mil_rank/terran/e9,
		/datum/mil_rank/terran/e9_alt1,
		/datum/mil_rank/terran/o1,
		/datum/mil_rank/terran/o2,
		/datum/mil_rank/terran/o3,
		/datum/mil_rank/terran/o4,
		/datum/mil_rank/terran/o5,
		/datum/mil_rank/terran/o6,
		/datum/mil_rank/terran/o7,
		/datum/mil_rank/terran/o8,
		/datum/mil_rank/terran/o9,
		/datum/mil_rank/terran/o10
	)
	min_skill = list(	SKILL_HAULING = SKILL_BASIC,
						SKILL_WEAPONS = SKILL_BASIC,
						SKILL_EVA     = SKILL_BASIC)

/datum/mil_rank/grade()
	. = ..()
	if(!sort_order)
		return ""
	if(sort_order <= 10)
		return "E[sort_order]"
	return "O[sort_order - 10]"
/*
 *  Fleet
 *  =====
 */

/datum/mil_rank/fleet/e1
	name = "Мартос - Рекрут"
	name_short = "МР"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/fleet/enlisted, /obj/item/clothing/accessory/solgov/specialty/enlisted)
	sort_order = 1

/datum/mil_rank/fleet/e2
	name = "Младший Матрос"
	name_short = "ММ"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/fleet/enlisted/e2, /obj/item/clothing/accessory/solgov/specialty/enlisted)
	sort_order = 2

/datum/mil_rank/fleet/e3
	name = "Матрос"
	name_short = "МС"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/fleet/enlisted/e3, /obj/item/clothing/accessory/solgov/specialty/enlisted)
	sort_order = 3

/datum/mil_rank/fleet/e4
	name = "Старшина Третьего Класса"
	name_short = "СТ3"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/fleet/enlisted/e4, /obj/item/clothing/accessory/solgov/specialty/enlisted)
	sort_order = 4

/datum/mil_rank/fleet/e5
	name = "Старшина Второго Класса"
	name_short = "СТ2"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/fleet/enlisted/e5, /obj/item/clothing/accessory/solgov/specialty/enlisted)
	sort_order = 5

/datum/mil_rank/fleet/e6
	name = "Старшина Первого Класса"
	name_short = "СТ1"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/fleet/enlisted/e6, /obj/item/clothing/accessory/solgov/specialty/enlisted)
	sort_order = 6

/datum/mil_rank/fleet/e7
	name = "Главный Старшина"
	name_short = "ГСТ"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/fleet/enlisted/e7, /obj/item/clothing/accessory/solgov/specialty/enlisted)
	sort_order = 7

/datum/mil_rank/fleet/e8
	name = "Главный Корабельный Страшина"
	name_short = "ГКСТ"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/fleet/enlisted/e8, /obj/item/clothing/accessory/solgov/specialty/enlisted)
	sort_order = 8

/datum/mil_rank/fleet/e9
	name = "Мастер-Старшина"
	name_short = "МСТ"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/fleet/enlisted/e9, /obj/item/clothing/accessory/solgov/specialty/enlisted)
	sort_order = 9

/datum/mil_rank/fleet/e9_alt1
	name = "Команд-Мастер-Старшина"
	name_short = "КМСТ"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/fleet/enlisted/e9_alt1, /obj/item/clothing/accessory/solgov/specialty/enlisted)
	sort_order = 9

/datum/mil_rank/fleet/e9_alt2
	name = "Мастер-Старшина Флота"
	name_short = "МСТФ"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/fleet/enlisted/e9_alt2, /obj/item/clothing/accessory/solgov/specialty/enlisted)
	sort_order = 9

/datum/mil_rank/fleet/e9_alt3
	name = "Мастер-Старшина Военных Сил"
	name_short = "МСТВС"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/fleet/enlisted/e9_alt3, /obj/item/clothing/accessory/solgov/specialty/enlisted)
	sort_order = 9

/datum/mil_rank/fleet/o1
	name = "Энсин"
	name_short = "ЭНС"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/fleet/officer, /obj/item/clothing/accessory/solgov/specialty/officer)
	sort_order = 11

/datum/mil_rank/fleet/o2
	name = "Младший Лейтенант"
	name_short = "ИЛТ"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/fleet/officer/o2, /obj/item/clothing/accessory/solgov/specialty/officer)
	sort_order = 12

/datum/mil_rank/fleet/o3
	name = "Лейтенант"
	name_short = "ЛТ"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/fleet/officer/o3, /obj/item/clothing/accessory/solgov/specialty/officer)
	sort_order = 13

/datum/mil_rank/fleet/o4
	name = "Старший Лейтенант"
	name_short = "СЛТ"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/fleet/officer/o4, /obj/item/clothing/accessory/solgov/specialty/officer)
	sort_order = 14

/datum/mil_rank/fleet/o5
	name = "Коммандер"
	name_short = "КМД"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/fleet/officer/o5, /obj/item/clothing/accessory/solgov/specialty/officer)
	sort_order = 15

/datum/mil_rank/fleet/o6
	name = "Капитан"
	name_short = "КПТ"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/fleet/officer/o6, /obj/item/clothing/accessory/solgov/specialty/officer)
	sort_order = 16

/datum/mil_rank/fleet/o7
	name = "Младший Контр-Адмирал"
	name_short = "МКАДМ"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/fleet/flag, /obj/item/clothing/accessory/solgov/specialty/officer)
	sort_order = 17

/datum/mil_rank/fleet/o8
	name = "Контр-Адмирал"
	name_short = "КАДМ"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/fleet/flag/o8, /obj/item/clothing/accessory/solgov/specialty/officer)
	sort_order = 18

/datum/mil_rank/fleet/o9
	name = "Вице-Адмирал"
	name_short = "ВАДМ"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/fleet/flag/o9, /obj/item/clothing/accessory/solgov/specialty/officer)
	sort_order = 19

/datum/mil_rank/fleet/o10
	name = "Адмирал"
	name_short = "АДМ"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/fleet/flag/o10, /obj/item/clothing/accessory/solgov/specialty/officer)
	sort_order = 20

/datum/mil_rank/fleet/o10_alt
	name = "Адмирал Флота"
	name_short = "АДМФ"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/fleet/flag/o10_alt, /obj/item/clothing/accessory/solgov/specialty/officer)
	sort_order = 20


/*
 *  EC
 *  =====
 */
/datum/mil_rank/ec/e1
	name = "Младший Исследователь"
	name_short = "МИСЛ"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/ec/enlisted)
	sort_order = 1

/datum/mil_rank/ec/e3
	name = "Исследователь"
	name_short = "ИСЛ"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/ec/enlisted/e3)
	sort_order = 3

/datum/mil_rank/ec/e5
	name = "Старший Исследователь"
	name_short = "СИСЛ"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/ec/enlisted/e5)
	sort_order = 5

/datum/mil_rank/ec/e7
	name = "Главный Исследователь"
	name_short = "ГИСЛ"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/ec/enlisted/e7)
	sort_order = 7

/datum/mil_rank/ec/o1
	name = "Энсин"
	name_short = "ЭНС"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/ec/officer)
	sort_order = 11

/datum/mil_rank/ec/o3
	name = "Лейтенант"
	name_short = "ЛТ"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/ec/officer/o3)
	sort_order = 13

/datum/mil_rank/ec/o5
	name = "Коммандер"
	name_short = "КМД"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/ec/officer/o5)
	sort_order = 15

/datum/mil_rank/ec/o6
	name = "Капитан"
	name_short = "КПТ"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/ec/officer/o6)
	sort_order = 16

/datum/mil_rank/ec/o8
	name = "Адмирал"
	name_short = "АДМ"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/ec/officer/o8)
	sort_order = 18

/*
 *  Army
 *  ====
 */
/datum/mil_rank/army/e1 //tbt
	name = "Private"
	name_short = "PVT"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/army/enlisted)
	sort_order = 1

/datum/mil_rank/army/e2
	name = "Private Second Class"
	name_short = "PV2"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/army/enlisted/e2)
	sort_order = 2

/datum/mil_rank/army/e3
	name = "Private First Class"
	name_short = "PV1"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/army/enlisted/e3)
	sort_order = 3

/datum/mil_rank/army/e4
	name = "Corporal"
	name_short = "CPL"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/army/enlisted/e4)
	sort_order = 4

/datum/mil_rank/army/e5
	name = "Sergeant"
	name_short = "SGT"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/army/enlisted/e5)
	sort_order = 5

/datum/mil_rank/army/e6
	name = "Staff Sergeant"
	name_short = "SSG"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/army/enlisted/e6)
	sort_order = 6

/datum/mil_rank/army/e7
	name = "Sergeant First Class"
	name_short = "SFC"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/army/enlisted/e7)
	sort_order = 7

/datum/mil_rank/army/e8
	name = "Master Sergeant"
	name_short = "MSG"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/army/enlisted/e8)
	sort_order = 8

/datum/mil_rank/army/e8_alt
	name = "First Sergeant"
	name_short = "1SG"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/army/enlisted/e8_alt)
	sort_order = 8

/datum/mil_rank/army/e9
	name = "Sergeant Major"
	name_short = "SGM"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/army/enlisted/e9)
	sort_order = 9

/datum/mil_rank/army/e9_alt1
	name = "Command Sergeant Major"
	name_short = "CSM"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/army/enlisted/e9_alt1)
	sort_order = 9

/datum/mil_rank/army/e9_alt2
	name = "Sergeant Major of the Army"
	name_short = "SMA"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/army/enlisted/e9_alt2)
	sort_order = 9

/datum/mil_rank/army/o1
	name = "Second Lieutenant"
	name_short = "2LT"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/army/officer)
	sort_order = 11

/datum/mil_rank/army/o2
	name = "First Lieutenant"
	name_short = "1LT"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/army/officer/o2)
	sort_order = 12

/datum/mil_rank/army/o3
	name = "Captain"
	name_short = "CPT"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/army/officer/o3)
	sort_order = 13

/datum/mil_rank/army/o4
	name = "Major"
	name_short = "MAJ"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/army/officer/o4)
	sort_order = 14

/datum/mil_rank/army/o5
	name = "Lieutenant Colonel"
	name_short = "LTC"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/army/officer/o5)
	sort_order = 15

/datum/mil_rank/army/o6
	name = "Colonel"
	name_short = "COL"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/army/officer/o6)
	sort_order = 16

/datum/mil_rank/army/o7
	name = "Brigadier General"
	name_short = "BG"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/army/flag)
	sort_order = 17

/datum/mil_rank/army/o8
	name = "Major General"
	name_short = "MG"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/army/flag/o8)
	sort_order = 18

/datum/mil_rank/army/o9
	name = "Lieutenant General"
	name_short = "LTG"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/army/flag/o9)
	sort_order = 19

/datum/mil_rank/army/o10
	name = "General"
	name_short = "GEN"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/army/flag/o10)
	sort_order = 20

/datum/mil_rank/army/o10_alt
	name = "General of the Army"
	name_short = "GA"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/army/flag/o10_alt)
	sort_order = 20

/*
 *  Civilians
 *  =========
 */

/datum/mil_rank/civ/civ
	name = "Гражданский"

/datum/mil_rank/civ/contractor
	name = "Наёмник"

/datum/mil_rank/civ/synthetic
	name = "Синтетик"

/*
 *  SolGov Employees
 *  ====== =========
 */

/datum/mil_rank/sol/gov
	name = "Представитель СолПрава"
	name_short = "ПСП"
	accessory = list(/obj/item/clothing/accessory/badge/solgov/representative)

/datum/mil_rank/sol/agent
	name = "Спец Агент Сола по Криминалистике"
	name_short = "САСК"
	accessory = list(/obj/item/clothing/accessory/badge/agent)

/datum/mil_rank/sol/scientist
	name = "Государственный Научный Сотрудник"
	name_short = "ГНС"

/*
 *  Terrans
 *  =======
 */

/datum/mil_rank/terran/e1
	name = "Матрос-Рекрут"
	name_short = "МтРк"
	accessory = list(/obj/item/clothing/accessory/terran/rank/navy/enlisted)
	sort_order = 1

/datum/mil_rank/terran/e3
	name = "Матрос"
	name_short = "Мт"
	accessory = list(/obj/item/clothing/accessory/terran/rank/navy/enlisted/e3)
	sort_order = 3

/datum/mil_rank/terran/e4
	name = "Боцман"
	name_short = "Бцм"
	accessory = list(/obj/item/clothing/accessory/terran/rank/navy/enlisted/e4)
	sort_order = 4

/datum/mil_rank/terran/e6
	name = "Мтарший Боцман"
	name_short = "СБцм"
	accessory = list(/obj/item/clothing/accessory/terran/rank/navy/enlisted/e6)
	sort_order = 6

/datum/mil_rank/terran/e7
	name = "Главный Страшина"
	name_short = "ГСтр"
	accessory = list(/obj/item/clothing/accessory/terran/rank/navy/enlisted/e7)
	sort_order = 7

/datum/mil_rank/terran/e9
	name = "Мичман"
	name_short = "Мчм"
	accessory = list(/obj/item/clothing/accessory/terran/rank/navy/enlisted/e9)
	sort_order = 9

/datum/mil_rank/terran/e9_alt1
	name = "Мичман Независимого Флота"
	name_short = "МчмНФ"
	accessory = list(/obj/item/clothing/accessory/terran/rank/navy/enlisted/e9_alt1)
	sort_order = 9

/datum/mil_rank/terran/o1
	name = "Энсин"
	name_short = "ЭНС"
	accessory = list(/obj/item/clothing/accessory/terran/rank/navy/officer)
	sort_order = 11

/datum/mil_rank/terran/o2
	name = "Лейтенант"
	name_short = "Лтн"
	accessory = list(/obj/item/clothing/accessory/terran/rank/navy/officer/o2)
	sort_order = 12

/datum/mil_rank/terran/o3
	name = "Старший Лейтенант"
	name_short = "СЛтн"
	accessory = list(/obj/item/clothing/accessory/terran/rank/navy/officer/o3)
	sort_order = 13

/datum/mil_rank/terran/o4
	name = "Корвет-Командор"
	name_short = "КвтКмд"
	accessory = list(/obj/item/clothing/accessory/terran/rank/navy/officer/o4)
	sort_order = 14

/datum/mil_rank/terran/o5
	name = "Командор"
	name_short = "Кмд"
	accessory = list(/obj/item/clothing/accessory/terran/rank/navy/officer/o5)
	sort_order = 15

/datum/mil_rank/terran/o6
	name = "Капитан"
	name_short = "Кпт"
	accessory = list(/obj/item/clothing/accessory/terran/rank/navy/officer/o6)
	sort_order = 16

/datum/mil_rank/terran/o7
	name = "Контр-Адмирал"
	name_short = "КтрАдм"
	accessory = list(/obj/item/clothing/accessory/terran/rank/navy/flag)
	sort_order = 17

/datum/mil_rank/terran/o8
	name = "Вице-Адмирал"
	name_short = "ВцАдм"
	accessory = list(/obj/item/clothing/accessory/terran/rank/navy/flag/o8)
	sort_order = 18

/datum/mil_rank/terran/o9
	name = "Адмирал"
	name_short = "Адм"
	accessory = list(/obj/item/clothing/accessory/terran/rank/navy/flag/o9)
	sort_order = 19

/datum/mil_rank/terran/o10
	name = "Адмирал Независимого Флота"
	name_short = "АдмНФ"
	accessory = list(/obj/item/clothing/accessory/terran/rank/navy/flag/o10)
	sort_order = 20

// Vox/foreign alien branch.
/datum/mil_branch/alien
	name = "Чужой"
	name_short = "Чужой"
	rank_types = list(/datum/mil_rank/alien)
	spawn_rank_types = list(/datum/mil_rank/alien)

/datum/mil_rank/alien
	name = "Чужой"