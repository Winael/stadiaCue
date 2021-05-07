package schemas

import (
	"strings"
	ownerGames "stadiacue.io/stadiaCue/ownerGames"
)

#OptionalMedias: {
	ownerCover?:          string
	mainForegroundCover?: string
	mainLogoCover?:       string
	mainBackgroundCover?: string
	wallpaperUrl?:        string
}

#StadiaPro: {
	stadiaProBeginDate?:  string
	stadiaProEndDate?:    string
}

#Library: {
	purchased?:           *false | bool
	claimed?:             *false | bool
}

#Price: {
	price?:               float
	actualPrice?:         *price | float
	actualProPrice?:      float
}

#StadiaFeatures: {
	crowdPlay?:     *false | bool
	crowdChoice?:   *false | bool
	stateShare?:    *false | bool
	streamConnect?: *false | bool
}

#Channels: {
	channel?:       string
}

#Game: {
	name:                 string
	uid:                  string
	title:                string
	clickAndPlay:         "https://stadia.google.com/player/" + uid
	#Price
	pegi:                 int
	description:          string
	developers:           string
	publisher:            string
	stadiaReleaseDate:    string
	genre: [...]
	originalReleaseDate?: string
	stadiaPro:            *false | bool
	#StadiaPro
	language: [...]
	country: [
		"United States",
		"Canada",
		"United Kingdom",
		"France",
		"Italy",
		"Germany",
		"Spain",
		"Belgium",
		"Denmark",
		"Finland",
		"Ireland",
		"Netherlands",
		"Norway",
		"Sweden",
	]
	gameMode: [...]
	supportedInput: [
		"Keyboard/mouse",
		"gamepad",
	]
	accessibilityFeatures: [...]
	familySharing:  *true | bool
	#StadiaFeatures
	#Channels
	#Library
	medias: {
		storeCover:           string
		storeCoverSquare:     string
		logoUrl:              *"https://ssl.gstatic.com/ygp/ui/img/stadia_logo_512.png" | string
		#OptionalMedias
	}
	
}

game: [GameName=string]: #Game & {
	name: *GameName | string
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

gameList: [
	for Game in game {
		"\(Game.title)"
	},
]

gameInfos: [
	for Game in game {
		"\(Game.title)  \t\(Game.pegi)  \t\(strings.Join(Game.supportedInput, ", "))"
	},
]
