# Functional-Paradigms-in-Quantum-Computing

This is the github repository for our (CS-754) Programming Language Project - Functional Paradigms in Quantum Programming 

## Overview
This project provides implementations of Shor's and Grover's algorithms, both in classical (OCaml) and quantum (Python using Qiskit by IBM) paradigms. Additionally, it offers a quantum computing framework implemented in OCaml, serving as an abstraction layer for developers unfamiliar with low-level quantum computing implementations. The framework facilitates the creation and execution of custom quantum circuits, enabling users to explore quantum algorithms without delving into the intricacies of quantum hardware.

## Features
- Classical and quantum implementations of Shor's and Grover's algorithms
- Quantum computing framework for building and executing custom quantum circuits
- Support for simulating quantum algorithms using Qiskit
- Interactive Read-Eval-Print Loop (REPL) for easy interaction with the framework

## Getting Started
1. Clone the repository: `git clone https://github.com/ritik-rkg/Functional-Paradigms-in-Quantum-Computing.git`
2. Navigate to the project directory: `cd Functional-Paradigms-in-Quantum-Computing`
3. Install required dependencies: OCaml, Numpy, Pandas, MatplotLib, Opam, Pylatexenc, Qiskit, qiskit_aer or You can also install the dependencies using `pip install -r requirements.txt`
4. For Quantum Code, upload the notebook on the colab and Run All. (make sure you have all the dependencies).
5. For Classical Code, navigate to the file and run `ocaml Grovers_searching_classical.ml` or `ocaml Shor_classical_implementation.ml`


## Dependencies
- You can also install the dependencies using `pip install -r requirements.txt`

## Contributing
Contributions are welcome! If you'd like to contribute to this project, please follow these steps:
1. Fork the repository
2. Create your feature branch: `git checkout -b feature-name`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin feature-name`
5. Submit a pull request

## Screenshots

![Dependency Graph of Modules](image_url)
![Grover Searching Circuit](image_url)
![Grover Searching Histogram](image_url)
![Shor Classical Result](image_url)
![Shor Final Circuit](image_url)
![Shor State Probalilites Histogram](image_url)

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
