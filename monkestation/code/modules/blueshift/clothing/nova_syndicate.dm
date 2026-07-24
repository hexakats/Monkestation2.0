

/obj/item/clothing/under/syndicate

/obj/item/clothing/under/syndicate/nova
	icon = 'monkestation/code/modules/blueshift/icons/obj/clothing/under/syndicate.dmi'
	worn_icon = 'monkestation/code/modules/blueshift/icons/mob/clothing/under/syndicate.dmi'
	//These are pre-set for ease and reference, as syndie under items SHOULDNT have sensors and should have similar stats; also its better to start with adjust = false
	has_sensor = NO_SENSORS
	can_adjust = FALSE

//Related files:
// modular_nova\modules\Syndie_edits\code\syndie_edits.dm (this has the Overalls and non-Uniforms)
// modular_nova\modules\novaya_ert\code\uniform.dm (NRI uniform(s))

/*
*	TACTICOOL
*/

//This is an overwrite, not a fully new item, but still fits best here.






/*
*	ENCLAVE
*/
/obj/item/clothing/under/syndicate/nova/enclave
	name = "neo-American sergeant uniform"
	desc = "Throughout the stars, rumors of mad scientists and angry drill sergeants run rampant; of creatures in armor black as night, being led by men or women wearing this uniform. They share one thing: a deep, natonalistic zeal of the dream of America."
	icon_state = "enclave"
	can_adjust = TRUE
	armor_type = /datum/armor/clothing_under

/obj/item/clothing/under/syndicate/nova/enclave/officer
	name = "neo-American officer uniform"
	icon_state = "enclaveo"

/obj/item/clothing/under/syndicate/nova/enclave/real
	armor_type = /datum/armor/clothing_under/syndicate

/obj/item/clothing/under/syndicate/nova/enclave/real/officer
	name = "neo-American officer uniform"
	icon_state = "enclaveo"

#undef RESKIN_CHARCOAL
#undef RESKIN_NT
#undef RESKIN_SYNDIE

//DS-2/Syndicate clothing.

/obj/item/clothing/suit/armor/vest/capcarapace/syndicate
	icon = 'monkestation/code/modules/blueshift/icons/obj.dmi'
	worn_icon = 'monkestation/code/modules/blueshift/icons/worn.dmi'
	icon_state = "syndievest"
	supports_variations_flags = CLOTHING_DIGITIGRADE_VARIATION_NO_NEW_ICON


/obj/item/clothing/suit/armor/vest/capcarapace/syndicate/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/toggle_icon)

/obj/item/clothing/suit/armor/vest/capcarapace/syndicate/winter
	name = "syndicate captain's winter vest"
	desc = "A sinister yet comfortable looking vest of advanced armor worn over a black and red fireproof jacket. The fur is said to be from wolves on the icemoon."
	icon = 'monkestation/code/modules/blueshift/icons/obj.dmi'
	worn_icon = 'monkestation/code/modules/blueshift/icons/worn.dmi'
	icon_state = "syndievest_winter"
	body_parts_covered = CHEST|GROIN

	min_cold_protection_temperature = FIRE_SUIT_MIN_TEMP_PROTECT
	resistance_flags = FIRE_PROOF

/obj/item/clothing/suit/armor/vest/capcarapace/syndicate/winter/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/toggle_icon)

/obj/item/clothing/head/hats/warden/syndicate
	name = "master at arms' police hat"
	desc = "A fashionable police cap emblazoned with a golden badge, issued to the Master at Arms. Protects the head from impacts."
	icon = 'monkestation/code/modules/blueshift/icons/obj/clothing/hats.dmi'
	worn_icon = 'monkestation/code/modules/blueshift/icons/mob/clothing/head.dmi'
	icon_state = "policehelm_syndie"
	dog_fashion = null

/obj/item/clothing/head/helmet/swat/ds
	name = "SWAT helmet"
	desc = "A robust and spaceworthy helmet with a small cross on it along with 'IP' written across the earpad."
	icon = 'monkestation/code/modules/blueshift/icons/obj/clothing/head/helmet.dmi'
	worn_icon = 'monkestation/code/modules/blueshift/icons/mob/clothing/head/helmet.dmi'
	icon_state = "swat_ds"

