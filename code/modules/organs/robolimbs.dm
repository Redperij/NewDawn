var/list/all_robolimbs = list()
var/list/chargen_robolimbs = list()
var/datum/robolimb/basic_robolimb

/proc/populate_robolimb_list()
	basic_robolimb = new()
	for(var/limb_type in typesof(/datum/robolimb))
		var/datum/robolimb/R = new limb_type()
		all_robolimbs[R.company] = R
		if(!R.unavailable_at_chargen)
			chargen_robolimbs[R.company] = R


/datum/robolimb
	var/company = "Без брэнда"                                 // Shown when selecting the limb.
	var/desc = "Обычный протез."      // Seen when examining a limb.
	var/icon = 'icons/mob/human_races/cyberlimbs/robotic.dmi' // Icon base to draw from.
	var/unavailable_at_chargen                                // If set, not available at chargen.
	var/unavailable_at_fab                                    // If set, cannot be fabricated.
	var/can_eat
	var/has_eyes = TRUE
	var/can_feel_pain
	var/skintone
	var/list/species_cannot_use = list()
	var/list/restricted_to = list()
	var/list/applies_to_part = list() //TODO.
	var/list/allowed_bodytypes = list(SPECIES_HUMAN, SPECIES_IPC, SPECIES_SKRELL, SPECIES_UNATHI)

/datum/robolimb/bishop
	company = "Бишоп"
	desc = "Эта конечность обделана белым полимером с интегрированными синими голо-дисплеями."
	icon = 'icons/mob/human_races/cyberlimbs/bishop/bishop_main.dmi'
	unavailable_at_fab = 1

/datum/robolimb/bishop/rook
	company = "Бишоп Рук"
	desc = "Эта конечность обделана отполированным металлом с голографическим лицевым излучателем."
	icon = 'icons/mob/human_races/cyberlimbs/bishop/bishop_rook.dmi'
	has_eyes = FALSE
	unavailable_at_fab = 1

/datum/robolimb/bishop/alt
	company = "Бишоп Альт."
	icon = 'icons/mob/human_races/cyberlimbs/bishop/bishop_alt.dmi'
	applies_to_part = list(BP_HEAD)
	unavailable_at_fab = 1

/datum/robolimb/bishop/alt/monitor
	company = "Бишоп Монитор."
	icon = 'icons/mob/human_races/cyberlimbs/bishop/bishop_monitor.dmi'
	allowed_bodytypes = list(SPECIES_IPC)
	unavailable_at_fab = 1

/datum/robolimb/hephaestus
	company = "Хепхаэстус Индастрис"
	desc = "Эта конечность имеет армейскую чёрную с зелёным обделку с золотыми полосками."
	icon = 'icons/mob/human_races/cyberlimbs/hephaestus/hephaestus_main.dmi'
	unavailable_at_fab = 1

/datum/robolimb/hephaestus/alt
	company = "Хепхаэстус Альт."
	icon = 'icons/mob/human_races/cyberlimbs/hephaestus/hephaestus_alt.dmi'
	applies_to_part = list(BP_HEAD)
	unavailable_at_fab = 1

/datum/robolimb/hephaestus/titan
	company = "Хепхаэстус Тайтан"
	desc = "Эта конечность имеет Тускло-оливковую обделку, что внешне заставляет её выглядеть крепче."
	icon = 'icons/mob/human_races/cyberlimbs/hephaestus/hephaestus_titan.dmi'
	has_eyes = FALSE
	unavailable_at_fab = 1

/datum/robolimb/hephaestus/alt/monitor
	company = "Хепхаэстус Монитор."
	icon = 'icons/mob/human_races/cyberlimbs/hephaestus/hephaestus_monitor.dmi'
	allowed_bodytypes = list(SPECIES_IPC)
	can_eat = null
	unavailable_at_fab = 1

/datum/robolimb/zenghu
	company = "Зенг-Ху"
	desc = "Эта конечность покрыта похожей на кожу резиной с видимыми швами."
	icon = 'icons/mob/human_races/cyberlimbs/zenghu/zenghu_main.dmi'
	can_eat = 1
	unavailable_at_fab = 1
	allowed_bodytypes = list(SPECIES_HUMAN,SPECIES_IPC)

/datum/robolimb/zenghu/spirit
	company = "Зенг-Ху Спирит"
	desc = "Эта конечность покрыта гладким чёрно-белым полимером."
	icon = 'icons/mob/human_races/cyberlimbs/zenghu/zenghu_spirit.dmi'
	unavailable_at_fab = 1

/datum/robolimb/xion
	company = "Ксион"
	desc = "На эту конечность нанесено минималистичное чёрно-красное покрытие."
	icon = 'icons/mob/human_races/cyberlimbs/xion/xion_main.dmi'

/datum/robolimb/xion/econo
	company = "Ксион Экон"
	desc = "Эта скелетно-механическая конечность покрыта минималистичным чёрно-белым покрытием."
	icon = 'icons/mob/human_races/cyberlimbs/xion/xion_econo.dmi'
	unavailable_at_fab = 1

/datum/robolimb/xion/alt
	company = "Ксион Альт."
	icon = 'icons/mob/human_races/cyberlimbs/xion/xion_alt.dmi'
	applies_to_part = list(BP_HEAD)
	unavailable_at_fab = 1

/datum/robolimb/xion/alt/monitor
	company = "Ксион Монитор."
	icon = 'icons/mob/human_races/cyberlimbs/xion/xion_monitor.dmi'
	allowed_bodytypes = list(SPECIES_IPC)
	can_eat = null
	unavailable_at_fab = 1

