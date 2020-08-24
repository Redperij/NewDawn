/*
////////////////////////////
/  =--------------------=  /
/  == Hair Definitions ==  /
/  =--------------------=  /
////////////////////////////
*/

/datum/sprite_accessory/hair
	icon = 'icons/mob/human_races/species/human/hair.dmi'
	var/flags

/datum/sprite_accessory/hair/bald
	name = "Лысый"
	icon_state = "bald"
	gender = MALE
	species_allowed = list(SPECIES_HUMAN,SPECIES_UNATHI,SPECIES_VOX)
	flags = VERY_SHORT | HAIR_BALD

/datum/sprite_accessory/hair/short
	name = "Короткие Волосы"	  // try to capatilize the names please~
	icon_state = "hair_a" // you do not need to define _s or _l sub-states, game automatically does this for you
	flags = VERY_SHORT

/datum/sprite_accessory/hair/twintail
	name = "Двойной Хвостик"
	icon_state = "hair_twintail"
	flags = HAIR_TIEABLE

/datum/sprite_accessory/hair/short2
	name = "Короткие Волосы 2"
	icon_state = "hair_shorthair3"

/datum/sprite_accessory/hair/cut
	name = "Подстриженные Волосы"
	icon_state = "hair_c"
	flags = VERY_SHORT

/datum/sprite_accessory/hair/flair
	name = "Длинные Распущенные волосы"
	icon_state = "hair_flair"
	flags = HAIR_TIEABLE

/datum/sprite_accessory/hair/long
	name = "Волосы До Плеч"
	icon_state = "hair_b"
	flags = HAIR_TIEABLE

/datum/sprite_accessory/hair/longer
	name = "Длинные Волосы"
	icon_state = "hair_vlong"
	flags = HAIR_TIEABLE

/datum/sprite_accessory/hair/longest
	name = "Очень Длинные Волосы"
	icon_state = "hair_longest"
	flags = HAIR_TIEABLE

/datum/sprite_accessory/hair/longfringe
	name = "Длинная Чёлка"
	icon_state = "hair_longfringe"
	flags = HAIR_TIEABLE

/datum/sprite_accessory/hair/longestalt
	name = "Очень Длинная Чёлка"
	icon_state = "hair_vlongfringe"
	flags = HAIR_TIEABLE

/datum/sprite_accessory/hair/halfbang
	name = "Слегка Растрёпанные Волосы"
	icon_state = "hair_halfbang"

/datum/sprite_accessory/hair/halfbangalt
	name = "Слегка Растрёпанные Волосы Альт"
	icon_state = "hair_halfbang_alt"

/datum/sprite_accessory/hair/ponytail1
	name = "Хвостик 1"
	icon_state = "hair_ponytail"
	flags = HAIR_TIEABLE

/datum/sprite_accessory/hair/ponytail2
	name = "Хвостик 2"
	icon_state = "hair_pa"
	gender = FEMALE
	flags = HAIR_TIEABLE

/datum/sprite_accessory/hair/ponytail3
	name = "Хвостик 3"
	icon_state = "hair_ponytail3"
	flags = HAIR_TIEABLE

/datum/sprite_accessory/hair/ponytail4
	name = "Хвостик 4"
	icon_state = "hair_ponytail4"
	gender = FEMALE
	flags = HAIR_TIEABLE

/datum/sprite_accessory/hair/ponytail5
	name = "Хвостик 5"
	icon_state = "hair_ponytail5"
	gender = FEMALE
	flags = HAIR_TIEABLE

/datum/sprite_accessory/hair/ponytail6
	name = "Хвостик 6"
	icon_state = "hair_ponytail6"
	gender = FEMALE
	flags = HAIR_TIEABLE

/datum/sprite_accessory/hair/sideponytail
	name = "Хвостик На Одну Сторону"
	icon_state = "hair_stail"
	gender = FEMALE
	flags = HAIR_TIEABLE

/datum/sprite_accessory/hair/parted
	name = "Разделённые"
	icon_state = "hair_parted"

/datum/sprite_accessory/hair/pompadour
	name = "Помпадур"
	icon_state = "hair_pompadour"
	gender = MALE

