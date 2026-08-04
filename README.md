# Single-Cycle MIPS Processor (VHDL)

A single-cycle MIPS processor implemented in VHDL, built in two phases for the CSE112 Computer Organization & Architecture course at Ain Shams University (ICHEP program).

**Phase 1** implements the Register File and ALU. **Phase 2** completes the processor with a Controller, Program Counter, Sign Extender, and Shifter — adding support for R-format, I-format, and J-format MIPS instructions.

**Contributions:**
- **Phase 1** — Register File: Youssef & Ibrahim · ALU: Mohamed & Nour · Datapath: Ahmed & Youssef · Report: all
- **Phase 2** — Datapath: Youssef & Ibrahim · Controller: Mohamed & Nour · MIPS/Main: Ahmed & Youssef · Report: all

## Architecture Overview

A classic single-cycle MIPS datapath supporting R-format (add, sub, and, or, slt, nor), I-format (lw, sw, beq, addi), and J-format (jump) instructions.

```
                ┌─────────────┐
   Instruction──▶  Controller │──▶ control signals (RegDst, ALUSrc, MemtoReg,
                │ (Main + ALU │    RegWrite, MemRead/Write, Branch, Jump, ALUOp)
                │  Decoders)  │
                └─────────────┘
                       │
   PC ──▶ Instruction Memory ──▶ Datapath (RegisterFile + ALU + PC logic
                                  + Sign Extender + Shifter + Adders + MUXes)
                                              │
                                        Data Memory
```

### Components

| Module | File | Description |
|--------|------|--------------|
| Register File | `RegisterFile.vhd`, `decoder.vhd`, `enablingregisters.vhd`, `flopr.vhd` | 32×32-bit register file: 5-to-32 decoder for write select, gated enable per register, 2 read ports via MUXes |
| ALU | `ALU.vhd` | 32-bit ALU supporting AND, OR, ADD, SUB, SLT, NOR via a 4-bit `aluop` select |
| Controller | `Controller.vhd`, `maindecoder.vhd`, `aludecoder.vhd` | Main decoder (opcode → control signals) + ALU decoder (funct field → ALU operation) |
| Datapath | `datapath.vhd`, `adder.vhd`, `sl2.vhd`, `mux2x1.vhd`, `signext.vhd` | Connects Register File, ALU, PC adders, left-shifter, sign extender, and MUXes for branch/jump address calculation |
| MIPS Core | `mips.vhd` | Connects Controller + Datapath |
| Instruction Memory | `imem.vhd` | Loads instructions from `memfile.dat` at simulation start |
| Data Memory | `dmem.vhd` | 32-bit word-addressable data memory (read/write) |
| Top-level | `main.vhd`, `mipsprocessor.vhd` | Connects MIPS core with instruction and data memory |
| Testbench | `test.vhd` | Simulation testbench driving the processor through `memfile.dat` and checking expected results |

Package files (`mainpackage.vhd`, `RegisterFilepackage.vhd`, `datapathpackage.vhd`, `phase2package.vhd`) declare and group components for reuse across modules.

## ALU Operations

| ALUOp | Function |
|-------|----------|
| 0000 | AND |
| 0001 | OR |
| 0010 | ADD |
| 0110 | SUB |
| 0111 | SLT (Set Less Than) |
| 1100 | NOR |

## Prerequisites

- A VHDL simulator — this project was developed and tested in **Xilinx ISE** (ISim simulator). Other simulators such as **ModelSim/QuestaSim** or **GHDL** should also work with minor project-setup differences.

## ⚠️ Before Running

`imem.vhd` currently loads the instruction file using a **hardcoded absolute path**:
```vhdl
FILE_OPEN(mem_file, "D:\phase2\memfile.dat", READ_MODE);
```
Update this path to point to wherever you place `memfile.dat` on your machine (or use a relative path, if your simulator/toolchain supports it) before running simulation.

## Running the Simulation

1. Open the project in your VHDL simulator (e.g. create a new project in Xilinx ISE and add all `.vhd` files).
2. Update the `imem.vhd` file path as noted above.
3. Set `test.vhd` as the simulation top module.
4. Run behavioral simulation — the testbench applies a clock and reset, then checks that the final instruction (a `sw` storing value `7` to address `84`) executes correctly, reporting **"NO ERRORS: Simulation succeeded"** on the console if the processor behaves as expected.

`memfile.dat` contains the hex-encoded instruction sequence (R-format, I-format, and J-format instructions) used to exercise the full instruction set during simulation.

## Documentation

The full project report — covering VHDL background, design rationale, RTL schematics for every block, controller function tables, and simulation waveforms for the Register File, ALU, and full processor — is available separately as the project PDF [`docs/COA Major Task.pdf`](./docs/COA Major Task.pdf).

## References

1. *Computer Organization and Design*, 5th Edition — David A. Patterson and John L. Hennessy.
