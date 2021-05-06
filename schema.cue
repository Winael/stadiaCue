package games

import (
	"strings"
)

template_game: {
	name:                 string
	uid:                  string
	title:                string
	genre: [...]
	description?:         string
	developers:           string
	publisher?:           string
	stadiaReleaseDate:    string
	originalReleaseDate?: string
	stadiaPro:            *false | bool
	stadiaProBeginDate?:  string
	stadiaProEndDate?:    string
	clickAndPlay:         "https://stadia.google.com/player/" + uid
	wallpaperUrl?:        string
	logoUrl:              *"https://ssl.gstatic.com/ygp/ui/img/stadia_logo_512.png" | string
	purchased?:           *false | bool
	claimed?:             *false | bool
	pegi:                 int
	price:                float
	actualPrice?:         float
	actualProPrice?:      float
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
	crowdPlay?:     *false | bool
	crowdChoice?:   *false | bool
	stateShare?:    *false | bool
	streamConnect?: *false | bool
	channel?:       string
	medias: {
		storeCover:           string
		storeCoverSquare:     string
		ownerCover?:          string
		mainForegroundCover?: string
		mainLogoCover?:       string
		mainBackgroundCover?: string
	}
}

game: [GameName=string]: template_game & {
	name: *GameName | string
}

for game_name in purchasedGames {
	game: "\(game_name)": {
		purchased: true
	}
}

for game_name in claimedGames {
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
