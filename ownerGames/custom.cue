package ownerGames

import (
//	channels "stadiacue.io/stadiaCue/channels"
)

ownLibrary: [...]

purchasedGames: [
	"assassins_creed_odyssey",
	"assassins_creed_origins",
	"assassins_creed_unity",
	"cake_bash",
	"crayta",
	"cyberpunk_2077",
	"dirt_5",
	"dragon_quest_xi_echoes_of_an_elusive_age",
	"far_cry_new_dawn",
	"far_cry_5",
	"final_fantasy_15",
	"judgment",
	"little_big_workshop",
	"marvels_avengers",
	"nba_2K20",
	"olympic_games_tokyo_2020_the_official_video_game",
	"one_hand_clapping_early_access",
	"rage_2",
	"red_dead_redemption_2",
	...
]

claimedGames: [
	"ary_and_the_secret_of_seasons",
	"avicii_invector",
	"blue_fire",
	"celeste",
	"crayta",
	"cthulhu_saves_christmas",
	"dead_by_daylight",
	"destiny_2",
	"el_hijo_a_wild_west_tale",
	"embr",
	"everspace",
	"f1_2020",
	"farming_simulator_19",
	"figment",
	"floor_kids",
	"get_packed",
	"grid",
	"gunsport",
	"gylt",
	"hello_neighbor",
	"hello_neighbor_hide_and_seek",
	"hitman_2",
	"hitman_the_complete_first_season",
	"hotline_miami",
	"hotline_miami_2_wrong_number",
	"human_fall_flat_stadia_edition",
	"into_the_breach",
	"jotun_valhalla_edition",
	"journey_to_the_savage_planet",
	"just_shapes_and_beats",
	"kine",
	"kona",
	"lara_croft_and_the_guardian_of_light",
	"lara_croft_and_the_temple_of_osiris",
	"little_nightmares",
	"little_nightmares_2",
	"metro_2033_redux",
	"metro_exodus",
	"metro_last_light_redux",
	"monster_boy_and_the_cursed_kingdom",
	"monster_jam_steel_titans",
	"moto_gp_20",
	"orcs_must_die_3",
	"outcasters",
	"pac_man_mega_tunnel_battle",
	"panzer_dragoon_remake",
	"pikuniku",
	"pixeljunk_raiders",
	"playerunknowns_battlegrounds",
	"power_rangers_battle_for_the_grid",
	"reigns",
	...
]

preOrderedGames: [
	"humankind",
	"life_is_strange_true_colors",
]

stadiaProEnabled: true
ubisoftplusEnabled: true

ownLibrary: purchasedGames

if stadiaProEnabled {
	ownLibrary: ownLibrary + claimedGames
}

// if ubisoftplusEnabled {
// 	ownLibrary: ownLibrary + channels.ubisoftplus
// }