#define RESKIN_CHARCOAL "Charcoal"
#define RESKIN_NT "NT Blue"
#define RESKIN_SYNDIE "Syndicate Red"

/obj/item/clothing/under/syndicate
	name = "tactical turtleneck"
	desc = "A non-descript and slightly suspicious looking turtleneck with digital camouflage cargo pants."
	icon_state = "syndicate"
	inhand_icon_state = "bl_suit"
	has_sensor = NO_SENSORS
	armor_type = /datum/armor/under_syndicate
	alt_covers_chest = TRUE
	icon = 'icons/obj/clothing/under/syndicate.dmi'
	worn_icon = 'icons/mob/clothing/under/syndicate.dmi'

/datum/armor/under_syndicate
	melee = 10
	bio = 10
	fire = 50
	acid = 40

/obj/item/clothing/under/syndicate/skirt
	name = "tactical skirtleneck"
	desc = "A non-descript and slightly suspicious looking skirtleneck."
	icon_state = "syndicate_skirt"
	inhand_icon_state = "bl_suit"
	has_sensor = NO_SENSORS
	armor_type = /datum/armor/syndicate_skirt
	alt_covers_chest = TRUE
	female_sprite_flags = FEMALE_UNIFORM_TOP_ONLY
	dying_key = DYE_REGISTRY_JUMPSKIRT
	supports_variations_flags = CLOTHING_DIGITIGRADE_VARIATION_NO_NEW_ICON

/datum/armor/syndicate_skirt
	melee = 10
	bio = 10
	fire = 50
	acid = 40

/obj/item/clothing/under/syndicate/bloodred
	name = "blood-red sneaksuit"
	desc = "It still counts as stealth if there are no witnesses."
	icon_state = "bloodred_pajamas"
	inhand_icon_state = "bl_suit"
	armor_type = /datum/armor/syndicate_bloodred
	resistance_flags = FIRE_PROOF | ACID_PROOF
	can_adjust = FALSE

/datum/armor/syndicate_bloodred
	melee = 10
	bullet = 10
	laser = 10
	energy = 10
	bio = 10
	fire = 50
	acid = 40

/obj/item/clothing/under/syndicate/bloodred/sleepytime
	name = "blood-red pajamas"
	desc = "Do operatives dream of nuclear sheep?"
	icon_state = "bloodred_pajamas"
	inhand_icon_state = "bl_suit"
	armor_type = /datum/armor/bloodred_sleepytime

/datum/armor/bloodred_sleepytime
	bio = 10
	fire = 50
	acid = 40

/obj/item/clothing/under/syndicate/bloodred/sleepytime/sensors //Halloween-only
	has_sensor = HAS_SENSORS
	armor_type = /datum/armor/clothing_under

/obj/item/clothing/under/syndicate/tacticool //Overwrites the 'fake' one. Zero armor, sensors, and default blue. More Balanced to make station-available.
	name = "tacticool turtleneck"
	desc = "A snug turtleneck, in fabulous Nanotrasen-blue. Just looking at it makes you want to buy a NT-certifed coffee, go into the office, and -work-."
	icon = 'monkestation/code/modules/blueshift/icons/obj/clothing/under/syndicate.dmi' //Since its an overwrite it needs new icon linking. Woe.
	worn_icon = 'monkestation/code/modules/blueshift/icons/mob/clothing/under/syndicate.dmi'
	icon_state = "tactifool_blue"
	inhand_icon_state = "b_suit"
	can_adjust = TRUE
	has_sensor = HAS_SENSORS
	armor_type = /datum/armor/clothing_under
	unique_reskin = list(
		RESKIN_NT = "tactifool_blue",
		RESKIN_CHARCOAL = "tactifool"
	)
	resistance_flags = FLAMMABLE

/obj/item/clothing/under/syndicate/tacticool/reskin_obj(mob/M)
	..()
	if(current_skin && current_skin == RESKIN_CHARCOAL)
		desc = "Just looking at it makes you want to buy an SKS, go into the woods, and -operate-." //Default decription of the normal tacticool
		inhand_icon_state = "bl_suit" //May as well, while we're updating it

