package channels

import (
	games "stadiacue.io/stadiaCue/schemas"
)

//---------
// UBISOFT+
//---------

ubisoftplus: [
	"assassins_creed_odyssey",
	"assassins_creed_origins",
	"assassins_creed_syndicate",
	"assassins_creed_unity",
	"assassins_creed_valhalla",
]

for game_name in ubisoftplus {
	schemas.game: "\(game_name)": {
		channel: "ubisoft+"
	}
}