/datum/robolimb/nanotrasen
	company = "НаноТрайзен"
	desc = "Эта конечность сделана из дешового полимера."
	icon = 'icons/mob/human_races/cyberlimbs/nanotrasen/nanotrasen_main.dmi'

/datum/robolimb/wardtakahashi
	company = "Вард-Такахаши"
	desc = "Эта конечность покрыта гладким чёрно-белым полимером."
	icon = 'icons/mob/human_races/cyberlimbs/wardtakahashi/wardtakahashi_main.dmi'
	can_eat = 1
	unavailable_at_fab = 1

/datum/robolimb/economy
	company = "Вард-Такахаши Экон."
	desc = "Стандартная роботическая конечность с ретро дизайном. Вынлядит весьма жёсткой."
	icon = 'icons/mob/human_races/cyberlimbs/wardtakahashi/wardtakahashi_economy.dmi'

/datum/robolimb/wardtakahashi/alt
	company = "Вард-Такахаши Альт."
	icon = 'icons/mob/human_races/cyberlimbs/wardtakahashi/wardtakahashi_alt.dmi'
	applies_to_part = list(BP_HEAD)
	unavailable_at_fab = 1

/datum/robolimb/wardtakahashi/alt/monitor
	company = "Вард-Такахаши Монитор."
	icon = 'icons/mob/human_races/cyberlimbs/wardtakahashi/wardtakahashi_monitor.dmi'
	allowed_bodytypes = list(SPECIES_IPC)
	can_eat = null
	unavailable_at_fab = 1

/datum/robolimb/morpheus
	company = "Морфеус"
	desc = "Эта конечность эффективна и незамысловата; протез и не пытались скрыть."
	icon = 'icons/mob/human_races/cyberlimbs/morpheus/morpheus_main.dmi'
	unavailable_at_fab = 1

/datum/robolimb/morpheus/alt
	company = "Морфеус Атлантис"
	icon = 'icons/mob/human_races/cyberlimbs/morpheus/morpheus_atlantis.dmi'
	applies_to_part = list(BP_HEAD)
	unavailable_at_fab = 1

/datum/robolimb/morpheus/alt/blitz
	company = "Морфеус Блитз"
	icon = 'icons/mob/human_races/cyberlimbs/morpheus/morpheus_blitz.dmi'
	applies_to_part = list(BP_HEAD)
	has_eyes = FALSE
	unavailable_at_fab = 1

/datum/robolimb/morpheus/alt/airborne
	company = "Морфеус Эйрборн"
	icon = 'icons/mob/human_races/cyberlimbs/morpheus/morpheus_airborne.dmi'
	applies_to_part = list(BP_HEAD)
	has_eyes = FALSE
	unavailable_at_fab = 1

/datum/robolimb/morpheus/alt/prime
	company = "Морфеус Прайм"
	icon = 'icons/mob/human_races/cyberlimbs/morpheus/morpheus_prime.dmi'
	applies_to_part = list(BP_HEAD)
	has_eyes = FALSE
	unavailable_at_fab = 1

/datum/robolimb/mantis
	company = "Морфеус Мантис"
	desc = "Эта конечность покрыта гладким чёрным металлом и имеет отторгающий дизайн."
	icon = 'icons/mob/human_races/cyberlimbs/morpheus/morpheus_mantis.dmi'
	unavailable_at_fab = 1
	has_eyes = FALSE

/datum/robolimb/morpheus/monitor
	company = "Морфеус Монитор."
	icon = 'icons/mob/human_races/cyberlimbs/morpheus/morpheus_monitor.dmi'
	applies_to_part = list(BP_HEAD)
	unavailable_at_fab = 1
	has_eyes = FALSE
	allowed_bodytypes = list(SPECIES_IPC)

/datum/robolimb/veymed
	company = "Вэй-Мед"
	desc = "Это крайне качественный протез, который очень легко спутать с настоящей органической конечностью."
	icon = 'icons/mob/human_races/cyberlimbs/veymed/veymed_main.dmi'
	can_eat = 1
	skintone = 1
	unavailable_at_fab = 1
	species_cannot_use = list(SPECIES_IPC)

/datum/robolimb/shellguard
	company = "Шелгвард"
	desc = "Эта конечность выглядит тяжёлой и прочной."
	icon = 'icons/mob/human_races/cyberlimbs/shellguard/shellguard_main.dmi'

/datum/robolimb/shellguard/alt
	company = "Шелгвард Альт."
	icon = 'icons/mob/human_races/cyberlimbs/shellguard/shellguard_alt.dmi'
	applies_to_part = list(BP_HEAD)
	unavailable_at_fab = 1

/datum/robolimb/shellguard/alt/monitor
	company = "Шелгвард Монитор."
	icon = 'icons/mob/human_races/cyberlimbs/shellguard/shellguard_monitor.dmi'
	applies_to_part = list(BP_HEAD)
	unavailable_at_fab = 1
	allowed_bodytypes = list(SPECIES_IPC)

/datum/robolimb/vox
	company = "Аркмэйд"
	icon = 'icons/mob/human_races/cyberlimbs/vox/primalis.dmi'
	unavailable_at_fab = 1
	allowed_bodytypes = list(SPECIES_VOX)
	species_cannot_use = list(SPECIES_VOX_ARMALIS)

/datum/robolimb/vox/crap
	company = "Импровизированный"
	icon = 'icons/mob/human_races/cyberlimbs/vox/improvised.dmi'
