package ownerGames

import (
	// channels "stadiacue.io/stadiaCue/channels"
)

ownLibrary: [...]

purchasedGames: [
	"assassins_creed_odyssey",
	"assassins_creed_origins",
	"assassins_creed_unity",
	"cake_bash",
	"crayta",
	"dragon_quest_xi_echoes_of_an_elusive_age",
	"far_cry_new_dawn",
	"far_cry_5",
	"final_fantasy_15",
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
	...
]

stadiaProEnabled: true
ubisoftplusEnabled: true

ownLibrary: ownLibrary & purchasedGames

// if stadiaProEnabled {
//	ownLibrary: ownLibrary & claimedGames
// }

// if ubisoftplusEnabled {
//	ownLibrary: ownLibrary & channels.ubisoftplus
// }