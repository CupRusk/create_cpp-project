import os, terminal, strutils

proc create_hpp*(name: string) =
    var fileName = name
    if not fileName.endsWith(".hpp"):
        fileName &= ".hpp"

    let path = getCurrentDir() / fileName
    writeFile(path, "#ifndef examp\n#define examp\n\nclass Example() {\n\n};\n\n#endif")
    styledEcho(fgGreen, "[INFO] HPP создан: " & fileName)
