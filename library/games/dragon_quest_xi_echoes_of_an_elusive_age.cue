packages games

import (
	schemas "stadiacue.io/stadiaCue/schemas"
)

//------------------------------------------
// DRAGON QUEST XI: ECHOES OF AN ELUSIVE AGE
//------------------------------------------

game: dragon_quest_xi_echoes_of_an_elusive_age: schemas.#Game & {
	uid:                  "6cf458a458cd4b2e8161c740c4844621rcp1"
	title:                "DRAGON QUEST XI S: Echoes of an Elusive Age"
	genre: [
        "Role-playing game", 
        "Adventure"
    ]
	description: """
        The Definitive Edition includes all the content from the original release of the acclaimed DRAGON QUEST XI, and adds extra character-specific scenarios, the choice of playing with the original soundtrack or a grand orchestral version of the music, the ability to switch between 2D and 3D graphic modes, a Japanese voice-acting option, and much more!
        Embark upon an epic adventure as The Luminary: the chosen one in a world that vows to hunt him down. The Luminary and his unique band of loyal companions work together to survive an onslaught of ne’er-do-wells and overthrow the dark forces that plot to plunge the world of Erdrea into chaos. Explore the massive world of DRAGON QUEST and awaken your power in this can't-miss adventure!
    """
	developers:           "ORCA"
	publisher?:           "Square Enix"
	stadiaReleaseDate:    "2021-03-16"
	pegi:                 12
	language: [
        "German (Germany)", 
        "English (United States)", 
        "Spanish (Spain)", 
        "French (France)", 
        "Italian (Italy)"
    ]
	gameMode: [
        "Single Player"
    ]
	accessibilityFeatures: [
        "Skip repeated button presses", 
        "subtitle speed controls", 
        "separate volume controls", 
        "brightness contrast gamma adjustment", 
        "dialogue subtitles", 
        "sound captions", 
        "skip challenges", 
        "adjustable dialogue text size"
    ]
	medias: {
		storeCover:           "https://lh3.googleusercontent.com/r0Ip4y4KUa8fbhQvx7z82qv1uAh4wLYQ-UiJCIOYjRgOZnwnj44-FZT9DibVs30MtCjMV8YStZ-qAT5D8-xWNYmVpIFowG--yxRMLQK3pWW65eA0o02tGODaLg=e14-rw-no"
		storeCoverSquare:     "https://lh3.googleusercontent.com/83ccY2wPJ0e2PNAemyWk8-2wIoYFRwLres0B1eT_lRsDsRtKp04nZhBaK15TThU6X-VSM-62Ur3qzLJIJsBox7FnLzwTxLO9hoUTO8W9WGFGYX1b8mD3YFn7Tlc=e14-rw-no"
		ownerCover?:          string
		mainForegroundCover?: string
		mainLogoCover?:       string
		mainBackgroundCover?: string
	}
}