/datum/sprite_accessory/hair/sleeze
	name = "Слеезе"
	icon_state = "hair_sleeze"
	flags = VERY_SHORT

/datum/sprite_accessory/hair/quiff
	name = "Чуб"
	icon_state = "hair_quiff"
	gender = MALE

/datum/sprite_accessory/hair/bedhead
	name = "Растрёпанные"
	icon_state = "hair_bedhead"

/datum/sprite_accessory/hair/bedhead2
	name = "Растрёпанные 2"
	icon_state = "hair_bedheadv2"

/datum/sprite_accessory/hair/bedhead3
	name = "Растрёпанные 3"
	icon_state = "hair_bedheadv3"
	flags = HAIR_TIEABLE

/datum/sprite_accessory/hair/beehive
	name = "Улей"
	icon_state = "hair_beehive"
	gender = FEMALE
	flags = HAIR_TIEABLE

/datum/sprite_accessory/hair/beehive2
	name = "Улей 2"
	icon_state = "hair_beehive2"
	gender = FEMALE

/datum/sprite_accessory/hair/bobcurl
	name = "Кучерявые"
	icon_state = "hair_bobcurl"
	gender = FEMALE
	species_allowed = list(SPECIES_HUMAN,SPECIES_UNATHI)
	flags = HAIR_TIEABLE

/datum/sprite_accessory/hair/bob
	name = "Боб"
	icon_state = "hair_bobcut"
	gender = FEMALE
	species_allowed = list(SPECIES_HUMAN,SPECIES_UNATHI)
	flags = HAIR_TIEABLE

/datum/sprite_accessory/hair/bobcutalt
	name = "Боб До Подбородка"
	icon_state = "hair_bobcutalt"
	gender = FEMALE
	species_allowed = list(SPECIES_HUMAN,SPECIES_UNATHI)
	flags = HAIR_TIEABLE

/datum/sprite_accessory/hair/bowl
	name = "Блюдце"
	icon_state = "hair_bowlcut"
	gender = MALE

/datum/sprite_accessory/hair/buzz
	name = "Очень Короткая Стрижка"
	icon_state = "hair_buzzcut"
	gender = MALE
	species_allowed = list(SPECIES_HUMAN,SPECIES_UNATHI)
	flags = VERY_SHORT

/datum/sprite_accessory/hair/crew
	name = "Батя 2"
	icon_state = "hair_crewcut"
	gender = MALE
	flags = VERY_SHORT

/datum/sprite_accessory/hair/combover
	name = "Зачёс"
	icon_state = "hair_combover"
	gender = MALE

/datum/sprite_accessory/hair/father
	name = "Батя"
	icon_state = "hair_father"
	gender = MALE

/datum/sprite_accessory/hair/reversemohawk
	name = "Обратный Могавк"
	icon_state = "hair_reversemohawk"
	gender = MALE

/datum/sprite_accessory/hair/devillock
	name = "Замок Дьявола"
	icon_state = "hair_devilock"

/datum/sprite_accessory/hair/dreadlocks
	name = "Дреды"
	icon_state = "hair_dreads"

/datum/sprite_accessory/hair/curls
	name = "Кудри"
	icon_state = "hair_curls"
	flags = HAIR_TIEABLE

/datum/sprite_accessory/hair/afro
	name = "Афро"
	icon_state = "hair_afro"

/datum/sprite_accessory/hair/afro2
	name = "Афро 2"
	icon_state = "hair_afro2"

/datum/sprite_accessory/hair/afro_large
	name = "Большое Афро"
	icon_state = "hair_bigafro"
	gender = MALE

/datum/sprite_accessory/hair/rows
	name = "Линии"
	icon_state = "hair_rows1"
	flags = VERY_SHORT

/datum/sprite_accessory/hair/rows2
	name = "Линии 2"
	icon_state = "hair_rows2"
	flags = VERY_SHORT | HAIR_TIEABLE

/datum/sprite_accessory/hair/sargeant
	name = "Плоская"
	icon_state = "hair_sargeant"
	gender = MALE
	flags = VERY_SHORT

/datum/sprite_accessory/hair/emo
	name = "Эмо"
	icon_state = "hair_emo"

