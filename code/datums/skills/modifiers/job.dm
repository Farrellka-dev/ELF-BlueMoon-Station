/// Jobbie skill modifiers.

/datum/skill_modifier/job
	name = "Job Training"
	modifier_flags = MODIFIER_SKILL_VALUE|MODIFIER_SKILL_VIRTUE|MODIFIER_SKILL_ORIGIN_DIFF
	priority = MODIFIER_SKILL_PRIORITY_MAX

/datum/skill_modifier/job/surgery
	target_skills = /datum/skill/numerical/surgery
	value_mod = STARTING_SKILL_SURGERY_MEDICAL

/datum/skill_modifier/job/affinity
	modifier_flags = MODIFIER_SKILL_AFFINITY|MODIFIER_SKILL_VIRTUE
	affinity_mod = STARTING_SKILL_AFFINITY_DEF_JOB

/datum/skill_modifier/job/affinity/surgery
	target_skills = /datum/skill/numerical/surgery

/datum/skill_modifier/job/affinity/wiring
	target_skills = /datum/skill/level/job/wiring

/// Level skill modifiers below.
/datum/skill_modifier/job/level
	modifier_flags = MODIFIER_SKILL_VALUE|MODIFIER_SKILL_LEVEL|MODIFIER_SKILL_VIRTUE|MODIFIER_SKILL_ORIGIN_DIFF
	level_mod = JOB_SKILL_TRAINED

/datum/skill_modifier/job/level/New(id, register = FALSE)
	if(level_mod)
		value_mod = GET_STANDARD_LVL(level_mod)
	..()

/datum/skill_modifier/job/level/wiring
	target_skills = /datum/skill/level/job/wiring

/datum/skill_modifier/job/level/wiring/basic
	level_mod = JOB_SKILL_BASIC

/datum/skill_modifier/job/level/wiring/trained // BLUEMOON ADD
	level_mod = JOB_SKILL_TRAINED

/datum/skill_modifier/job/level/wiring/expert
	level_mod = JOB_SKILL_EXPERT

/datum/skill_modifier/job/level/wiring/master //BLUEMOON ADD... Why wasn't it there while we have had master machinery for hacking?
	level_mod = JOB_SKILL_MASTER

/datum/skill_modifier/job/level/dwarfy/blacksmithing
	target_skills = /datum/skill/level/dwarfy/blacksmithing
