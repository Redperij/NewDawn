
/var/list/gender_datums = list()

/hook/startup/proc/populate_gender_datum_list()
	for(var/type in subtypesof(/datum/gender))
		var/datum/gender/G = new type
		gender_datums[G.key] = G
		if(!G.formal_term)
			G.formal_term = G.key
	return 1

/datum/gender
	var/key
	var/formal_term

	var/He   = "They"
	var/he   = "they"
	var/His  = "Their"
	var/his  = "their"
	var/him  = "them"
	var/has  = "have"
	var/is   = "are"
	var/does = "do"
	var/self = "themselves"
	//Russian ones ( Без Родительного падежа, в нём нет смысла )
	var/On  = "Они"
	var/Emu = "Им"
	var/Ego = "Их"
	var/Nim = "Ними"
	var/Nem = "Них"
	var/on  = "они"
	var/emu = "им"
	var/ego = "их"
	var/nim = "ними"
	var/nem = "них"

/datum/gender/plural
	key  = PLURAL
	formal_term = "other"

/datum/gender/male
	key  = MALE

	He   = "He"
	he   = "he"
	His  = "His"
	his  = "his"
	him  = "him"
	has  = "has"
	is   = "is"
	does = "does"
	self = "himself"
	//Russian ones
	On  = "Он"
	Emu = "Ему"
	Ego = "Его"
	Nim = "Ним"
	Nem = "Нём"
	on  = "он"
	emu = "ему"
	ego = "его"
	nim = "ним"
	nem = "нём"

/datum/gender/female
	key  = FEMALE

	He   = "She"
	he   = "she"
	His  = "Her"
	his  = "her"
	him  = "her"
	has  = "has"
	is   = "is"
	does = "does"
	self = "herself"
	//Russian ones
	On  = "Она"
	Emu = "Ей"
	Ego = "Её"
	Nim = "Ней"
	Nem = "Ней"
	on  = "она"
	emu = "ей"
	ego = "её"
	nim = "ней"
	nem = "ней"

/datum/gender/neuter
	key = NEUTER
	formal_term = "other"

	He   = "It"
	he   = "it"
	His  = "Its"
	his  = "its"
	him  = "it"
	has  = "has"
	is   = "is"
	does = "does"
	self = "itself"
	//Russian ones
	On  = "Оно"
	Emu = "Ему"
	Ego = "Его"
	Nim = "Ним"
	Nem = "Нём"
	on  = "оно"
	emu = "ему"
	ego = "его"
	nim = "ним"
	nem = "нём"