/obj/item/clothing/head/beret/sec/syndicate
	name = "brig officer's beret"
	desc = "A stylish and protective beret, produced and manufactured by Interdyne Pharmaceuticals with help from the Gorlex Marauders."
	greyscale_config = /datum/greyscale_config/beret_badge
	greyscale_config_worn = /datum/greyscale_config/beret_badge/worn
	icon_state = "beret_badge"
	greyscale_colors = "#3F3C40#DB2929"

/obj/item/clothing/mask/gas/syndicate/ds
	name = "balaclava"
	desc = "A fancy balaclava, while it doesn't muffle your voice, it's fireproof and has a miniature rebreather for internals. Comfy to boot!"
	icon = 'monkestation/code/modules/blueshift/icons/obj/clothing/masks.dmi'
	worn_icon = 'monkestation/code/modules/blueshift/icons/mob/clothing/mask.dmi'
	icon_state = "balaclava_ds"
	flags_inv = HIDEFACE | HIDEEARS | HIDEFACIALHAIR
	//alternate_worn_layer = LOW_FACEMASK_LAYER //This lets it layer below glasses and headsets; yes, that's below hair, but it already has HIDEHAIR


/obj/item/clothing/suit/armor/bulletproof/old
	desc = "A Type III heavy bulletproof vest that excels in protecting the wearer against traditional projectile weaponry and explosives to a minor extent."
	icon = 'icons/obj/clothing/suits/armor.dmi'
	worn_icon = 'icons/mob/clothing/suits/armor.dmi'
	icon_state = "bulletproof"
	body_parts_covered = CHEST //TG's version has no groin/arm padding

/obj/item/clothing/under/syndicate/nova/overalls
	name = "utility overalls turtleneck"
	desc = "A pair of spiffy overalls with a turtleneck underneath, useful for both engineering and botanical work."
	icon_state = "syndicate_overalls"
	can_adjust = TRUE

/obj/item/clothing/under/syndicate/nova/overalls/skirt
	name = "utility overalls skirtleneck"
	desc = "A pair of spiffy overalls with a turtleneck underneath, this one is a skirt instead, breezy."
	icon_state = "syndicate_overallskirt"
	female_sprite_flags = FEMALE_UNIFORM_TOP_ONLY
	dying_key = DYE_REGISTRY_JUMPSKIRT
	supports_variations_flags = CLOTHING_DIGITIGRADE_VARIATION_NO_NEW_ICON

/obj/item/clothing/head/soft/sec/syndicate
	name = "engine tech utility cover"
	desc = "A utility cover for an engine technician, there's a tag that reads 'IP-DS-2'."
	icon = 'monkestation/code/modules/blueshift/icons/obj/clothing/hats.dmi'
	worn_icon = 'monkestation/code/modules/blueshift/icons/mob/clothing/head.dmi'
	icon_state = "dssoft"
	soft_type = "ds"

//Wintercoat & Hood
/obj/item/clothing/suit/hooded/wintercoat/nova/syndicate
	name = "syndicate winter coat"
	desc = "A sinister black coat with red accents and a fancy mantle, it feels like it can take a hit. The zipper tab looks like a triple headed snake in the shape of an S, spooky."
	icon_state = "coatsyndie"
	inhand_icon_state = "coatwinter"
	armor_type = /datum/armor/wintercoat_syndicate
	hoodtype = /obj/item/clothing/head/hooded/winterhood/nova/syndicate

/datum/armor/wintercoat_syndicate
	melee = 25
	bullet = 15
	laser = 30
	energy = 40
	bomb = 25
	acid = 45

/obj/item/clothing/suit/hooded/wintercoat/nova/syndicate/Initialize(mapload)
	. = ..()
	allowed += GLOB.security_wintercoat_allowed

/obj/item/clothing/head/hooded/winterhood/nova/syndicate
	desc = "A sinister black hood with armor padding."
	icon_state = "hood_syndie"
	armor_type = /datum/armor/winterhood_syndicate

