package tools

import (
	//  "strings"
	"stadiacue.io/stadiaCue/games"
	"stadiacue.io/stadiaCue/ownerGames"
	"tool/cli"
	"text/tabwriter"
	//"list"
)

command: ls: {
	task: printHeaders: cli.Print & {
		text: tabwriter.Write([
			"TITLE  \tGENRE  \tPEGI",
		])
	}

	//task: printContent: cli.Print & {
	//	text: tabwriter.Write(games.gameInfos)
	//	for Line in games.gameInfos {
	//		"\(Line)"
	//	}
	//	$after: task.printHeaders
	//}
}