/datum/sprite_accessory/hair/emo2
	name = "Эмо Альт"
	icon_state = "hair_emo2"

/datum/sprite_accessory/hair/longemo
	name = "Длинный Эмо"
	icon_state = "hair_emolong"
	gender = FEMALE
	flags = HAIR_TIEABLE

/datum/sprite_accessory/hair/shorteye
	name = "Короткая Закрывающая Глаз"
	icon_state = "hair_shortovereye"
	flags = HAIR_TIEABLE

/datum/sprite_accessory/hair/longovereye
	name = "Длинная Закрывающая Глаз"
	icon_state = "hair_longovereye"
	flags = HAIR_TIEABLE

/datum/sprite_accessory/hair/flow
	name = "Распущенные Волосы"
	icon_state = "hair_f"

/datum/sprite_accessory/hair/feather
	name = "Перо"
	icon_state = "hair_feather"
	flags = HAIR_TIEABLE

/datum/sprite_accessory/hair/hitop
	name = "Горшок"
	icon_state = "hair_hitop"
	gender = MALE

/datum/sprite_accessory/hair/mohawk
	name = "Могавк"
	icon_state = "hair_d"
	species_allowed = list(SPECIES_HUMAN,SPECIES_UNATHI)

/datum/sprite_accessory/hair/jensen
	name = "Причёска Адама Дженсена"
	icon_state = "hair_jensen"
	gender = MALE

/datum/sprite_accessory/hair/gelled
	name = "Зачёс Назад"
	icon_state = "hair_gelled"
	gender = FEMALE

/datum/sprite_accessory/hair/gentle
	name = "Нежная"
	icon_state = "hair_gentle"
	gender = FEMALE
	flags = HAIR_TIEABLE

/datum/sprite_accessory/hair/spiky
	name = "Колючая"
	icon_state = "hair_spikey"
	species_allowed = list(SPECIES_HUMAN,SPECIES_UNATHI)

/datum/sprite_accessory/hair/kusangi
	name = "Прчёска Кусанаги"
	icon_state = "hair_kusanagi"

/datum/sprite_accessory/hair/kagami
	name = "Свиные Хвостики"
	icon_state = "hair_kagami"
	gender = FEMALE
	flags = HAIR_TIEABLE

/datum/sprite_accessory/hair/himecut
	name = "Причёска Хайм"
	icon_state = "hair_himecut"
	gender = FEMALE
	flags = HAIR_TIEABLE

/datum/sprite_accessory/hair/shorthime
	name = "Короткая Причёска Хайм"
	icon_state = "hair_shorthime"
	gender = FEMALE
	flags = HAIR_TIEABLE

/datum/sprite_accessory/hair/grandebraid
	name = "Большая Коса"
	icon_state = "hair_grande"
	gender = FEMALE
	flags = HAIR_TIEABLE

/datum/sprite_accessory/hair/mbraid
	name = "Средняя Коса"
	icon_state = "hair_shortbraid"
	gender = FEMALE
	flags = HAIR_TIEABLE

/datum/sprite_accessory/hair/braid2
	name = "Длинная Коса"
	icon_state = "hair_hbraid"
	gender = FEMALE
	flags = HAIR_TIEABLE

/datum/sprite_accessory/hair/odango
	name = "Оданго"
	icon_state = "hair_odango"
	gender = FEMALE
	flags = HAIR_TIEABLE

/datum/sprite_accessory/hair/ombre
	name = "Омбре"
	icon_state = "hair_ombre"
	gender = FEMALE
	flags = HAIR_TIEABLE

/datum/sprite_accessory/hair/updo
	name = "Пучок"
	icon_state = "hair_updo"
	gender = FEMALE
	flags = HAIR_TIEABLE

/datum/sprite_accessory/hair/skinhead
	name = "Скинхэд"
	icon_state = "hair_skinhead"
	flags = VERY_SHORT

/datum/sprite_accessory/hair/balding
	name = "Волосы По Бокам"
	icon_state = "hair_e"
	gender = MALE // turnoff!
	flags = VERY_SHORT

/datum/sprite_accessory/hair/familyman
	name = "Семьянин"
	icon_state = "hair_thefamilyman"
	gender = MALE

