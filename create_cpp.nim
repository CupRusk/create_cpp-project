import os
import create_cpp_fun, mini_lib, help

let all = commandLineParams()

if all.len == 0:
  logError("Использование: create_cpp --default main")
  quit()

let command = all[0]
var name = ""

# имя нужно только если команда не --help
if command != "--help":
  if all.len < 2:
    logError("Имя файла не указано")
    quit()
  name = all[1]

case command
of "--function":
  create_cpp(name, 2)
of "--default":
  create_cpp(name, 0)
of "--classes":
  create_cpp(name, 1)
of "--help":
  help()
else:
  logError("404: NOT FOUND COMMAND")
