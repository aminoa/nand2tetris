# Machine Language

- Usually maps nicely onto hardware
- Operations:
    - Arithmetic
    - Logical operations
    - Flow control
- What data types will be provided?

Accessing memory: supply long address, get contents into CPU
    - Solution: Memory Hierarchy: registers -> cache -> main memory -> disk
    - Addrssing: register adds, direct adds from memory, indirect adds from meory, and then immediate
        - Direct adds: Add r1, m[200]
        - Indirect: Add r1, @a -> Mem[a] = Mem[a] + r1

CPU: needs drivers to know protocols
    - Use "memory mapping" to get I/O devices

Flow control: usually in sequence but:
    - Loops
    - Conditional


Hack computer:

- 16-bit machine
- RAM: sequence of 16 bit registers
- Instruction Memory: ROM, sequence of 16 bit registers
- Insruction bus/data bus/address bus -> moves data into the CPU

- Hack program = sequence of instructions written in hack machine language

- Registers: A, D are 16 bit registers, M is 16-bit register addressed by A

- A-instruction: @21
     - sets A to 21, RAM[21] will select the RAM register
- C instruction: dest = comp; jump (dest and jump are optional)
    - comp: operator
    - dest: null, M, D, MD, A, AM, AD, AMD (M refers to RAM[A])
    - jump

## I/O

- Screen memory map
