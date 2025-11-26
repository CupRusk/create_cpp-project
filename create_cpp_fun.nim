import os, strutils, terminal
import create_hpp, mini_lib

proc create_cpp*(inputName: string, mode: int) =
    var fileName = inputName

    if not fileName.endsWith(".cpp"):
        logWarn("Брат, ты не вставил. Но ладно - я сам:3")
        fileName &= ".cpp"

    for c in fileName:
        if c in {'<','>',':','"','/','\\','|','?','*'}:
            logError("Имя содержит запрещённые символы, попробуй написать без спецификаций:3")
            return

    let fullPath = getCurrentDir() / fileName

    case mode
    of 0:
        if not fileExists(fullPath):
            writeFile(fullPath, "#include <iostream>\n\nint main() {\n\n    return 0;\n}\n")
            styledEcho(fgGreen, "[INFO] CPP создан: " & fileName)

    of 1:
        let hppName = inputName & ".hpp"
        create_hpp(hppName)
        create_cpp(inputName, 0)
    of 2:
        if not fileExists(fullPath):
            writeFile(fullPath, "#include <iostream>\n\nvoid print(){\n  std::cout << \"Hello\";\n}\n\nint main(){\n  return 0;\n}\n")
            styledEcho(fgGreen, "[INFO] CPP создан: " & fileName)

    else:
        logError("404: UNKNOWN MODE")
