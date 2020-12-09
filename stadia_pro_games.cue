package games

stadiaProGames: {
  celeste: {
    stadiaProBeginDate: "2020-10-01"
  }
  crayta: {
    stadiaProBeginDate: "2020-07-01"
  }
  dead_by_daylight: {
    stadiaProBeginDate: "2020-10-01"
  }
}

for game, gameInfo in stadiaProGames {
  games: "\(game)": {
    stadiaPro: true
    stadiaProBeginDate: gameInfo.stadiaProBeginDate
    stadiaProEndDate?: gameInfo.stadiaProEndDate
  }
}
