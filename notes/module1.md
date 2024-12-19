# Summary

- Start with assumption of the nand gate (two inputs, NANDed together).
- Can construct building blocks AND, OR, and NOT via Demorgan's Law
    - You can construct any boolean function with just AND and NOT
- Buses: grouping set of bits
- Multiplexer: a selector, you have two inputs and a sel, the multiplexor will output A or B based on what the selector is set to
- Demultiplexer: with three inputs (in val, A, B) and a sel; based on the sel, the in will be sent to A or B and the other values will be 0d. 
    - Summary: a mux generates a single output whereas a demux generates multiple outputs (of 0 and the in value) 
        - they both have multiple inputs though (demux has an extra 'input' thing).
    - -Way: the number of outputs 

# Boolean Logic

- And, or, not
- Boolean Identities
    - Demorgan's Law: 
        - NOT(x AND y) = NOT(x) OR NOT(y)
        - NOT(X OR y) = NOT(x) AND NOT(y)
- Truth Table to Boolean Expression
    - We have a desired truth table, want to get boolean function via primitive operations for making units

- Theorem: Any boolean function can be made with AND and NOT operations
    - with ORs, everything can be done
    - (x OR y) = NOT(NOT(x) and NOT(y))
    - Therefore, everything can be done with AND and NOT

    - NAND: 0 only if both inputs are 1
    - (x NAND y) = NOT(x AND y)
    - Further: every boolean function can be constructed with NAND gates    
        - NOT(x) = (x NAND x)
        - (x AND y) = NOT(x NAND y)

- Logic gate: chip to do simple function
    - Composite: made of elementary logic gates

## Hardware Description Language (HDL)

- Full/complete description of desired behavior 
- Example: XOR
    - Get general idea ((a and not(b)) or (b and not(a)))
    - Go from gate diagram to HDL 

    - HDL - functional/declarative language (but customary to implement left to right)

## Multi-bit Buses

- Grouping bits as one entity, "bus" 
- 16-bit adder (a, b -> out)
    - a (16 bits), b (16 bits) -> out (16 bits)
    - Multi-way chips (combine multiple bits into one output)

    - Sub-buses: a[0..7]=lsb


# Project 1 Overview

- Elementary logic gates, 16-bit variants, multi-way variants
- Multiplexor: a, b, select
    - if sel = 0, output a, if sel = 1, output b
    - Demultiplexor: inverse of multiplexor, takes single input into multiple outputs

## Working on Project 1

- NOT: a NAND b = NOT(a and b)
    - a NAND a = NOT(a)
- AND: 
- OR: (x OR y) = NOT(NOT(x) and NOT(y))
- XOR: (a and Not b) or (not a and b)