/obj/item/clothing/under/syndicate/tacticool/examine(mob/user)
	. = ..()
	. += "It has a label that says cleaning this 'genuine' Waffle Corp. product with cleaning solutions other than Grime Liberator telelocational podcrystals will void the warranty."
	. += "What on earth is a <font color='red'>tele</font>locational pod<font color='red'>crystal</font>?"

/obj/item/clothing/under/syndicate/tacticool/dye_item(dye_color, dye_key_override)
	if(dye_color == DYE_SYNDICATE)
		if(dying_key == DYE_REGISTRY_JUMPSKIRT)
			special_wash(/obj/item/clothing/under/syndicate/skirt)
		else
			special_wash(/obj/item/clothing/under/syndicate)
		qdel(src)
		return
	return ..()

/obj/item/clothing/under/syndicate/tacticool/proc/special_wash(obj/item/clothing/under/syndicate/our_jumpsuit)
	new our_jumpsuit(loc)

/obj/item/clothing/under/syndicate/tacticool/skirt //Overwrites the 'fake' one. Zero armor, sensors, and default blue. More Balanced to make station-available.
	name = "tacticool skirtleneck"
	desc = "A snug skirtleneck, in fabulous Nanotrasen-blue. Just looking at it makes you want to buy a NT-certifed coffee, go into the office, and -work-."
	icon_state = "tactifool_blue_skirt"

	body_parts_covered = CHEST|GROIN|ARMS
	female_sprite_flags = FEMALE_UNIFORM_TOP_ONLY
	dying_key = DYE_REGISTRY_JUMPSKIRT
	supports_variations_flags = CLOTHING_DIGITIGRADE_VARIATION_NO_NEW_ICON

/obj/item/clothing/under/syndicate/nova/baseball
	name = "syndicate baseball tee"
	desc = "Aaand the Syndicate Snakes are up to bat, ready for one of their signature nuclear home-runs! Lets show these corpos a good time." //NT pitches their plasma/bluespace(something)
	icon_state = "syndicate_baseball"

/obj/item/clothing/under/syndicate/unarmoured
	name = "suspicious tactical turtleneck"
	desc = "A non-descript and slightly suspicious looking turtleneck with digital camouflage cargo pants."
	icon_state = "syndicate"
	inhand_icon_state = "bl_suit"
	has_sensor = HAS_SENSORS
	armor_type = /datum/armor/clothing_under

/obj/item/clothing/under/syndicate/unarmoured/skirt
	name = "suspicious tactical skirtleneck"
	desc = "A non-descript and slightly suspicious looking skirtleneck."
	icon_state = "syndicate_skirt"

	female_sprite_flags = FEMALE_UNIFORM_TOP_ONLY
	dying_key = DYE_REGISTRY_JUMPSKIRT
	supports_variations_flags = CLOTHING_DIGITIGRADE_VARIATION_NO_NEW_ICON

/obj/item/clothing/under/syndicate/unarmoured/examine_more(mob/user)
	. = ..()
	. += span_notice("The armor has been removed from the fabric.")

/obj/item/clothing/under/syndicate/nova/tactical/unarmoured
	name = "suspicious tactical turtleneck"
	desc = "A snug syndicate-red turtleneck with charcoal-black cargo pants."
	icon_state = "syndicate_red"
	inhand_icon_state = "r_suit"
	has_sensor = HAS_SENSORS
	armor_type = /datum/armor/clothing_under
	unique_reskin = null

/obj/item/clothing/under/syndicate/nova/tactical/unarmoured/skirt
	name = "suspicious tactical skirtleneck"
	desc = "A pair of spiffy overalls with a turtleneck underneath, this one is a skirt instead, breezy."
	icon_state = "syndicate_red_skirt"

	female_sprite_flags = FEMALE_UNIFORM_TOP_ONLY
	dying_key = DYE_REGISTRY_JUMPSKIRT
	supports_variations_flags = CLOTHING_DIGITIGRADE_VARIATION_NO_NEW_ICON

/obj/item/clothing/under/syndicate/nova/tactical/unarmoured/examine_more(mob/user)
	. = ..()
	. += span_notice("The armor has been removed from the fabric.")

/obj/item/clothing/under/syndicate/nova/overalls/unarmoured
	name = "suspicious utility overalls turtleneck"
	desc = "A pair of spiffy overalls with a turtleneck underneath, useful for both engineering and botanical work."
	icon_state = "syndicate_overalls"
	armor_type = /datum/armor/clothing_under
	has_sensor = HAS_SENSORS
	can_adjust = TRUE