/datum/armor/winterhood_syndicate
	melee = 25
	bullet = 15
	laser = 30
	energy = 40
	bomb = 25
	acid = 45

//Interdyne Clothing
/obj/item/clothing/under/syndicate/nova/interdyne
	name = "interdyne turtleneck"
	desc = "A sleek white turtleneck with a hint of interdyne-green, appropriately paired with some charcoal-black cargo pants."
	has_sensor = HAS_SENSORS
	armor_type = /datum/armor/clothing_under/syndicate
	icon_state = "ip_turtleneck"
	can_adjust = TRUE
	alt_covers_chest = TRUE

/obj/item/clothing/under/syndicate/nova/interdyne/miner
	name = "interdyne jumpsuit"
	desc = "A black and green Interdyne Pharmaceutics jumpsuit with reinforced fibers."
	//armor_type = /datum/armor/clothing_under/cargo_miner
	icon_state = "ip_miner"
	can_adjust = TRUE
	alt_covers_chest = FALSE

/obj/item/clothing/under/syndicate/nova/interdyne/deckofficer
	name = "deck officer's jumpsuit"
	desc = "A black and green Interdyne Pharmaceutics uniform complete with a golden belt buckle."
	armor_type = /datum/armor/clothing_under/syndicate
	icon_state = "ip_deckofficer"
	can_adjust = TRUE
	alt_covers_chest = FALSE

/obj/item/clothing/head/beret/medical/nova/interdyne
	name = "interdyne beret"
	desc = "A white and green beret denoting one's allegiance to Interdyne Pharmaceutics."
	icon_state = "beret_badge"
	greyscale_config = /datum/greyscale_config/beret_badge
	greyscale_config_worn = /datum/greyscale_config/beret_badge/worn
	greyscale_colors = "#FFFFFF#198019"

/obj/item/clothing/head/bio_hood/interdyne
	name = "interdyne biosuit helmet"
	desc = "An Interdyne Pharmaceutics biosuit helmet designed to keep the wearer safe from biohazardous materials."
	icon_state = "ip_biosuit_head"
	icon = 'monkestation/code/modules/blueshift/icons/obj/clothing/hats.dmi'
	worn_icon = 'monkestation/code/modules/blueshift/icons/mob/clothing/head.dmi'

/obj/item/clothing/suit/bio_suit/interdyne
	name = "interdyne biosuit"
	desc = "An Interdyne Pharmaceutics biosuit designed to keep the wearer safe from biohazardous materials. It's lighter than a typical biosuit."
	icon_state = "ip_biosuit"
	icon = 'monkestation/code/modules/blueshift/icons/obj/clothing/suits.dmi'
	worn_icon = 'monkestation/code/modules/blueshift/icons/mob/clothing/suit.dmi'
	slowdown = 0.3
	supports_variations_flags = CLOTHING_DIGITIGRADE_VARIATION_NO_NEW_ICON

/obj/item/clothing/suit/armor/hos/deckofficer
	name = "deck officer's cloak"
	desc = "An armored trench-cloak with green accents worn by high-ranking interdyne staff."
	icon_state = "ip_officercloak"
	icon = 'monkestation/code/modules/blueshift/icons/obj/clothing/suits/armor.dmi'
	worn_icon = 'monkestation/code/modules/blueshift/icons/mob/clothing/suits/armor.dmi'
	current_skin = "ip_officercloak" //prevents reskinning

/obj/item/clothing/suit/hooded/wintercoat/medical/viro/interdyne
	name = "interdyne winter coat"
	desc = "A fuzzy winter coat bearing interdyne colors, complete with armored fibers."
	armor_type = /datum/armor/wintercoat_syndicate
//Interdyne Clothing End

/obj/item/clothing/glasses/hud/health/night/cultblind_unrestricted
	desc = "Where we are going, we won't need eyes to see."
	name = "zealot's blindfold"
	icon_state = "blindfold"
	inhand_icon_state = "blindfold"
	flash_protect = FLASH_PROTECTION_WELDER

/obj/item/clothing/glasses/hud/health/night/cultblind_unrestricted/narsie
	desc = "May Nar'Sie guide you through the darkness and shield you from the light."
