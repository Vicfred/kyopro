# kyopro

[![License](https://img.shields.io/badge/license-BSD%203--Clause-blue)](LICENSE)
[![Stars](https://img.shields.io/github/stars/Vicfred/kyopro)](https://github.com/Vicfred/kyopro/stargazers)
[![Forks](https://img.shields.io/github/forks/Vicfred/kyopro)](https://github.com/Vicfred/kyopro/network)

A comprehensive collection of **competitive programming** solutions across multiple online judges.
Whether you’re preparing for contests or learning new algorithms, you’ll find idiomatic implementations in a variety of languages.

> **kyopro** refers to **競プロ (kyōpuro)**, the Japanese abbreviation of **競技プログラミング**, which literally means “competitive programming.”

## Table of Contents

* [Overview](#overview)
* [Directory Structure](#directory-structure)
* [Languages](#languages)
* [Prerequisites](#prerequisites)
* [Usage](#usage)
* [Contributing](#contributing)
* [License](#license)

## Overview

This repository gathers solved problems from platforms such as AtCoder, Codeforces, LeetCode, and more. Each folder corresponds to a judge or problem source, with solutions organized by contest/date or problem ID.

## Directory Structure

```
├── aoc            # Advent of Code solutions  
├── atcoder        # AtCoder Beginner and Regular Contests  
├── classical      # Classical algorithms & tutorials  
├── codeforces     # Codeforces contest problems  
├── codejam        # Google Code Jam  
├── cses           # CSES Problem Set  
├── hackercup      # Facebook Hacker Cup  
├── kattis         # Kattis problems  
├── kickstart      # Google Kick Start  
├── leetcode       # LeetCode challenges  
├── projecteuler   # Project Euler problems  
├── spoj           # Sphere Online Judge  
├── yukicoder      # yukicoder contests  
├── .gitignore     
└── LICENSE        # BSD-3-Clause license  
```

Each folder contains source files named by problem code or contest date, often with a brief comment describing the problem.

## Languages

This repo showcases solutions in several languages:

* **C++**
* **Haskell**
* **D**
* **Rust**
* **Nim**
* **Python**
* **Other**

## Prerequisites

Ensure you have the following installed to compile and run the examples you’re interested in:

* **C++**: g++ ≥ 11
* **Haskell**: GHC or Stack
* **D**: dmd or ldc
* **Rust**: rustc & cargo
* **Nim**: nim compiler
* **Python**: Python 3.7+

Adjust compiler flags or interpreter versions as needed for specific problems.

## Usage

1. **Clone** the repository:

   ```bash
   git clone https://github.com/Vicfred/kyopro.git
   cd kyopro
   ```

2. **Navigate** to your platform of interest, e.g.:

   ```bash
   cd atcoder/abc123
   ```

3. **Compile/Run** a solution:

   ```bash
   # C++ example
   g++ -std=c++17 solution.cpp -O2 -o solution
   ./solution < input.txt

   # Haskell example
   runhaskell Solution.hs < input.txt
   ```

Feel free to adapt file names, flags, or shebangs to your own workflow.

## Contributing

Contributions are very welcome! If you’d like to add new solutions or improve existing ones, please:

1. **Fork** the repo
2. **Create** a feature branch (`git checkout -b feature/awesome-solution`)
3. **Commit** your changes (`git commit -am "Add solution for X"`)
4. **Push** to your fork (`git push origin feature/awesome-solution`)
5. **Open** a Pull Request describing your changes

Please follow the existing naming conventions and include a brief problem description or link at the top of each file.

## License

This project is licensed under the **BSD-3-Clause License** – see the [LICENSE](LICENSE) file for details.

