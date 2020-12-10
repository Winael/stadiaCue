package games

#Game: {
  uid: string
  title: string
  storeCover: string
  storeCoverSquare: string
  ownerCover?: string
  mainForegroundCover?: string
  mainLogoCover?: string
  mainBackgroundCover?: string
  genre: [...]
  description?: string
  developers: string
  publisher?: string
  stadiaReleaseDate: string
  originalReleaseDate?: string
  stadiaPro: *false | bool
  stadiaProBeginDate?: string
  stadiaProEndDate?: string
  clickAndPlay: "https://stadia.google.com/player/" + uid
  wallpaperUrl?: string
  logoUrl: *"https://ssl.gstatic.com/ygp/ui/img/stadia_logo_512.png" | string
  purchased?: *false | bool
  claimed?: *false | bool
  pegi: int
  price: float
  actualPrice?: float
  actualProPrice?: float
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
  familySharing: *true | bool
  crowdPlay?: *false | bool
  crowdChoice?: *false | bool
  stateShare?: *false | bool
  streamDirect?: *false | bool
}

for game in purchasedGames {
  games: "\(game)": {
    purchased: true
  }
}

for game in claimedGames {
  games: "\(game)": {
    claimed: true
  }
}
