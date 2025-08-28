# Factorial in C and Assembly (Mixed Language Programming)

This project demonstrates **mixed-language programming** by combining **C** and **x86-64 Assembly** to compute the factorial of a number. The C program handles user input/output, while the Assembly function performs the core calculation.

---

## ⚡ How It Works

* The C program manages **input/output** and calls an **external Assembly function**.
* The Assembly function contains the **core computation logic**, showcasing how lower-level instructions can be integrated into high-level code.
* Function calls follow the **x86-64 calling convention**:

  * C passes the argument (`n`) in a register.
  * Assembly executes the calculation and stores the result.
  * The result is returned back to C for display.
* This demonstrates the **interoperability between C and Assembly**, where each language handles the part it’s best suited for.

---

## 🛠️ Compilation & Execution

Make sure you have **GCC** installed via MinGW-w64 and available in your PATH.

```powershell
gcc factorial.c fact.s -o factorial.exe
.\factorial.exe
```

---

## 🖥️ Example Run

```
Enter a number: 5
Factorial of 5 is 120
```
