package games

import (
	schemas "stadiacue.io/stadiaCue/schemas"
)

//------------------------------
// DOOM ETERNAL STANDARD EDITION
//------------------------------

game: doom_eternal_standard_edition: schemas.#Game & {
	uid:                  "632522c846a041ce801e47b96ba2e265rcp1"
	title:                "DOOM Eternal Standard Edition"
	genre: [
        "Action", 
        "Shooter"
    ]
	description: """
        Hell’s armies have invaded Earth. Become the Slayer in an epic single-player campaign to conquer demons across dimensions and stop the final destruction of humanity. The only thing they fear... is you. Experience the ultimate combination of speed and power in DOOM Eternal - the next leap in push-forward, first-person combat. Armed with a shoulder-mounted flamethrower, retractable wrist-mounted blade, upgraded guns and mods and abilities, you're faster, stronger, and more versatile than ever. And enter BATTLEMODE, the new 2 versus 1 multiplayer experience where a fully-armed DOOM Slayer faces off against two player-controlled demons, fighting it out in a best-of-five round match of intense first-person combat.
    """
	developers:           "ID Software"
	publisher:            "Bethesda Softworks"
	stadiaReleaseDate:    "2020-03-20"
	pegi:                 18
	price:                59.99
	language: [
        "English", 
        "French", 
        "Italian", 
        "German", 
        "Spanish"
    ]
	gameMode: [
        "Single Player", 
        "2-3 players Online Multiplayer", 
        "2-3 players Competitive"
    ]
	accessibilityFeatures: [
        "Brightness contrast gamma adjustment", 
        "button remapping", 
        "colorblind modes", 
        "dialogue subtitles", 
        "difficulty levels", 
        "motion sickness options", 
        "separate volume controls"
    ]
	medias: {
		storeCover:             "https://lh3.googleusercontent.com/REtu_Y46vPK5PEpvdW--0PPlzCeQmS3HabquoHHoTvoq5cZsq56pp9YrtSYC4GA-cFrZz5IdemSfZs_Ew9nNJ6ApR-AqYadET9CLc7ELSVug6nNDsWphLJWQSA=e14-rw-no"
		storeCoverSquare:       "https://lh3.googleusercontent.com/mMX1Vjqt0_6rWGkRw6QIWhg3KpCggsvIfxXtS84IkKHmm0Yim9s_w8Joy0YywiLsw6oEMY1PjOgyhlwGLD7nyc9d0sUT_EU3qzdD735v34aXUI1GawZZ5MtgUsdK=e14-rw-no"
	}
}