MountMoonGiftShop_MapScriptHeader:

.MapTriggers: db 0

.MapCallbacks: db 0

MountMoonGiftShop_MapEventHeader:

.Warps: db 2
	warp_def $7, $3, 2, MOUNT_MOON_SQUARE
	warp_def $7, $4, 2, MOUNT_MOON_SQUARE

.XYTriggers: db 0

.Signposts: db 0

.PersonEvents: db 4
	person_event SPRITE_GRAMPS, 3, 4, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, (1 << MORN), 0, PERSONTYPE_SCRIPT, 0, GrampsScript_0x771a8, -1
	person_event SPRITE_GRAMPS, 2, 1, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, (1 << DAY), 0, PERSONTYPE_SCRIPT, 0, GrampsScript_0x771a8, -1
	person_event SPRITE_LASS, 6, 1, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, (1 << MORN), 0, PERSONTYPE_JUMPTEXTFP, 0, UnknownText_0x771b3, -1
	person_event SPRITE_LASS, 4, 5, SPRITEMOVEDATA_WALK_UP_DOWN, 1, 0, -1, (1 << DAY), 0, PERSONTYPE_JUMPTEXTFP, 0, UnknownText_0x771b3, -1

GrampsScript_0x771a8:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_MT_MOON
	closetext
	end

UnknownText_0x771b3:
	text "When the sun goes"
	line "down, Clefairy"
	cont "come out to play."
	done
