# Design and FPGA Implementation of a Four-Bank SRAM with Burst Read/Write Controller Using Verilog HDL

## Overview

This project aims to design and implement a four-bank SRAM-based memory system using Verilog HDL. The design includes memory banking, address decoding, read/write control, and burst read/write operations.

The project will be simulated and verified using a Verilog testbench and targeted for FPGA implementation on the **Digilent Basys 3 FPGA board** using **AMD Vivado**.

## Objectives

- Design a four-bank SRAM architecture using Verilog HDL.
- Implement address decoding and bank selection logic.
- Develop a memory controller for read and write operations.
- Implement burst read/write functionality for consecutive memory locations.
- Use a finite-state machine (FSM) to control memory operations.
- Verify functionality through simulation and testbench development.
- Explore FPGA implementation and resource utilization on the Basys 3 board.

## Proposed Specifications

| Parameter | Specification |
|---|---|
| Number of banks | 4 |
| Words per bank | 256 |
| Data width | 8 bits |
| Total memory locations | 1,024 words |
| Total capacity | 8,192 bits (1 KiB) |
| Address width | 10 bits |
| HDL | Verilog |
| Simulation and synthesis tool | AMD Vivado |
| Target FPGA board | Digilent Basys 3 |

## Features

- **Banked memory architecture:** Organizes memory into four logical banks.
- **Address decoding:** Selects the appropriate bank and word location.
- **Read/write controller:** Coordinates memory access operations.
- **Burst read/write:** Supports multiple consecutive memory transfers using a single command.
- **Automatic address generation:** Increments the address during burst transfers.
- **FSM-based control:** Manages request acceptance, transfer progress, and completion.
- **Status signals:** Provides signals such as `busy` and `done`.
- **Functional verification:** Uses a testbench to check memory operations and boundary conditions.
- **FPGA implementation:** Targets the Basys 3 board, subject to successful synthesis and hardware testing.

## Proposed Architecture

The design is organized into the following functional blocks:

1. **SRAM Storage:** Stores 8-bit data words in four logical banks.
2. **Bank Decoder:** Selects one of the four banks using the address.
3. **Memory Controller:** Coordinates read and write operations.
4. **Burst Controller:** Generates consecutive addresses and tracks the number of transfers.
5. **FSM:** Controls the sequence of operations.
6. **Verification Testbench:** Checks functional correctness through simulation.

### Address Organization

The 10-bit address is divided into two fields:

| Address bits | Purpose |
|---|---|
| `[9:8]` | Bank selection |
| `[7:0]` | Word selection within the bank |

Each bank contains 256 words, with each word storing 8 bits.

## Burst Read/Write Operation

Burst access allows multiple consecutive memory locations to be accessed through a single command.

For example, a burst write starting at address 20 with a length of four transfers four data words to addresses 20, 21, 22, and 23.

The burst controller manages address incrementing, transfer counting, and completion signaling.

The design will define how bursts behave at memory boundaries and how read data is timed and returned.

## Repository Structure

```text
four-bank-sram-verilog/
├── rtl/
│   ├── sram_bank.v
│   ├── bank_decoder.v
│   ├── sram_controller.v
│   ├── burst_controller.v
│   └── four_bank_sram_top.v
├── testbench/
│   └── four_bank_sram_tb.v
├── constraints/
│   └── basys3.xdc
├── docs/
│   ├── architecture.md
│   └── block_diagram.png
├── README.md
└── .gitignore
```

The repository structure may evolve as the implementation progresses.

## Tools and Requirements

- AMD Vivado Design Suite
- Verilog HDL support
- Digilent Basys 3 FPGA board for hardware demonstration
- A Verilog simulator or Vivado Simulator for functional verification

## Implementation Plan

1. Develop and verify a basic memory bank.
2. Expand the design to four banks.
3. Implement address decoding and bank selection.
4. Add read/write control logic.
5. Implement burst read/write operations.
6. Develop a self-checking testbench.
7. Run behavioral simulation and resolve functional issues.
8. Synthesize the design and inspect FPGA resource utilization.
9. Implement the design on the Basys 3 board and test the supported operations.

## Verification Plan

The testbench will cover:

- Single-word read and write operations.
- Accesses to all four banks.
- Consecutive burst reads and writes.
- First and last memory addresses.
- Bursts crossing bank boundaries, if supported by the final design.
- Correct address incrementing and transfer counting.
- `busy` and `done` signal behavior.
- Reset and invalid-operation handling.

Simulation results and hardware observations will be documented after testing.

## Project Status

**Status:** In development.

The specifications and architecture described above are proposed design targets. Actual functionality, synthesis results, and hardware behavior will be documented as the project is implemented and verified.

## Contributors

Add the names and GitHub usernames of the project team members here.

## License

