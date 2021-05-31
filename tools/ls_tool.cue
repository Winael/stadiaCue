package tools

import (
	//  "strings"
	//"stadiacue.io/stadiaCue/games"
	"tool/cli"
	"text/tabwriter"
	//"list"
)

//sortedGameInfos: list.Sort(
//  #GameInfos,
//  {x: #GameInfo, y: #GameInfo, less: x.line<y.line}
//)

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
