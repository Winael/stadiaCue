package tools

import (
  "strings"
  "stadiacue.io/stadiaCue/games"
  "tool/cli"
  "text/tabwriter"
  )

command: ls: {
  task: printHeaders: cli.Print & {
    text: tabwriter.Write([
      "TITLE  \tPEGI  \tSUPPORTED_INPUTS"
      ])
  }

  task: printContent: cli.Print & {
    text: tabwriter.Write([
      for gameName, gameInfo in games.game {
          "\(gameInfo["title"])  \t\(gameInfo["pegi"])  \t\(strings.Join(gameInfo["supportedInput"], ", "))"
        }
    ])
    $after: task.printHeaders
  }
}