No license has been selected yet.
# Design and FPGA Implementation of a Four-Bank SRAM with Burst Read/Write Controller Using Verilog HDL

## Overview

This project aims to design and implement a four-bank SRAM-based memory system using Verilog HDL. The design includes memory banking, address decoding, read/write control, and burst read/write operations.

The project will be simulated and verified using a Verilog testbench and targeted for FPGA implementation on the **Digilent Basys 3 FPGA board** using **AMD Vivado**.

## Objectives

- Design a four-bank SRAM architecture using Verilog HDL.
- Implement address decoding and bank selection logic.
- Develop a memory controller for read and write operations.
- Implement burst read/write functionality for consecutive memory locations.
- Use a finite-state machine (FSM) to control memory operations.
- Verify functionality through simulation and testbench development.
- Explore FPGA implementation and resource utilization on the Basys 3 board.

## Proposed Specifications

| Parameter | Specification |
|---|---|
| Number of banks | 4 |
| Words per bank | 256 |
| Data width | 8 bits |
| Total memory locations | 1,024 words |
| Total capacity | 8,192 bits (1 KiB) |
| Address width | 10 bits |
| HDL | Verilog |
| Simulation and synthesis tool | AMD Vivado |
| Target FPGA board | Digilent Basys 3 |

## Features

- **Banked memory architecture:** Organizes memory into four logical banks.
- **Address decoding:** Selects the appropriate bank and word location.
- **Read/write controller:** Coordinates memory access operations.
- **Burst read/write:** Supports multiple consecutive memory transfers using a single command.
- **Automatic address generation:** Increments the address during burst transfers.
- **FSM-based control:** Manages request acceptance, transfer progress, and completion.
- **Status signals:** Provides signals such as `busy` and `done`.
- **Functional verification:** Uses a testbench to check memory operations and boundary conditions.
- **FPGA implementation:** Targets the Basys 3 board, subject to successful synthesis and hardware testing.

## Proposed Architecture

The design is organized into the following functional blocks:

1. **SRAM Storage:** Stores 8-bit data words in four logical banks.
2. **Bank Decoder:** Selects one of the four banks using the address.
3. **Memory Controller:** Coordinates read and write operations.
4. **Burst Controller:** Generates consecutive addresses and tracks the number of transfers.
5. **FSM:** Controls the sequence of operations.
6. **Verification Testbench:** Checks functional correctness through simulation.

### Address Organization

The 10-bit address is divided into two fields:

| Address bits | Purpose |
|---|---|
| `[9:8]` | Bank selection |
| `[7:0]` | Word selection within the bank |

Each bank contains 256 words, with each word storing 8 bits.

## Burst Read/Write Operation

Burst access allows multiple consecutive memory locations to be accessed through a single command.

For example, a burst write starting at address 20 with a length of four transfers four data words to addresses 20, 21, 22, and 23.

The burst controller manages address incrementing, transfer counting, and completion signaling.

The design will define how bursts behave at memory boundaries and how read data is timed and returned.

## Repository Structure

```text
four-bank-sram-verilog/
├── rtl/
│   ├── sram_bank.v
│   ├── bank_decoder.v
│   ├── sram_controller.v
│   ├── burst_controller.v
│   └── four_bank_sram_top.v
├── testbench/
│   └── four_bank_sram_tb.v
├── constraints/
│   └── basys3.xdc
├── docs/
│   ├── architecture.md
│   └── block_diagram.png
├── README.md
└── .gitignore
```

The repository structure may evolve as the implementation progresses.

## Tools and Requirements

- AMD Vivado Design Suite
- Verilog HDL support
- Digilent Basys 3 FPGA board for hardware demonstration
- A Verilog simulator or Vivado Simulator for functional verification

## Implementation Plan

1. Develop and verify a basic memory bank.
2. Expand the design to four banks.
3. Implement address decoding and bank selection.
4. Add read/write control logic.
5. Implement burst read/write operations.
6. Develop a self-checking testbench.
7. Run behavioral simulation and resolve functional issues.
8. Synthesize the design and inspect FPGA resource utilization.
9. Implement the design on the Basys 3 board and test the supported operations.

## Verification Plan

The testbench will cover:

- Single-word read and write operations.
- Accesses to all four banks.
- Consecutive burst reads and writes.
- First and last memory addresses.
- Bursts crossing bank boundaries, if supported by the final design.
- Correct address incrementing and transfer counting.
- `busy` and `done` signal behavior.
- Reset and invalid-operation handling.

Simulation results and hardware observations will be documented after testing.

## Project Status

**Status:** In development.

The specifications and architecture described above are proposed design targets. Actual functionality, synthesis results, and hardware behavior will be documented as the project is implemented and verified.

## Contributors

Add the names and GitHub usernames of the project team members here.

## License

No license has been selected yet.
