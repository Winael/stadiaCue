# README

## Adding a game

```cuelang
package games

//---------------
// 
//---------------

game: : #Game & {
    uid:		""
    title:		""
    price:		
    pegi:		
    description: """

    """
    developers: [
        ""
    ]
    publisher:			""
    stadiaReleaseDate:	""
    genre: [
        ""
    ]
    languages: [
        ""
    ]
    gameModes: [
        ""
    ]
    accessibilityFeatures: [
        ""
    ]
    resolution_info: {
    	resolution: 	""
    	framerates: 	
    	dynamic_range: ""
    }
    achievements_info: {
    	achievements: 		    37  
        secret_achievements:      	
    }
    medias: {
        storeCover:			""
        storeCoverSquare:	""
    }
}
```

## Eval

```bash
cue eval -e sortedGameList ./games/all_games/...
```