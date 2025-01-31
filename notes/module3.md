# Summary

Clock - built using osccilator using running current to get it to vibrate

RAM - DFF (Data Flip Flop) is the foundation that the rest of the gates build upon. DFF takes the previous input as the current output.
    - Bit/Register: either has new output based on current input from load signal, or just uses previous output
    - RAM modules: uses address width of K for N registers - can be built using registers/ram modules via mux/demux
    - PC: handles addressing, using mux statements to go through conditions of the PC 

# Sequential Logic (separate from Combinatorial Logic)

- Clock: continous train of alternating signals
    - Oscillator: device which provides periodic electrical signals (such as sine, square, triangle wave)
    - Oscillator uses quartz crystal, when a current is applied to the crystal, vibrates at a frequency based on its thickness.

- Data Flip Flop (DFF): single-bit input, clock input, single-bit output. out(t) = in(t - 1)
    - Combinatorial (current outputs depends on current input) vs. Sequential (current output depends on previous input)
        - Can rearrange such that current state relies on previous state
        - Should be able to flip between two states (remembering 0 or remembering 1)
    - Built from Nand Gates, get them into a loop flipping from 0 to 1, then isolate across timesteps between time units
    
    - "Clocked Data Flip Flop" - out[t] = int[t - 1], previous input shifted 1 time unit to right  
        - cInterfaces with clock though continuous time intervals abtracted

    - Array of DFF (memory) -> output fed into combinatorial logic with new input to get new output  

    - Remembering forever: 1 bit register:
        - in and load inputs, out; hold onto previous output unless load is set, then use new input value

    - 1 Bit Register: can't loop a DFF into itself since you'll have two sources going into DFF (out(t - 1) and in(t - 1)) going into out(t)
        - Instead, use a MUX to select based on load value (determines whether to set the value to the new input or maintain its current value)

    - Multi bit register just uses multiple 1 bit registers

## RAM

- Ability to randomly access any part of memory with speed
- RAM Abstraction: A sequence of n addressable registers with addresses 0 to n - 1
    - Only one selected register at a time, k (width of address input, k = log2n) where n is number of registers
    - To read a register, set the address and the out of the register emits its state by default
    - To write to a register, set the address, set the in bit and the load bit, then the regsiter state will be modified and the out will emit the new value

- 16 bit RAM chips
    - RAM8 - n = 8, k = 3
    - RAM64 - n=64, k=6
    - RAM16K

## Counters

- PC: contains address of instruction to be executed
- Three control settings
    - Reset: fetch first instruction (PC = 0)
    - Next: fetch next instruction (PC++)
    - Goto: fetch instruction n

- if reset bit asseted, the set address to 0
- if load bit set, then set counter to the value
- if inc is set, then set out to prev out + 1
- else, dont' do anything, just emit the curent state
