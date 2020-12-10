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
  destiny_2: {
    stadiaProBeginDate: "2019-11-19"
    stadiaProEndDate: "2020-11-30"
  }
}

for gameName, gameInfo in stadiaProGames {
  games: "\(gameName)": {
    stadiaPro: true
    stadiaProBeginDate: gameInfo.stadiaProBeginDate
    stadiaProEndDate?: gameInfo.stadiaProEndDate
  }
}
