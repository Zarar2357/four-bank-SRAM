# Learning Roadmap: Four-Bank SRAM with Burst Read/Write Controller

Project: Design and FPGA Implementation of a Four-Bank SRAM Using Verilog HDL

Study the following topics in sequence. This roadmap focuses on theoretical concepts, excluding Verilog coding.

## Step 1: Digital Design Fundamentals

- Bits, bytes, binary numbers, and hexadecimal numbers
- Combinational vs. sequential logic
- Clock, registers, counters, and reset
- Synchronous and asynchronous operations

## Step 2: Memory Design Fundamentals

- What is memory?
- Memory organization: words, addresses, and data
- Memory depth and width
- Memory capacity calculation
- Read and write operations
- Synchronous vs. asynchronous memory access

## Step 3: SRAM Fundamentals

- What is SRAM?
- SRAM vs. DRAM
- Basic 6T SRAM cell structure
- Storage nodes, word lines, and bit lines
- SRAM hold, read, and write operations
- SRAM memory array organization

## Step 4: Basic Memory Architecture

- Memory array
- Address decoder
- Word selection
- Multiplexer and read-data selection
- Write control logic
- FPGA Block RAM (BRAM) and distributed RAM

## Step 5: Memory Banking

- What is memory banking?
- Why memory is divided into banks
- Bank selection using address bits
- Bank decoder
- Word selection within a bank
- Bank boundary and address mapping

## Step 6: Memory Controller

- Purpose of a memory controller
- Read enable and write enable
- Request and completion signals
- Data input and output
- Busy and done signals
- Memory access latency

## Step 7: Burst Read/Write

- What is burst access?
- Single-word access vs. burst access
- Starting address and burst length
- Automatic address incrementing
- Transfer counter
- Burst completion
- Burst crossing bank boundaries

## Step 8: Finite-State Machines (FSMs)

- What is an FSM?
- States, transitions, and conditions
- State register and next-state logic
- Controller states: IDLE, TRANSFER, DONE
- FSM-based burst control

## Step 9: Verification Fundamentals

- Purpose of a testbench
- Functional verification
- Read-after-write testing
- Testing all memory banks
- Burst operation testing
- Address boundary testing
- Reset and invalid-operation testing

## Step 10: FPGA Implementation Concepts

- FPGA architecture basics
- How Vivado synthesizes Verilog memory
- BRAM vs. distributed RAM vs. registers
- XDC constraints and FPGA pin mapping
- Synthesis, implementation, and bitstream generation
- Basys 3 hardware testing

Final sequence: Digital fundamentals → Memory design → SRAM → Memory architecture → Banking → Controller → Burst access → FSM → Verification → FPGA implementation.

This covers the theoretical knowledge needed for your proposed four-bank, 1 KiB SRAM system with burst read/write control on the Basys 3 FPGA.