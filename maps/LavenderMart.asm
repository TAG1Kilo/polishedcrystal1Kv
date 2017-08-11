LavenderMart_MapScriptHeader:

.MapTriggers: db 0

.MapCallbacks: db 0

LavenderMart_MapEventHeader:

.Warps: db 2
	warp_def $7, $2, 5, LAVENDER_TOWN
	warp_def $7, $3, 5, LAVENDER_TOWN

.XYTriggers: db 0

.Signposts: db 0

.PersonEvents: db 3
	person_event SPRITE_CLERK, 3, 1, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, ClerkScript_0x7eb1c, -1
	person_event SPRITE_POKEFAN_M, 6, 6, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 2, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_JUMPTEXTFP, 0, UnknownText_0x7eb29, -1
	person_event SPRITE_ROCKER, 2, 9, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, PERSONTYPE_JUMPTEXTFP, 0, UnknownText_0x7ebac, -1

ClerkScript_0x7eb1c:
	opentext
	pokemart MARTTYPE_STANDARD, MART_LAVENDER
	closetext
	end

UnknownText_0x7eb29:
	text "Repel is a neces-"
	line "sity if you are"

	para "going to explore a"
	line "cave."

	para "Even though I like"
	line "exploring, I still"

	para "haven't made it to"
	line "all the caves."
	done

UnknownText_0x7ebac:
	text "I heard about a"
	line "craftsman who"

	para "makes custom Balls"
	line "in the Johto town"

	para "of Azalea. I wish"
	line "I had some."
	done