/obj/item/clothing/under/syndicate/nova/overalls/unarmoured/tacticool
	name = "tacticool utility turtleneck"
	desc = "A pair of spiffy overalls with a tacticool turtleneck underneath, now with 100% more tacticool."

/obj/item/clothing/under/syndicate/nova/overalls/unarmoured/skirt
	name = "suspicious utility overalls skirtleneck"
	desc = "A pair of spiffy overalls with a turtleneck underneath, this one is a skirt instead, breezy."
	icon_state = "syndicate_overallskirt"

	female_sprite_flags = FEMALE_UNIFORM_TOP_ONLY
	dying_key = DYE_REGISTRY_JUMPSKIRT
	supports_variations_flags = CLOTHING_DIGITIGRADE_VARIATION_NO_NEW_ICON

/obj/item/clothing/under/syndicate/nova/overalls/unarmoured/skirt/tacticool
	name = "tacticool utility skirtleneck"
	desc = "A pair of spiffy overalls with a tacticool turtleneck underneath, now with 100% more tacticool."

/obj/item/clothing/under/syndicate/nova/overalls/unarmoured/examine_more(mob/user)
	. = ..()
	. += span_notice("The armor has been removed from the fabric.")

/obj/item/clothing/mask/gas/syndicate/ds
	name = "balaclava"
	desc = "A fancy balaclava, while it doesn't muffle your voice, it's fireproof and has a miniature rebreather for internals. Comfy to boot!"
	icon = 'monkestation/code/modules/blueshift/icons/obj/clothing/masks.dmi'
	worn_icon = 'monkestation/code/modules/blueshift/icons/mob/clothing/mask.dmi'
	icon_state = "balaclava_ds"
	flags_inv = HIDEFACE | HIDEEARS | HIDEFACIALHAIR
	//alternate_worn_layer = LOW_FACEMASK_LAYER //This lets it layer below glasses and headsets; yes, that's below hair, but it already has HIDEHAIR

/obj/item/clothing/mask/gas/sechailer/half_mask
	name = "tacticool neck gaiter"
	desc = "A black techwear mask. Its low-profile design contrasts with the edge. Has a small respirator to be used with internals."
	actions_types = list(/datum/action/item_action/adjust)
	//alternate_worn_layer = BODY_FRONT_UNDER_CLOTHES
	icon_state = "half_mask"
	icon = 'monkestation/code/modules/blueshift/icons/obj/clothing/masks.dmi'
	worn_icon = 'monkestation/code/modules/blueshift/icons/mob/clothing/mask.dmi'

/obj/item/clothing/mask/gas/sechailer/syndicate
	name = "neck gaiter"
	desc = "For the agent wanting to keep a low profile whilst concealing their identity. Has a small respirator to be used with internals."
	actions_types = list(/datum/action/item_action/adjust)
	//alternate_worn_layer = BODY_FRONT_UNDER_CLOTHES
	icon_state = "half_mask"
	worn_icon = 'monkestation/code/modules/blueshift/icons/mob/clothing/mask.dmi'
	icon = 'monkestation/code/modules/blueshift/icons/obj/clothing/masks.dmi'

/*
*	TACTICAL (Real)
*/
//The red alts, for BLATANTLY syndicate stuff (Like DS2)
// (Multiple non-syndicate things use the base tactical turtleneck, they cant have it red nor reskinnable. OUR version, however, can be.)
/obj/item/clothing/under/syndicate/nova/tactical
	name = "tactical turtleneck"
	desc = "A snug syndicate-red turtleneck with charcoal-black cargo pants. Good luck arguing allegiance with this on."
	icon_state = "syndicate_red"
	inhand_icon_state = "r_suit"
	can_adjust = TRUE
	alt_covers_chest = TRUE
	armor_type = /datum/armor/clothing_under/syndicate
	unique_reskin = list(
		RESKIN_SYNDIE = "syndicate_red",
		RESKIN_CHARCOAL = "syndicate"
	)

/datum/armor/clothing_under/syndicate/coldres
	melee = 20
	bullet = 10
	energy = 5
	fire = 25
	acid = 25

/datum/armor/clothing_under/syndicate
	melee = 10
	fire = 50
	acid = 40
	wound = 10