/datum/sprite_accessory/hair/mahdrills
	name = "Дрилруру"
	icon_state = "hair_drillruru"
	gender = FEMALE
	flags = HAIR_TIEABLE

/datum/sprite_accessory/hair/fringetail
	name = "Золотая Рыбка"
	icon_state = "hair_fringetail"
	gender = FEMALE
	flags = HAIR_TIEABLE

/datum/sprite_accessory/hair/dandypomp
	name = "Денди Помпадур"
	icon_state = "hair_dandypompadour"
	gender = MALE

/datum/sprite_accessory/hair/poofy
	name = "Пушистые"
	icon_state = "hair_poofy"
	gender = FEMALE
	flags = HAIR_TIEABLE

/datum/sprite_accessory/hair/crono
	name = "Хроно"
	icon_state = "hair_toriyama"
	gender = MALE

/datum/sprite_accessory/hair/vegeta
	name = "Вегета"
	icon_state = "hair_toriyama2"
	gender = MALE

/datum/sprite_accessory/hair/cia
	name = "ЦРУ"
	icon_state = "hair_cia"
	gender = MALE

/datum/sprite_accessory/hair/mulder
	name = "Мадлер"
	icon_state = "hair_mulder"
	gender = MALE

/datum/sprite_accessory/hair/scully
	name = "Скалли"
	icon_state = "hair_scully"
	gender = FEMALE

/datum/sprite_accessory/hair/nitori
	name = "Нитори"
	icon_state = "hair_nitori"
	gender = FEMALE
	flags = HAIR_TIEABLE

/datum/sprite_accessory/hair/joestar
	name = "Джостар"
	icon_state = "hair_joestar"
	gender = MALE

/datum/sprite_accessory/hair/volaju
	name = "Воладжу"
	icon_state = "hair_volaju"
	flags = HAIR_TIEABLE

/datum/sprite_accessory/hair/longeralt2
	name = "Длинные Волосы Альт 2"
	icon_state = "hair_longeralt2"
	flags = HAIR_TIEABLE

/datum/sprite_accessory/hair/shortbangs
	name = "Коротка Чёлка"
	icon_state = "hair_shortbangs"

/datum/sprite_accessory/hair/shavedbun
	name = "Выстриженный Узел"
	icon_state = "hair_shavedbun"
	flags = HAIR_TIEABLE

/datum/sprite_accessory/hair/halfshaved
	name = "Наполовину Встреженные"
	icon_state = "hair_halfshaved"
	flags = HAIR_TIEABLE

/datum/sprite_accessory/hair/halfshavedemo
	name = "Наполовину Встреженный Эмо"
	icon_state = "hair_halfshavedemo"
	flags = HAIR_TIEABLE

/datum/sprite_accessory/hair/longsideemo
	name = "Односторонне-Длинный Эмо"
	icon_state = "hair_longsideemo"
	flags = HAIR_TIEABLE

/datum/sprite_accessory/hair/bun
	name = "Низкий Узел"
	icon_state = "hair_bun"
	flags = HAIR_TIEABLE

/datum/sprite_accessory/hair/bun2
	name = "Высокий Узел"
	icon_state = "hair_bun2"
	flags = HAIR_TIEABLE

/datum/sprite_accessory/hair/doublebun
	name = "Двойной Узел"
	icon_state = "hair_doublebun"
	flags = HAIR_TIEABLE

/datum/sprite_accessory/hair/lowfade
	name = "Низкий Фэйд"
	icon_state = "hair_lowfade"
	gender = MALE
	flags = VERY_SHORT

/datum/sprite_accessory/hair/medfade
	name = "Средний Фэйд"
	icon_state = "hair_medfade"
	flags = VERY_SHORT

/datum/sprite_accessory/hair/highfade
	name = "Высокий Фэйд"
	icon_state = "hair_highfade"
	gender = MALE
	flags = VERY_SHORT

/datum/sprite_accessory/hair/baldfade
	name = "Лысый Фэйд"
	icon_state = "hair_baldfade"
	gender = MALE
	flags = VERY_SHORT

