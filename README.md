
# create_cpp

A small CLI utility for generating C++ boilerplate files — so you don’t have to manually rewrite the same structures over and over again.

It supports quick creation of:

* default `main.cpp`
* class template pairs (`.cpp` + `.hpp`)
* function-based templates

Perfect for small projects, prototyping, or speeding up daily development.

---

## 📦 Usage

```bash
create_cpp [command] <name>
```

`<name>` — filename **without extension**.
The tool will automatically create `<name>.cpp` (and optionally `<name>.hpp`).

---

## 🧩 Commands

### `--default`

Creates a minimal C++ source file with `main()`.

```bash
create_cpp --default main
```

### `--classes`

Generates a class template with `.cpp` and `.hpp` files.

```bash
create_cpp --classes MyClass
```

### `--function`

Generates a `.cpp` file with a single function template.

```bash
create_cpp --function printSomething
```

### `--help`

Shows available commands and usage details.

```bash
create_cpp --help
```

---

## 📁 Output Examples

### 🟦 Default (`--default`)

```cpp
#include <iostream>

int main() {

    return 0;
}
```

### 🟩 Function (`--function`)

```cpp
#include <iostream>

void print() {
    std::cout << "Hello";
}

int main() {
    return 0;
}
```

### 🟨 Classes (`--classes`)

**.cpp**

```cpp
#include <iostream>

int main() {

    return 0;
}
```

**.hpp**

```hpp
#ifndef EXAMPLE_HPP
#define EXAMPLE_HPP

class Example {

};

#endif
```

---

## ⚙️ Installation

Example installation (Linux):

```bash
[root@DESKTOP-LLGKFBU create_cpp]# ls
README.md  create_cpp  create_cpp.nim  create_cpp_fun.nim  create_hpp.nim  help.nim  mini_lib.nim
[root@DESKTOP-LLGKFBU create_cpp]# mv create_cpp /usr/local/bin
```

---

#📄 License
This project is licensed under the MIT License.
