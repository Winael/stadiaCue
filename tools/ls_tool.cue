package tools

import (
  "strings"
  "stadiacue.io/stadiaCue/games"
  "tool/cli"
  "text/tabwriter"
  "list"
  )

command: ls: {
  task: printHeaders: cli.Print & {
    text: tabwriter.Write([
      "TITLE  \tPEGI  \tSUPPORTED_INPUTS"
      ])
  }

  task: printContent: cli.Print & {
    text: tabwriter.Write(list.Sort([
      for gameName, gameInfo in games.games {
          "\(gameInfo["title"])  \t\(gameInfo["pegi"])  \t\(strings.Join(gameInfo["supportedInput"], ", "))"
        }
    ], {x: int, y: int, less: x<y}))
    $after: task.printHeaders
  }
}
