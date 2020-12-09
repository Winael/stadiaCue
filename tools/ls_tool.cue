package tools

import (
  "strings"
  "stadiacue.io/stadiaCue/games"
  "tool/exec"
  )

command: ls: {
  task: printHeaders: exec.Run & {
    cmd: "echo -e GAME_NAME\t\t\t\t\tGAME_TITLE\t\t\t\t\tGAME_PEGI"
  }

  task: printContent: print: {
    kind: "print"
      Lines = [
        for gameName, gameInfo in games.games {
          "\(gameInfo["title"])\t\t\(gameInfo["pegi"])\t\t\(strings.Join(gameInfo["supportedInput"], ","))"
        }
      ]
    text: strings.Join(Lines, "\n")
    $after: task.printHeaders
  }
}
