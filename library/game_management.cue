package library

import (
	schemas "stadiacue.io/stadiaCue/schemas"
	channels "stadiacue.io/stadiaCue/channels"
	ownerGames "stadiacue.io/stadiaCue/ownerGames"
)

game: [GameName=string]: schemas.#Game & {
	name: *GameName | string
}

for game_name in channels.ubisoftplus {
	game: "\(game_name)": {
		channel: "ubisoft+"
	}
}

for game_name in ownerGames.purchasedGames {
	game: "\(game_name)": {
		purchased: true
	}
}

for game_name in ownerGames.claimedGames {
	game: "\(game_name)": {
		claimed: true
	}
}

for gameName, gameInfo in channels.stadiaProGames {
	game: "\(gameName)": {
		stadiaPro:          gameInfo.stadiaProActive
		stadiaProBeginDate: gameInfo.stadiaProBeginDate
		if gameInfo.stadiaProEndDate != _|_ {
			stadiaProEndDate:  gameInfo.stadiaProEndDate
		}
	}
}

gameList: [
	for Game in game {
		"\(Game.title)"
	},
]