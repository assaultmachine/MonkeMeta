/obj/item/organ/internal/heart/gland/access
	abductor_hint = "anagraphic electro-scrambler. After it activates, grants the abductee intrinsic all access."
	cooldown_low = 1 MINUTES
	cooldown_high = 2 MINUTES
	uses = 1
	icon_state = "mindshock"
	mind_control_uses = 3
	mind_control_duration = 90 SECONDS

/obj/item/organ/internal/heart/gland/access/activate()
	to_chat(owner, span_notice("You feel like a VIP for some reason."))
	owner.AddComponent(/datum/component/simple_access, SSid_access.get_region_access_list(list(REGION_ALL_GLOBAL)), src)
