# 🏦 COBOL Simple Bank System

<div align="center">

A lightweight, console-based banking application implemented in standard COBOL. This program allows users to perform basic banking operations such as deposits and withdrawals with real-time balance tracking.

</div>

---

## 📋 Table of Contents
- [Description](#-description)
- [Folder Structure](#-folder-structure)
- [Dependencies](#-dependencies)
- [How to Compile](#-how-to-compile)
- [How to Use](#-how-to-use)
- [Author](#-author)

---

## 📝 Description

The **COBOL Simple Bank System** is a command-line interface (CLI) program designed to simulate a basic bank account. It continuously prompts the user for an operation type, processes the transaction (handling validation for insufficient funds), and displays the updated account balance until the user decides to exit.

### Features:
- **Deposit (`1`)**: Add funds to the account balance.
- **Withdraw (`2`)**: Subtract funds from the account balance with validation to prevent overdrafts.
- **Exit (`0`)**: Safely terminate the application.

---

## 📂 Folder Structure

```text
.
├── Bank.cob
```

---

## 📦 Dependencies

To compile and run this program, you need a COBOL compiler installed on your system. 

- **GnuCOBOL** (Recommended)
  - *Ubuntu/Debian:* `sudo apt-get install gnucobol`
  - *macOS:* `brew install gnucobol`
  - *Windows:* Available via MinGW / GnuCOBOL binaries.

---

## ⚙️ How to Compile

Using **GnuCOBOL**, open your terminal in the project directory and run the following command to compile the source code into an executable:

```bash
cobc -x -o bank Bank.cob
```

* **`-x`**: Generates an executable program.
* **`-o bank`**: Specifies the output filename as `bank`.

---

## 🚀 How to Use

After compiling the program, execute the generated binary:

```bash
./bank
```

### Operation Flow:
1. The console will prompt you to choose an operation:
   ```text
   Operation(0 - end : 1 - deposit : 2 - withdraw)
   ```
2. Enter your choice (`0`, `1`, or `2`):
   - **`1` (Deposit):** Enter the amount you wish to deposit.
   - **`2` (Withdraw):** Enter the amount you wish to withdraw (must be less than or equal to your current balance).
   - **`0` (Exit):** Ends the session and displays `END`.
3. The system will display your current formatted balance (**Saldo**) after every valid operation.

---

## ✒️ Author

**Miguel Zanon**