/datum/sprite_accessory/hair/nofade
	name = "Регулярный Вырез"
	icon_state = "hair_nofade"
	gender = MALE
	flags = VERY_SHORT

/datum/sprite_accessory/hair/trimflat
	name = "Подстриженные С Плоским Верхом"
	icon_state = "hair_trimflat"
	gender = MALE
	flags = VERY_SHORT

/datum/sprite_accessory/hair/shaved
	name = "Выбритые"
	icon_state = "hair_shaved"
	gender = MALE
	flags = VERY_SHORT

/datum/sprite_accessory/hair/trimmed
	name = "Подстриженные"
	icon_state = "hair_trimmed"
	gender = MALE
	flags = VERY_SHORT

/datum/sprite_accessory/hair/tightbun
	name = "Тугой Узел"
	icon_state = "hair_tightbun"
	gender = FEMALE
	flags = VERY_SHORT | HAIR_TIEABLE

/datum/sprite_accessory/hair/coffeehouse
	name = "Причёска Кофейного Домика"
	icon_state = "hair_coffeehouse"
	gender = MALE
	flags = VERY_SHORT

/datum/sprite_accessory/hair/undercut
	name = "Подрезанная"
	icon_state = "hair_undercut"
	gender = MALE
	flags = VERY_SHORT

/datum/sprite_accessory/hair/partfade
	name = "Разделённый Фэйд"
	icon_state = "hair_shavedpart"
	gender = MALE
	flags = VERY_SHORT

/datum/sprite_accessory/hair/hightight
	name = "Высокие и Тугие"
	icon_state = "hair_hightight"
	gender = MALE
	flags = VERY_SHORT

/datum/sprite_accessory/hair/rowbun
	name = "Плетёный Узел"
	icon_state = "hair_rowbun"
	gender = FEMALE
	flags = HAIR_TIEABLE

/datum/sprite_accessory/hair/rowdualbraid
	name = "Плетёные Косы"
	icon_state = "hair_rowdualtail"
	gender = FEMALE
	flags = HAIR_TIEABLE

/datum/sprite_accessory/hair/rowbraid
	name = "Плетёная Коса"
	icon_state = "hair_rowbraid"
	gender = FEMALE
	flags = HAIR_TIEABLE

/datum/sprite_accessory/hair/regulationmohawk
	name = "Регулярный Могавк"
	icon_state = "hair_shavedmohawk"
	gender = MALE
	flags = VERY_SHORT

/datum/sprite_accessory/hair/topknot
	name = "Узел На Макушке"
	icon_state = "hair_topknot"
	gender = MALE
	flags = HAIR_TIEABLE

/datum/sprite_accessory/hair/ronin
	name = "Ронин"
	icon_state = "hair_ronin"
	gender = MALE
	flags = HAIR_TIEABLE

/datum/sprite_accessory/hair/bowlcut2
	name = "Блюдце2"
	icon_state = "hair_bowlcut2"
	gender = MALE

/datum/sprite_accessory/hair/thinning
	name = "Редкие"
	icon_state = "hair_thinning"
	gender = MALE
	flags = VERY_SHORT

/datum/sprite_accessory/hair/thinningfront
	name = "Редкие Спереди"
	icon_state = "hair_thinningfront"
	gender = MALE
	flags = VERY_SHORT

/datum/sprite_accessory/hair/thinningback
	name = "Редкие Сзади"
	icon_state = "hair_thinningrear"
	gender = MALE
	flags = VERY_SHORT

/datum/sprite_accessory/hair/manbun
	name = "Мужской Узел"
	icon_state = "hair_manbun"
	gender = MALE
	flags = HAIR_TIEABLE

/datum/sprite_accessory/hair/leftsidecut
	name = "Левый Срез"
	icon_state = "hair_leftside"

/datum/sprite_accessory/hair/rightsidecut
	name = "Правый Срез"
	icon_state = "hair_rightside"

/datum/sprite_accessory/hair/slick
	name = "Гладкие"
	icon_state = "hair_slick"

/datum/sprite_accessory/hair/messyhair
	name = "Неухоженные"
	icon_state = "hair_messyhair"
	flags = HAIR_TIEABLE

