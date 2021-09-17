package games

import (
	"list"
	// "strings"
	channels "stadiacue.io/stadiaCue/channels"
	ownerGames "stadiacue.io/stadiaCue/ownerGames"
)

#Game: {
	name:                 string
	uid:                  string
	title:                string
	clickAndPlay:         "https://stadia.google.com/player/" + uid
	#Price
	pegi:                 int
	description:          string
	developers:           [...]
	publisher:            string
	stadiaReleaseDate:    string
	genre: [...]
	originalReleaseDate?: string
	stadiaPro:            *false | bool
	#StadiaPro
	languages: [...]
	countries: #Country
	gameMode: [...]
	supportedInputs: *#SupportedInput | [...]
	accessibilityFeatures: [...]
	#Resolution
	#Achievements
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

#Price: {
	price?:               float | "Free"
	actualPrice?:         *price | float
	actualProPrice?:      float
}

#StadiaPro: {
	stadiaProBeginDate?:  string
	stadiaProEndDate?:    string
}

#Country: [
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

#SupportedInput: [
	"Keyboard/mouse",
	"gamepad",
]

#Channels: {
	channel?:       string
}

#StadiaFeatures: {
	crowdPlay?:     *false | bool
	crowdChoice?:   *false | bool
	stateShare?:    *false | bool
	streamConnect?: *false | bool
}

#Resolution: {
	resolution_info: {
		resolution: *"NC" | string
		framerates: *"NC" | int
		dynamic_range: *"NC" | string
	}
}

#Achievements: {
	achievements_info: {
		achievements: *0 | int
		secret_achievements: *0 | int
		buggy_achievements: *0 | int
		timed_achievements: *0 | int
		multiplayer_achievements: *0 | int
		local_coop_achievements: *0 | int
	}
}

#Library: {
	purchased?:           *false | bool
	claimed?:             *false | bool
}

#OptionalMedias: {
	ownerCover?:          string
	mainForegroundCover?: string
	mainLogoCover?:       string
	mainBackgroundCover?: string
	wallpaperUrl?:        string
}

game: [GameName=string]: #Game & {
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

sortedGameList: list.Sort(
	gameList,
	list.Ascending
)

gameInfos: [
	for Game in sortedGameList {
		"\(Game)"
		// "\(Game.title)  \t\(strings.Join(Game.genre, ","))  \t\(Game.pegi)"
	},
]