package tools

import (
	//  "strings"
	//  "stadiacue.io/stadiaCue/games"
	"tool/cli"
	"text/tabwriter"
	//"list"
)

//sortedGameInfos: list.Sort(
//  template_gameInfos,
//  {x: template_gameInfo, y: template_gameInfo, less: x.line<y.line}
//)

command: ls: {
	task: printHeaders: cli.Print & {
		text: tabwriter.Write([
			"TITLE  \tPEGI  \tSUPPORTED_INPUTS",
		])
	}

	// task: printContent: cli.Print & {
	// text: tabwriter.Write(games.gameInfos)
	// for Line in games.gameInfos {
	//  "\(Line)"
	//}
	//$after: task.printHeaders
	// }
}
