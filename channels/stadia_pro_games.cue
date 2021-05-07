package channels

stadiaProGames: {
	ary_and_the_secret_of_seasons: {
		stadiaProActive: true
		stadiaProBeginDate: "2021-01-01"
	}
    avicii_invector: {
		stadiaProActive: true
		stadiaProBeginDate: "2021-03-01"
	}
	celeste: {
		stadiaProActive: false
		stadiaProBeginDate: "2020-10-01"
		stadiaProEndDate: "2020-12-31"
	}
	crayta: {
		stadiaProActive: true
		stadiaProBeginDate: "2020-07-01"
	}
	cthulhu_saves_christmas: {
		stadiaProActive: true
		stadiaProBeginDate: "2020-12-22"
	}
	dead_by_daylight: {
		stadiaProActive: false
		stadiaProBeginDate: "2020-10-01"
		stadiaProEndDate: "2020-12-31"
	}
	destiny_2: {
		stadiaProActive: false
		stadiaProBeginDate: "2019-11-19"
		stadiaProEndDate:   "2020-11-30"
	}
}

for gameName, gameInfo in stadiaProGames {
	game: "\(gameName)": {
		stadiaPro:          gameInfo.stadiaProActive
		stadiaProBeginDate: gameInfo.stadiaProBeginDate
		if gameInfo.stadiaProEndDate != _|_ {
			stadiaProEndDate:  gameInfo.stadiaProEndDate
		}
	}
}
