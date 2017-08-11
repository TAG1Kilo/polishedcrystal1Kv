CeruleanMart_MapScriptHeader:

.MapTriggers: db 0

.MapCallbacks: db 0

CeruleanMart_MapEventHeader:

.Warps: db 2
	warp_def $7, $2, 6, CERULEAN_CITY
	warp_def $7, $3, 6, CERULEAN_CITY

.XYTriggers: db 0

.Signposts: db 0

.PersonEvents: db 3
	person_event SPRITE_CLERK, 3, 1, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, ClerkScript_0x188ac0, -1
	person_event SPRITE_COOLTRAINER_M, 6, 1, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_JUMPTEXTFP, 0, UnknownText_0x188acd, -1
	person_event SPRITE_COOLTRAINER_F, 2, 7, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 2, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_JUMPTEXTFP, 0, UnknownText_0x188b46, -1

ClerkScript_0x188ac0:
	opentext
	pokemart MARTTYPE_STANDARD, MART_CERULEAN
	closetext
	end

UnknownText_0x188acd:
	text "You'll run into"
	line "many trainers on"

	para "the way to Ceru-"
	line "lean Cape."

	para "They want to see"
	line "how they stack"

	para "up against other"
	line "trainers."
	done

UnknownText_0x188b46:
	text "Misty is about the"
	line "only person in"

	para "town who can beat"
	line "the trainers at"
	cont "Cerulean Cape."
	done