/datum/sprite_accessory/hair/averagejoe
	name = "Стандартный Джо"
	icon_state = "hair_averagejoe"

/datum/sprite_accessory/hair/sideswept
	name = "Распущенные На Бок"
	icon_state = "hair_sideswept"

/datum/sprite_accessory/hair/mohawkshaved
	name = "Выстриженный Могавк"
	icon_state = "hair_mohawkshaved"

/datum/sprite_accessory/hair/mohawkshaved2
	name = "Коротко Выстриженный Могавк"
	icon_state = "hair_mohawkshaved2"

/datum/sprite_accessory/hair/mohawkshavednaomi
	name = "Могавк Наоми"
	icon_state = "hair_mohawkshavednaomi"

/datum/sprite_accessory/hair/amazon
	name = "Амазон"
	icon_state = "hair_amazon"
	flags = HAIR_TIEABLE

/datum/sprite_accessory/hair/straightlong
	name = "Длинные Прямые"
	icon_state = "hair_straightlong"
	flags = HAIR_TIEABLE

/datum/sprite_accessory/hair/marysue
	name = "Мэри Сью"
	icon_state = "hair_marysue"
	flags = HAIR_TIEABLE

/datum/sprite_accessory/hair/messyhair2
	name = "Неухоженные 2"
	icon_state = "hair_messyhair2"

/datum/sprite_accessory/hair/buzzcut2
	name = "Очень Короткая Стрижка 2"
	icon_state = "hair_buzzcut2"

/datum/sprite_accessory/hair/sideundercut
	name = "Подстриженные С Одной Стороны"
	icon_state = "hair_sideundercut"
	flags = VERY_SHORT

/datum/sprite_accessory/hair/bighawk
	name = "Большой Могавк"
	icon_state = "hair_bighawk"

/datum/sprite_accessory/hair/donutbun
	name = "Пончиковый Узел"
	icon_state = "hair_donutbun"
	flags = HAIR_TIEABLE

/datum/sprite_accessory/hair/gentle2
	name = "Нежная 2"
	icon_state = "hair_gentle2"
	flags = HAIR_TIEABLE

/datum/sprite_accessory/hair/gentle2long
	name = "Нежная 2 Длинная"
	icon_state = "hair_gentle2long"
	flags = HAIR_TIEABLE

/datum/sprite_accessory/hair/trimrsidecut
	name = "Подстриженные С Правой Стороны"
	icon_state = "hair_rightside_trim"
	flags = HAIR_TIEABLE

/datum/sprite_accessory/hair/belenkotied
	name = "Беленкотид"
	icon_state = "hair_belenkotied"

/datum/sprite_accessory/hair/bobshoulder
	name = "Боб До Плеч"
	icon_state = "hair_bob_shoulder"

/datum/sprite_accessory/hair/bobcurl2
	name = "Кучерявые 2"
	icon_state = "hair_bobcurl2"

/datum/sprite_accessory/hair/bunovereye
	name = "Узел Перед Глазами"
	icon_state = "hair_bun_overeye"

/datum/sprite_accessory/hair/shortbun
	name = "Короткий Узел"
	icon_state = "hair_bun_short"

/datum/sprite_accessory/hair/emofringe
	name = "Чёлка Эмо"
	icon_state = "hair_emofringe"

/datum/sprite_accessory/hair/himecutalt
	name = "Причёска Хайм Альт"
	icon_state = "hair_himecut_alt"

/datum/sprite_accessory/hair/himecutlong
	name = "Причёска Хайм Длинная"
	icon_state = "hair_himecut_long_ponytail"
	flags = HAIR_TIEABLE

/datum/sprite_accessory/hair/himecutponytail
	name = "Причёска Хайм Хвостик"
	icon_state = "hair_himecut_ponytail"
	flags = HAIR_TIEABLE

/datum/sprite_accessory/hair/himecutponyup
	name = "Причёска Хайм Хвостик Вверх"
	icon_state = "hair_himecut_ponytail_up"
	flags = HAIR_TIEABLE

/datum/sprite_accessory/hair/himecutshort
	name = "Причёска Хайм Короткая"
	icon_state = "hair_himecut_short"