/obj/item/clothing/under/syndicate/nova/tactical/reskin_obj(mob/M)
	..()
	if(current_skin && current_skin == RESKIN_CHARCOAL)
		desc = "A non-descript and slightly suspicious looking turtleneck with digital camouflage cargo pants." //(Digital camo? Brown? What?)
		inhand_icon_state = "bl_suit"

/obj/item/clothing/under/syndicate/nova/tactical/skirt
	name = "tactical skirtleneck"
	desc = "A snug syndicate-red skirtleneck with a charcoal-black skirt. Good luck arguing allegiance with this on."
	icon_state = "syndicate_red_skirt"
	inhand_icon_state = "r_suit"
	female_sprite_flags = FEMALE_UNIFORM_TOP_ONLY
	dying_key = DYE_REGISTRY_JUMPSKIRT
	supports_variations_flags = CLOTHING_DIGITIGRADE_VARIATION_NO_NEW_ICON
	unique_reskin = list(
		RESKIN_SYNDIE = "syndicate_red_skirt",
		RESKIN_CHARCOAL = "syndicate_skirt"
	)

/obj/item/clothing/under/syndicate/nova/tactical/skirt/reskin_obj(mob/M)
	..()
	if(current_skin && current_skin == RESKIN_CHARCOAL)
		desc = "A non-descript and slightly suspicious looking skirtleneck."
		inhand_icon_state = "bl_suit"


/obj/item/clothing/under/syndicate/skirt/coldres
	name = "insulated tactical turtleneck skirt"
	desc = "A non-descript and slightly suspicious looking skirtleneck. The interior has been padded with special insulation for both warmth and protection."
	armor_type = /datum/armor/clothing_under/syndicate/coldres

	min_cold_protection_temperature = FIRE_SUIT_MIN_TEMP_PROTECT

/obj/item/clothing/under/syndicate/sniper
	name = "tactical turtleneck suit"
	desc = "A double seamed tactical turtleneck disguised as a civilian grade silk suit. Intended for the most formal operator. The collar is really sharp."
	icon_state = "tactical_suit"
	inhand_icon_state = "bl_suit"
	can_adjust = FALSE

/obj/item/clothing/under/syndicate/camo
	name = "camouflage fatigues"
	desc = "A green military camouflage uniform."
	icon_state = "camogreen"
	inhand_icon_state = "g_suit"
	can_adjust = FALSE

/obj/item/clothing/under/syndicate/soviet
	name = "Ratnik 5 tracksuit"
	desc = "Badly translated labels tell you to clean this in Vodka. Great for squatting in."
	icon_state = "trackpants"
	can_adjust = FALSE
	armor_type = /datum/armor/syndicate_soviet
	resistance_flags = NONE

/datum/armor/syndicate_soviet
	melee = 10
	bio = 10

/obj/item/clothing/under/syndicate/combat
	name = "combat uniform"
	desc = "With a suit lined with this many pockets, you are ready to operate."
	icon_state = "syndicate_combat"
	can_adjust = FALSE

/obj/item/clothing/under/syndicate/rus_army
	name = "advanced military tracksuit"
	desc = "Military grade tracksuits for frontline squatting."
	icon_state = "rus_under"
	can_adjust = FALSE
	armor_type = /datum/armor/syndicate_rus_army
	resistance_flags = NONE

/datum/armor/syndicate_rus_army
	melee = 5
	bio = 10

/obj/item/clothing/under/syndicate/scrubs
	name = "tactical scrubs"
	desc = "A deep burgundy set of scrubs, made tactically for tactical reasons."
	icon = 'icons/obj/clothing/under/medical.dmi'
	worn_icon = 'icons/mob/clothing/under/medical.dmi'
	icon_state = "scrubswine"
	can_adjust = FALSE
	armor_type = /datum/armor/syndicate_scrubs

/datum/armor/syndicate_scrubs
	melee = 10
	bio = 50
	fire = 50
	acid = 40

/obj/item/clothing/under/plasmaman/syndicate
	name = "tacticool envirosuit"
	desc = "A sinister looking envirosuit, for the boniest of operatives."
	icon_state = "syndie_envirosuit"
	has_sensor = NO_SENSORS
	resistance_flags = FIRE_PROOF
	inhand_icon_state = null
