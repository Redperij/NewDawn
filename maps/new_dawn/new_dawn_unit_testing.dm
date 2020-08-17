/datum/unit_test/station_wires_shall_be_connected
	exceptions = list(list(80, 107, 1, WEST))

/datum/map/new_dawn
	// Unit test exemptions
	apc_test_exempt_areas = list(
		/area/space = NO_SCRUBBER|NO_VENT|NO_APC,
		/area/exoplanet = NO_SCRUBBER|NO_VENT|NO_APC,
//		/area/aquila/maintenance = NO_SCRUBBER|NO_VENT,
		/area/engineering/atmos/storage = NO_SCRUBBER|NO_VENT,
		/area/engineering/engine_smes = NO_SCRUBBER|NO_VENT,
		/area/engineering/fuelbay = NO_SCRUBBER|NO_VENT,
		/area/engineering/wastehandling = NO_SCRUBBER|NO_VENT,
		/area/holodeck = NO_SCRUBBER|NO_VENT|NO_APC,
		/area/maintenance = NO_SCRUBBER|NO_VENT,
		/area/maintenance/auxsolarport = NO_SCRUBBER|NO_VENT,
		/area/maintenance/auxsolarstarboard = NO_SCRUBBER|NO_VENT,
		/area/maintenance/exterior = NO_SCRUBBER|NO_VENT|NO_APC,
		/area/maintenance/incinerator = NO_SCRUBBER,
		/area/maintenance/disposal = NO_SCRUBBER,
		/area/maintenance/waterstore = 0,
		/area/shield = NO_SCRUBBER|NO_VENT,
		/area/shuttle = NO_SCRUBBER|NO_VENT|NO_APC,
		/area/shuttle/merchant = NO_SCRUBBER|NO_APC,
		/area/shuttle/petrov = 0,
		/area/shuttle/petrov/maint = NO_SCRUBBER|NO_VENT,
		/area/shuttle/escape_pod1/station = NO_SCRUBBER|NO_APC|NO_VENT,
		/area/shuttle/escape_pod2/station = NO_SCRUBBER|NO_APC|NO_VENT,
		/area/shuttle/escape_pod3/station = NO_SCRUBBER|NO_APC|NO_VENT,
		/area/shuttle/escape_shuttle/station = NO_SCRUBBER|NO_APC|NO_VENT,
		/area/solar = NO_SCRUBBER|NO_VENT|NO_APC,
		/area/storage = NO_SCRUBBER|NO_VENT,
		/area/storage/primary = 0,
		/area/storage/tech = 0,
		/area/storage/tools = 0,
		/area/supply = NO_SCRUBBER|NO_VENT|NO_APC,
		/area/thruster = NO_SCRUBBER,
		/area/turbolift = NO_SCRUBBER|NO_VENT|NO_APC,
		/area/turret_protected/ai = NO_SCRUBBER|NO_VENT,
		/area/vacant = NO_SCRUBBER|NO_VENT|NO_APC,
		/area/vacant/prototype/control = 0,
		/area/vacant/prototype/engine = 0,
		/area/vacant/cargo = NO_SCRUBBER|NO_VENT,
		/area/remains/insecure = NO_SCRUBBER|NO_VENT|NO_APC,
		/area/remains/secure/brig = NO_SCRUBBER|NO_VENT|NO_APC,
		/area/remains/secure/nuke = NO_SCRUBBER|NO_VENT|NO_APC,
		/area/remains/secure/center = NO_SCRUBBER|NO_VENT|NO_APC,
		/area/remains/secure/arrival = NO_SCRUBBER|NO_VENT|NO_APC,
		/area/remains/secure/engineering = NO_SCRUBBER|NO_VENT|NO_APC,
		/area/remains/secure/dorms = NO_SCRUBBER|NO_VENT|NO_APC,
		/area/remains/secure/departure = NO_SCRUBBER|NO_VENT|NO_APC,
		/area/remains/secure/rnd = NO_SCRUBBER|NO_VENT|NO_APC,
		/area/remains/secure/med = NO_SCRUBBER|NO_VENT|NO_APC,
		/area/remains/secure/maintenance = NO_SCRUBBER|NO_VENT|NO_APC,
	)

	area_coherency_test_exempt_areas = list(
	//	/area/aquila/airlock,
		/area/centcom/control,
		/area/maintenance/exterior,
		/area/space,
		/area/remains/insecure
	)

	area_usage_test_exempted_areas = list(
		/area/overmap,
		/area/shuttle/escape/centcom,
		/area/shuttle/escape,
		/area/security/prison,
		/area/shuttle/syndicate_elite/station,
		/area/shuttle/escape/centcom,
		/area/rnd/xenobiology/xenoflora_storage,
		/area/turbolift,
		/area/template_noop,
		/area/remains,
		/area/remains/insecure,
		/area/remains/secure

	)

/datum/unit_test/zas_area_test/ai_chamber
	name = "ZAS: AI Chamber"
	area_path = /area/turret_protected/ai

/datum/unit_test/zas_area_test/cargo_bay
	name = "ZAS: Cargo Bay"
	area_path = /area/quartermaster/storage

datum/unit_test/zas_area_test/supply_centcomm
	name = "ZAS: Supply Shuttle (CentComm)"
	area_path = /area/supply/dock

datum/unit_test/zas_area_test/xenobio
	name = "ZAS: Xenobiology"
	area_path = /area/rnd/xenobiology