/datum/sprite_accessory/hair/modern
	name = "Модерн"
	icon_state = "hair_modern"
	flags = HAIR_TIEABLE

/datum/sprite_accessory/hair/mohawkshaved3
	name = "Низкий и Длинный Могавк"
	icon_state = "hair_mohawk_shavedlong"

/datum/sprite_accessory/hair/regmohawk2
	name = "Регулярный Могавк 2"
	icon_state = "hair_mohawk_shavedback"

/datum/sprite_accessory/hair/mohawkshaved4
	name = "Низкий Могавк"
	icon_state = "hair_mohawk_shavedbacklong"

/datum/sprite_accessory/hair/newyou
	name = "Новый Ты"
	icon_state = "hair_newyou"
	flags = HAIR_TIEABLE

/datum/sprite_accessory/hair/oneshoulder
	name = "Одно Плечо"
	icon_state = "hair_oneshoulder"
	flags = HAIR_TIEABLE

/datum/sprite_accessory/hair/overeye2
	name = "Закрывающая Глаз"
	icon_state = "hair_overeye_veryshort"

/datum/sprite_accessory/hair/overeye3
	name = "Закрывающая Глаз 2"
	icon_state = "hair_overeye_veryshort_alt"

/datum/sprite_accessory/hair/ponytail7
	name = "Хвостик 7"
	icon_state = "hair_ponytail7"
	flags = HAIR_TIEABLE

/datum/sprite_accessory/hair/tressshoulder
	name = "Причёска Барби"
	icon_state = "hair_tressshoulder"
	flags = HAIR_TIEABLE

/datum/sprite_accessory/hair/undercut2
	name = "Подрезанная 2"
	icon_state = "hair_undercut3"
	flags = VERY_SHORT

/datum/sprite_accessory/hair/baldingboddicker
	name = "Лысый Боддикер"
	icon_state = "hair_balding_boddicker"

/datum/sprite_accessory/hair/librarianbun
	name = "Узел Библиотекаря"
	icon_state = "hair_bun_librarian"

/datum/sprite_accessory/hair/bunquad
	name = "Квадраузел"
	icon_state = "hair_bun_quad"
	flags = HAIR_TIEABLE

/datum/sprite_accessory/hair/bununiter
	name = "Соединённые Узлы"
	icon_state = "hair_bun_uniter"
	flags = HAIR_TIEABLE

/datum/sprite_accessory/hair/business
	name = "Бизнес"
	icon_state = "hair_business"

/datum/sprite_accessory/hair/business2
	name = "Бизнес 2"
	icon_state = "hair_business2"

/datum/sprite_accessory/hair/business3
	name = "Бизнес 3"
	icon_state = "hair_business3"

/datum/sprite_accessory/hair/fadeg
	name = "Фэйд"
	icon_state = "hair_fade_grown"

/datum/sprite_accessory/hair/partedshort
	name = "Коротко Разделённые"
	icon_state = "hair_parted_short"

/datum/sprite_accessory/hair/pigtails
	name = "Простые Свиные Хвостики"
	icon_state = "hair_pigtails_simple"
	flags = HAIR_TIEABLE

/datum/sprite_accessory/hair/ponytailside
	name = "Хвостик На Одну Сторону 2"
	icon_state = "hair_ponytail_side7"
	flags = HAIR_TIEABLE

/datum/sprite_accessory/hair/shortspiked
	name = "Короткие Колючие"
	icon_state = "hair_short_spiked"

/datum/sprite_accessory/hair/sweptshort
	name = "Распущенные На Бок Короткие"
	icon_state = "hair_swept_short"

/datum/sprite_accessory/hair/sweptback
	name = "Распущенные Назад"
	icon_state = "hair_swept_back"

/datum/sprite_accessory/hair/wavyshoulder
	name = "Волнистые до Плеч"
	icon_state = "hair_wavyshoulder_down"
	flags = HAIR_TIEABLE

/datum/sprite_accessory/hair/wavyup
	name = "Волнистый Хвостик"
	icon_state = "hair_wavyshoulder_up"
	flags = HAIR_TIEABLE

/datum/sprite_accessory/hair/wheeler
	name = "Уилер"
	icon_state = "hair_wheeler"